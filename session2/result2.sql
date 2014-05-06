INSERT INTO F ("ABC", "EF", false, "Aan de hand van ABC kan aan de hand van E-> D ABCDEF bepaald worden. Dit is dus de key.");
INSERT INTO F ("E", "D", true, "E is geen key dus het is een violation.");
INSERT INTO F ("D", "A", true, "D is geen key dus het is een violation.");

-- Stap 1

CREATE TABLE R1a (A INT, B INT, C, INT, E INT, F INT);
CREATE TABLE R1b (
	E INT, D INT
	FOREIGN KEY (E) REFERENCES R1(E)  
);
CREATE TABLE F1 (x VARCHAR(10), y VARCHAR(10),
violation BOOLEAN, motivation VARCHAR(200));

INSERT INTO F1 ("ABC", "EF", false, "Aan de hand van ABC kan aan de hand van E-> D ABCDEF bepaald worden. Dit is dus de key.");
INSERT INTO F1 ("E", "D", true, "Met E kun je alle kollommen van R1b verkrijgen");

-- Stap 2

CREATE TABLE R2a (B INT, C, INT, E INT, F INT);
CREATE TABLE R2b (
	E INT, D INT, A INT, 
	FOREIGN KEY (E) REFERENCES R1(E)  
);
CREATE TABLE F2 (x VARCHAR(10), y VARCHAR(10),
violation BOOLEAN, motivation VARCHAR(200));

INSERT INTO F2 ("EBC", "DFA", false, "Aan de hand van ABC kan aan de hand van E-> DA ABCDE bepalen en daarmee met ABC->EF ABCDEF bepalen.");
INSERT INTO F2 ("E", "DA", true, "Met E kun je alle kollommen van R1b verkrijgen");