SELECT person.name
FROM person
WHERE NOT EXISTS (
	SELECT * FROM person, writes
	WHERE person.pid = writes.pid
		AND EXISTS (
			SELECT *
			FROM directs, writes
			WHERE directs.mid = writes.mid
				AND writes.pid =  
		)
)

SELECT person.name
FROM person
WHERE "person writes a movie"
	AND "movie has no director"

-------------
	
SELECT person.name
FROM person, writes
WHERE person.pid = writes.pid
	AND NOT EXISTS (
		SELECT * FROM person, directs
		WHERE person.pid = directs.pid
			AND writes.mid = directs.mid
	)
