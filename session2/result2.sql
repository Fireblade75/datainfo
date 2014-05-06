INSERT INTO F ("ABC", "EF", false, "Aan de hand van ABC kan aan de hand van E-> D ABCDEF bepaald worden. Dit is dus de key.");
INSERT INTO F ("E", "D", true, "E is geen key dus het is een violation.");
INSERT INTO F ("D", "A", true, "D is geen key dus het is een violation.");

