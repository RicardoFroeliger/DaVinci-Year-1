-- Verwijder de database
drop database if exists `rubyquest`;
-- Maak de database aan als deze nog niet bestaat.
create database if not exists `rubyquest`;
-- Gebruik de RubyQuest database voor de volgende queries.
use `rubyquest`;


-- Dit zijn wapens die gebruikt kunnen worden. Deze verhogen de strength van een bepaald wezen of karakter.
create table `weapon` (
	`id` int not null unique primary key auto_increment,
	`name` varchar(50) not null,
	`price` int not null,
	`attack` int not null
)
engine = InnoDB;


-- Dit is bescherming die gebruikt kunnen worden. Deze verhogen de defense van een bepaald wezen of karakter.
create table `armor` (
	`id` int not null unique primary key auto_increment,
	`name` varchar(50) not null,
	`price` int not null,
	`defense` int not null
)
engine = InnoDB;


-- Dit zijn dieren. Deze lopen rond en kan je tot je huisdier maken.
create table `animal` (
	`id` int not null unique primary key auto_increment,
	`type` varchar(50) not null,
	`speed` int not null,
	`defense` int not null,
	`loyalty` int not null,
	`owner` int
)
engine = InnoDB;


-- Dit zijn alle karakters in RubyQuest. Sommigen van deze kunnen regiohouders worden.
create table `person` (
	`id` int not null unique primary key auto_increment,
	`name` varchar(50) not null,
	`sex` char(1) not null,
	`max_health` int not null,
	`attack` int not null,
	`defense` int not null,
	`agility` int not null,
	`experience` int not null,
	`gold` int not null,
	`weapon` int not null,
	`armor` int not null
)
engine = InnoDB;
alter table `person` add index(`weapon`);
alter table `person` add foreign key(`weapon`) references `weapon`(`id`);
alter table `person` add index(`armor`);
alter table `person` add foreign key(`armor`) references `armor`(`id`);


-- Dit zijn de regio's in RubyQuest. Deze worden geleid door een houder, standaard is dit een koning.
create table `region` (
	`id` int not null unique primary key auto_increment,
	`name` varchar(50) not null,
	`holder` int not null
)
engine = InnoDB;
alter table `region` add index(`holder`);
alter table `region` add foreign key(`holder`) references `person`(`id`);


-- Dit zijn de steden in RubyQuest. Deze bevinden zich onder een bepaalde regio.
create table `city` (
	`id` int not null unique primary key auto_increment,
	`name` varchar(50) not null,
	`region` int not null
)
engine = InnoDB;
alter table `city` add index(`region`);
alter table `city`add foreign key(`region`) references `region`(`id`);


-- Dit zijn de hoofdkarakters.
create table `hero` (
	`id` int not null unique primary key auto_increment,
	`level` int not null,
	`health` int not null,
	`stamina` int not null,
	`intelligence` int not null,
	`charisma` int not null,
	`resilience` int not null,
	`person` int not null
)
engine = InnoDB;
alter table `hero` add index(`person`);
alter table `hero` add foreign key(`person`) references `person`(`id`);


-- Dit zijn 'Non Playable Characters'. Deze kunnen taken vrijgeven en bevinden zich in een stad.
create table `npc` (
	`id` int not null unique primary key auto_increment,
	`health` int not null,
	`profession` varchar(100) not null,
	`city` int not null,
	`person` int not null
)
engine = InnoDB;
alter table `npc` add index(`person`);
alter table `npc` add foreign key(`person`) references `person`(`id`);
alter table `npc` add index(`city`);
alter table `npc` add foreign key(`city`) references `city`(`id`);


-- Dit zijn wezens die jou willen behoeden van het uitvoeren van jouw taken. Deze kan je bevechten.
create table `creature` (
	`id` int not null unique primary key auto_increment,
	`name` varchar(50) not null,
	`attack` int not null,
	`defense` int not null,
	`max_health` int not null,
	`health` int not null,
	`gold` int not null,
	`experience` int not null,
	`spawn` int not null
)
engine = InnoDB;
alter table `creature` add index(`spawn`);
alter table `creature` add foreign key(`spawn`) references `region`(`id`);


-- Dit zijn taken die vrijgegeven kunnen worden.
create table `quest` (
	`id` int not null unique primary key auto_increment,
	`title` varchar(50) not null,
	`experience` int not null,
	`gold` int not null,
	`publisher` int not null,
	`holder` int
)
engine = InnoDB;
alter table `quest` add index(`publisher`);
alter table `quest` add foreign key(`publisher`) references `npc`(`id`);