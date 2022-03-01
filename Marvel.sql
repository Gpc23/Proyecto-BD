CREATE TABLE Personajes 
(
    ID INT(2),
    Nombre VARCHAR(40),
    Popularidad INT(99),
    Tipo VARCHAR(40),
    Genero VARCHAR(40), 
    Altura_m NUMERIC,
    Peso_kg NUMERIC,
    Pais VARCHAR(40),
    Inteligencia INT(2),
    Fuerza INT(2),
    Velocidad INT(2),
    Durabilidad INT(2),
    Energia INT(2),
    Habilidades_de_lucha INT(2),
    CONSTRAINT PK_ID PRIMARY KEY (ID)
);

CREATE TABLE Equipos
( 
    ID INT(2),
    Nombre VARCHAR(40),
    Creacion DATE,
    Personajes INT(2),
    CONSTRAINT PK_ID PRIMARY KEY (ID),
    CONSTRAINT FK_Nombre FOREIGN KEY (Personajes) REFERENCES Personajes (Nombre)
);
    
INSERT INTO Personajes VALUES(1, "Spider Man", 1, "Good", "Male", 1.78, 75.75, "USA", 4, 4, 3, 3, 1, 4); 
INSERT INTO Personajes VALUES(2, "Iron Man", 20, "Neutral", "Male", 1.98, 102.58, "USA", 6, 6, 5, 6, 6, 4); 
INSERT INTO Personajes VALUES(3, "Hulk", 18, "Neutral", "Male", 2.44, 635.29, "USA", 1, 7, 3, 7, 5, 4); 
INSERT INTO Personajes VALUES(4, "Wolverine", 3, "Good", "Male", 1.6, 88.46, "Canada", 2, 4, 2, 4, 1, 7);
INSERT INTO Personajes VALUES(5, "Thor", 5, "Good", "Male", 1.98, 290.3, "Asgard", 2, 7, 7, 6, 6, 4);
INSERT INTO Personajes VALUES(6, "Green Goblin", 91, "Bad", "Male", 1.93, 174.63, "USA", 4, 4, 3, 4, 3, 3);
INSERT INTO Personajes VALUES(7, "Magneto", 11, "Neutral", "Male", 1.88, 86.18, "Germany", 6, 3, 5, 4, 6, 4);
INSERT INTO Personajes VALUES(8, "Thanos", 47, "Bad", "Male", 2.01, 446.79, "Titan", 6, 7, 7, 6, 6, 4);
INSERT INTO Personajes VALUES(9, "Loki", 32, "Bad", "Male", 1.93, 238.14, "Jotunheim", 5, 5, 7, 6, 6, 3);
INSERT INTO Personajes VALUES(10, "Doctor Doom", 19, "Bad", "Male", 2.01, 188.24, "Latveria", 6, 4, 5, 6, 6, 4);
INSERT INTO Personajes VALUES(11, "Jean Grey", 8, "Good", "Female", 1.68, 52.16, "USA", 3, 2, 7, 7, 7, 4);
INSERT INTO Personajes VALUES(12, "Rogue", 4, "Good", "Female", 1.73, 54.43, "USA", 7, 7, 7, 7, 7, 7);
INSERT INTO Personajes VALUES(13, "Storm", 2, "Good", "Female", 1.80, 66, "Kenya", 2, 2, 3, 2, 5, 4);
INSERT INTO Personajes VALUES(14, "Nightcrawler", 6, "Good", "Male", 1.75, 73, "Germany", 3, 2, 7, 2, 1, 3);
INSERT INTO Personajes VALUES(15, "Gambit", 7, "Good", "Male", 1.88, 81, "EUA", 2, 2, 2, 2, 2, 4);
INSERT INTO Personajes VALUES(16, "Captain America", 9, "Good", "Male", 1.88, 108, "EUA", 3, 3, 2, 3, 1, 6);
INSERT INTO Personajes VALUES(17, "Cyclops", 10, "Good", "Male", 1.90, 88, "EUA", 3, 2, 2, 2, 5, 4);
INSERT INTO Personajes VALUES(18, "Emma Frost", 12, "Neutral", "Female", 1.78, 65, "EUA", 4, 4, 2, 5, 5, 3);
INSERT INTO Personajes VALUES(19, "Kitty Pryde", 13, "Good", "Female", 1.68, 50, "EUA", 4, 2, 2, 3, 1, 5);
INSERT INTO Personajes VALUES(20, "Daredevil", 14, "Good", "Male", 1.83, 91, "EUA", 3, 3, 2, 2, 4, 5);
INSERT INTO Personajes VALUES(21, "Punisher", 50, "Neutral", "Male", 1.85, 91, "EUA", 3, 3, 2, 2, 1, 6);
INSERT INTO Personajes VALUES(22, "Silver Surfer", 33, "Good", "Male", 1.93, 102, "Zenn-La", 3, 7, 7, 6, 7, 2);
INSERT INTO Personajes VALUES(23, "Ghost Rider", 86, "Good", "Male", 1.88, 99, "EUA", 2, 4, 3, 5, 4, 2);
INSERT INTO Personajes VALUES(24, "Venon", 78, "Neutral", "Male", 1.90, 118, "EUA", 3, 4, 2, 6, 1, 4);
INSERT INTO Personajes VALUES(25, "Juggernaut", 76, "Neutral", "Male", 2.87, 862, "EUA", 2, 7, 2, 7, 1, 4);
INSERT INTO Personajes VALUES(26, "Professor X", 58, "Good", "Male", 1.83, 86, "EUA", 5, 2, 2, 2, 5, 3);

INSERT INTO EQUIPOS VALUES(1, "Vengadores", 1989, 23);
INSERT INTO EQUIPOS VALUES(2, "Vengadores Secretos", 2008, 8);
INSERT INTO EQUIPOS VALUES(3, "X-Men", 1996, 15);
INSERT INTO EQUIPOS VALUES(4, "Patrulla-X", 1992, 5);
INSERT INTO EQUIPOS VALUES(5, "Inhumanos", 1999, 26);
INSERT INTO EQUIPOS VALUES(6, "Defensores", 2003, 7);
INSERT INTO EQUIPOS VALUES(7, "Campeones", 2004, 17);