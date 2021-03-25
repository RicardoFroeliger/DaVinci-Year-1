# B3W2O1 - RubyQuest
## Exercises made by Ricardo Froeliger

Query the database with the correct SQL statements, i.e. get answers to the questions below.

### SELECT *
1. With which query do you retrieve all heroes from the database?
2. With which query do you retrieve all persons from the database?
3. How many people are NPCs?
4. With which query do you retrieve all quests from the database?
5. How many animals are there in RubyQuest?
6. With which query do you retrieve all creatures from the database?
7. With which query do you show all persons sorted by name (ascending)?
8. With which query do you show all cities sorted by name (descending)?
9. How many cities are there?

### SELECT [column], [column]
1. With which query do you retrieve all names of protection from the database?
2. With which query do you retrieve all names and attack power of weapons from the database?
3. With which query do you retrieve all the names and health of all creatures from the database?

### SELECT WHERE
1. With which query do you show only the sheep that can be found in RubyQuest?
2. With which query do you see how many sheep can be found in RubyQuest?
3. How many sea snakes can be found in RubyQuest?
4. Which person has id 7?
5. With which 2 queries can you check whether the person in question 4 is a hero or an NPC?

### DISTINCT
1. Which query shows which different animals exist?
2. Which query shows which professions there are at the NPCs?

### AND, OR and NOT
1. What query can you use to show creatures that match "Killer Bee" or "Orc"?
2. What query can you use to show the animals that have speed ​​6 and defense 5?
3. Which query shows all animals except the sheep?
4. Which query shows you the number of animals that match "Wolf" or "Bear" or "Eagle"?
5. Which query shows the persons that have attack, defense and agility equal to 10?
6. Which query shows the cities that are located in region 1 or 2?
7. Which query shows all heroes with intelligence other than 30 or 90?

### MIN and MAX
1. Which query shows what minimum speed the animals have?
2. Which query shows the speed of the fastest animal?
3. Which query shows what the minimum attack of a weapon is?
4. Which query shows how much the most expensive weapon costs?

### IN
1. Which query shows creatures that match "Killer Bee" or "Orc"?
2. Which query shows the number of animals sorted by alphabet that match "Wolf" or "Bear" or "Eagle"?
3. Which query shows all creatures except the "Killer Bee" and the "Orc"?
4. Which query shows all the names of the cities that fall in the South Groval or Nort Groval region?
5. Which query allows you to sort question 4 alphabetically?
6. Which query shows how many cities are within the South Groval or Nort Groval region?

### BETWEEN and SQL Operators
1. Which query shows the weapons with a price of 100 - 1000?
2. Which query shows the weapons with an attack of 300 - 600?
3. Which query shows the number of animals that have a defense of 7 - 9?
4. Which query shows the people who have more than 1800 gold?
5. Which query shows the people who have more than 1850 gold?
6. Which query shows the people who have 1850 or more gold?
7. Which query shows the weapons that cost less than 300?

### LIKE
1. With which query can you show all persons starting with the letter B?
2. With which query can you show all animals containing the letter a?
3. With which query can you show all animals with a letter a behind the letter e?
4. With which query can you show all weapons that end with the letter d?

### TOP, LIMIT or ROWNUM
1. Which query shows the first 10 people
2. Which query shows you the 5 most expensive weapons?
3. Which query shows the best 3 weapons that have an attack of 700 - 900?

### General Questions
1. What query do you use to get the names of the creatures that are injured?
2. For which quest(s) do you not receive gold?
3. How many cities are there in the Breach region?
4. Which query checks which animals have been caught as pets?
5. How many quests give you more than 3000 experience points?
6. Which query checks which quest gives more money than experience?
7. What is the name of Bowser's weapon?
8. Which query shows which tiger is fastest?
9. Which 2 pets have the same owner?
10. Which query shows the boss of the South Groval region?

### INSERT INTO, UPDATE, DELETE
1. Add a new animal in the animal table with the following data: type = dog, speed and defense = 6 and loyalty and owner are given the value 0. With which query can you add the new animal?
2. With which query can you see that the animal has been added?
3. Change the speed to 7 and the defense to 5 of the dog you added in question 1. Which query can you do this with?
4. With which query can you see that the data in question 3 has changed in the database?
5. Change all the values ​​of the dog you added to 0. What query can you do this with?
6. With which query can you see that the data in question 6 has changed in the database?
7. Remove the dog from the animal table. Which query can you do this with?
8. With which query can you see that the data in question 7 has been deleted in the database?
9. Add 2 dogs in the animal table, with all fields set to 0 for both dogs. Which query can you do this with? Also check if the 2 dogs have been added.
10. Change the speed and defense values ​​for these 2 dogs to 6. Which query can you do this with? Also check whether the data has been added to the 2 dogs.
11. Remove the 2 dogs from the animal table. Which query can you do this with? Also check that both dogs have been removed.