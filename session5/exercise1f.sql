--Opdracht 1f

CREATE TRIGGER delete_book (
	BEFORE DELETE ON Boek
	FOR EACH STATEMENT
	BEGIN
		DELETE FROM Exemplaar WHERE Exemplaar.isbn = OLD.isbn;
	END
);