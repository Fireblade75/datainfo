--Opdracht 2cT2

BEGIN READ COMMITTED
	--read2(x)
	SELECT titel FROM Boek WHERE isbn = ' 0136067018';
	--write2(x)
	UPDATE Boek SET titel = titel || ' deel 2' WHERE isbn = ' 0136067018';
COMMIT
