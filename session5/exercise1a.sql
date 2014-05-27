DROP TABLE IF EXISTS Bestelling;
DROP TABLE IF EXISTS Exemplaar;
DROP TABLE IF EXISTS Boek;

--Opdracht 1a

CREATE TABLE IF NOT EXISTS `Boek` (
	`isbn` VARCHAR(20) NOT NULL,
	`titel` VARCHAR(200),
	`auteur` VARCHAR(200),
	PRIMARY KEY(`isbn`)
);

CREATE TABLE Exemplaar (
	isbn VARCHAR(20),
	volgnummer INT NOT NULL AUTO_INCREMENT,
	gewicht INT,
	kast VARCHAR(200),
	PRIMARY KEY (volgnummer),
	FOREIGN KEY (isbn) REFERENCES boek (isbn) ON UPDATE CASCADE ON DELETE CASCADE
);

-- Sample Data
INSERT INTO Boek (isbn, titel, auteur)
	VALUES ("0672329468", "Linux Kernel Development", "Robert Love");

INSERT INTO Exemplaar (isbn, volgnummer, gewicht, kast)
	VALUES ("0672329468", null, 714, "C1");

INSERT INTO Exemplaar (isbn, volgnummer, gewicht, kast)
	VALUES ("0672329468", null, 714, "C1");

INSERT INTO Boek (isbn, titel, auteur)
	VALUES ("0071807837", "Programming the Raspberry Pi", "Simon Monk");	

INSERT INTO Exemplaar (isbn, volgnummer, gewicht, kast)
	VALUES ("0071807837", null, 121, "C1");	
	
INSERT INTO Exemplaar (isbn, volgnummer, gewicht, kast)
	VALUES ("0071807837", null, 121, "C2");	
