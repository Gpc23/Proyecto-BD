create database ProyectoBD;
create user ‘gonzalo’@’%’ identified by ‘1234’;
grant all privileges on ProyectoBD.* to ‘gonzalo’@’%’;
flush privileges;
exit

mysql -u gonzalo -p
use ProyectoBD


CREATE TABLE Personajes 
(
    Nombre VARCHAR(40),
    Popularidad INT(99),
    Tipo VARCHAR(40),
    Genero VARCHAR(40), 
    Pais VARCHAR(40),
    Inteligencia INT(2),
    Fuerza INT(2),
    Velocidad INT(2),
    Equipo VARCHAR(40),
    CONSTRAINT PK_ID PRIMARY KEY (Nombre),
    CONSTRAINT FK_Nombre FOREIGN KEY (Nombre) REFERENCES Equipos (Nombre)
);

CREATE TABLE Equipos
( 
    Nombre VARCHAR(40),
    Creacion DATE,
    CONSTRAINT PK_ID PRIMARY KEY (Nombre)
);
    
INSERT INTO Personajes VALUES("Spider Man", 1, "Good", "Male", "USA", 4, 4, 3, "Vengadores");
INSERT INTO Personajes VALUES("Iron Man", 20, "Neutral", "Male", "USA", 6, 6, 5, "Vengadores"); 
INSERT INTO Personajes VALUES("Hulk", 18, "Neutral", "Male", "USA", 1, 7, 3, "Vengadores"); 
INSERT INTO Personajes VALUES("Wolverine", 3, "Good", "Male", "Canada", 2, 4, 2, "Patrulla-X");
INSERT INTO Personajes VALUES("Thor", 5, "Good", "Male", "Asgard", 2, 7, 7, "Vengadores");
INSERT INTO Personajes VALUES("Green Goblin", 91, "Bad", "Male", "USA", 4, 4, 3, "Campeones");
INSERT INTO Personajes VALUES("Magneto", 11, "Neutral", "Male", "Germany", 6, 3, 5, "X-Men");
INSERT INTO Personajes VALUES("Thanos", 47, "Bad", "Male", "Titan", 6, 7, 7, "Vengadores Secretos");
INSERT INTO Personajes VALUES("Loki", 32, "Bad", "Male", "Jotunheim", 5, 5, 7, "Campeones");
INSERT INTO Personajes VALUES("Doctor Doom", 19, "Bad", "Male", "Latveria", 6, 4, 5, "Vengadores Secretos");
INSERT INTO Personajes VALUES("Jean Grey", 8, "Good", "Female", "USA", 3, 2, 7, "Patrulla-X");
INSERT INTO Personajes VALUES("Rogue", 4, "Good", "Female", "USA", 7, 7, 7, "X-Men");
INSERT INTO Personajes VALUES("Storm", 2, "Good", "Female", "Kenya", 2, 2, 3, "Patrulla-X");
INSERT INTO Personajes VALUES("Nightcrawler", 6, "Good", "Male", "Germany", 3, 2, 7, "X-Men");
INSERT INTO Personajes VALUES("Gambit", 7, "Good", "Male", "EUA", 2, 2, 2, "X-Men");
INSERT INTO Personajes VALUES("Captain America", 9, "Good", "Male", "EUA", 3, 3, 2, "Vengadores");
INSERT INTO Personajes VALUES("Cyclops", 10, "Good", "Male", "EUA", 3, 2, 2, "Patrulla-X");
INSERT INTO Personajes VALUES("Emma Frost", 12, "Neutral", "Female", "EUA", 4, 4, 2, "X-Men");
INSERT INTO Personajes VALUES("Kitty Pryde", 13, "Good", "Female", "EUA", 4, 2, 2, "X-Men");
INSERT INTO Personajes VALUES("Daredevil", 14, "Good", "Male", "EUA", 3, 3, 2, "Defensores");
INSERT INTO Personajes VALUES("Punisher", 50, "Neutral", "Male", "EUA", 3, 3, 2, "Defensores");
INSERT INTO Personajes VALUES("Silver Surfer", 33, "Good", "Male", "Zenn-La", 3, 7, 7,"Campeones");
INSERT INTO Personajes VALUES("Ghost Rider", 86, "Good", "Male", "EUA", 2, 4, 3, "Defensores");
INSERT INTO Personajes VALUES("Venon", 78, "Neutral", "Male", "EUA", 3, 4, 2, "Defensores");
INSERT INTO Personajes VALUES("Juggernaut", 76, "Neutral", "Male", "EUA", 2, 7, 2, "X-Men");
INSERT INTO Personajes VALUES("Professor X", 58, "Good", "Male", "EUA", 5, 2, 2, "Patrulla-X");

INSERT INTO EQUIPOS VALUES("Vengadores", 1989);
INSERT INTO EQUIPOS VALUES("Vengadores Secretos", 2008);
INSERT INTO EQUIPOS VALUES("X-Men", 1996);
INSERT INTO EQUIPOS VALUES("Patrulla-X", 1992);
INSERT INTO EQUIPOS VALUES("Defensores", 2003);
INSERT INTO EQUIPOS VALUES("Campeones", 2004);