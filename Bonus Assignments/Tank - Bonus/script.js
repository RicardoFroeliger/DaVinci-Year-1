window.onload = () => {
    let tank = document.getElementById('tank');
    let facing = 0, sprite = 1;
    let position = [(window.innerWidth - 84) / 2, (window.innerHeight - 84) / 2];
    
    tank.style.left = `${position[0]}px`;
    tank.style.top = `${position[1]}px`;

    document.addEventListener('keydown', e => {
        if(['w', 'ArrowUp', 's', 'ArrowDown', 'a', 'ArrowLeft', 'd', 'ArrowRight'].includes(e.key)) {

            /* ------------- Key listeners ------------- */
            let axis = facing == 0 || facing == 180 ? 1 : 0;
            if(e.key == 'w' || e.key == 'ArrowUp') facing == 0 || facing == 270 ? position[axis] -= 10.5 : position[axis] += 10.5;
            if(e.key == 's' || e.key == 'ArrowDown') facing == 90 || facing == 180 ? position[axis] -= 10.5 : position[axis] += 10.5;
            if(e.key == 'a' || e.key == 'ArrowLeft') facing > 0 ? facing -= 90 : facing += 270;
            if(e.key == 'd' || e.key == 'ArrowRight') facing < 270 ? facing += 90 : facing -= 270;
            /* ------------- Key listeners ------------- */

            /* Teleports the tank to the opposite side of the screen */
            if(position[0] < 1) position[0] = (window.innerWidth - 84);
            if(position[1] < 1) position[1] = (window.innerHeight - 84);
            if(position[0] > (window.innerWidth - 84)) position[0] = 0;
            if(position[1] > (window.innerHeight - 84)) position[1] = 0;

            /* Cycles the tracks of the tank */
            e.key == 's' || e.key == 'ArrowDown' ||  e.key == 'a' || e.key == 'ArrowLeft' ? 
            (sprite > 0 ? sprite-- : sprite = 7) : (sprite < 7 ? sprite++ : sprite = 0);
            
            tank.style.left = `${position[0]}px`;
            tank.style.top = `${position[1]}px`;
            tank.style.transform = `rotate(${facing}deg)`;
            tank.style.background = `url('tank.png') ${sprite * 84}px 0px`;
        };

        if(e.key == ' ' || e.key == 'Enter') {
            let bullet = document.createElement('div'), direction = facing;
            bullet.style.background = 'url("tank.png") 336px 168px';

            /* Spawns the bullet at the correct position */
            if((facing == 0 || facing == 180)) {
                bullet.style.left = `${position[0]}px`;
                bullet.style.top = `${facing == 0 ? position[1] - 84 : position[1] + 84}px`;
            } else if(facing == 90 || facing == 270) {
                bullet.style.left = `${facing == 90 ? position[0] + 84 : position[0] - 84}px`;
                bullet.style.top = `${position[1]}px`; 
            };
            
            let bulletTravel = setInterval(() => {
                let bulletTop = parseInt(bullet.style.top.replace('px', ''));
                let bulletLeft = parseInt(bullet.style.left.replace('px', ''));

                /* Launches the bullet in the correct direction */
                if(direction == 0 || direction == 180) 
                    bullet.style.top = `${direction == 0 ? bulletTop - 10.5 : bulletTop + 10.5}px`;
                if(direction == 90 || direction == 270) 
                    bullet.style.left = `${direction == 90 ? bulletLeft + 10.5 : bulletLeft - 10.5}px`;

                /* Explodes the bullet when out of window */
                if(bulletTop < 0 || bulletTop >= (window.innerHeight - 105) || bulletLeft < 0 || bulletLeft >= (window.innerWidth - 105)) {
                    clearInterval(bulletTravel);

                    let px = 252;
                    let bulletExplode = setInterval(() => {
                        bullet.style.background = `url('tank.png') ${px}px 168px`;
                        if(px == 252) px = 588; 
                        else if(px == 588 || px == 504) px -= 84;
                        else if(px = 420) {
                            setTimeout(() => bullet.parentNode.removeChild(bullet), 150);
                            clearInterval(bulletExplode);
                        };
                    }, 100);
                };
            }, 20);

            bullet.style.transform = `rotate(${facing}deg)`;
            document.body.appendChild(bullet);
        };
    });
};