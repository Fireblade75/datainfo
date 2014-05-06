SELECT person.name, min(movie.year)
FROM person, movie, acts, genre
WHERE person.pid  = acts.pid
	AND movie.mid = acts.mid
	AND movie.mid = genre.mid
HAVING genre.genre = "Action"
GROUP BY person.name

--------------------------------

SELECT person.name, min(movie.year)
FROM person, movie, directs
WHERE person.pid  = directs.pid
	AND movie.mid = directs.mid
	AND movie.year IS NOT NULL
	AND (
			SELECT count(*) FROM genre
			WHERE genre.mid = movie.mid
			AND genre.genre = "Action"
		) 
	AND (
			SELECT count(*)
			FROM person, movie, directs
			WHERE person.pid  = directs.pid
				AND movie.mid = directs.mid
				AND (
					SELECT count(*) FROM genre
					WHERE genre.mid = movie.mid
					AND genre.genre = "Action"
				)
		) >= 2
GROUP BY person.name

-- _______________________________________

SELECT person.name, min(movie.year), count(*) AS aantal
FROM person, movie, directs
WHERE person.pid  = directs.pid
	AND movie.mid = directs.mid
	AND aantal >= 2
	AND (
			SELECT count(*) FROM genre
			WHERE genre.mid = movie.mid
			AND genre.genre = "Action"
		)
GROUP BY person.name		
ORDER BY aantal DESC

-- _______________________________________

