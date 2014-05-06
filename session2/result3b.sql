
SELECT p.pid FROM Person p
WHERE EXISTS(
	SELECT * FROM Acts a
	WHERE a.pid = p.pid
	AND EXISTS (
		SELECT * FROM Movie m –the
		movies exists and a plays in it
		WHERE m.mid = a.mid
			AND m.name = 'Back to the Future'
	)
);

-- ---------------------------------------------------
-- Using shunting rule
SELECT p.pid FROM Person p
WHERE EXISTS(
SELECT * FROM Acts a, Movies m
WHERE a.pid = p.pid
AND m.mid = a.mid
AND m.name = 'Back to the Future'
);

-- ---------------------------------------------------
-- Using shunting rule
SELECT DISTINCT p.pid
FROM Person p, Acts a, Movies m
WHERE a.pid = p.pid
AND m.mid = a.mid
AND m.name = 'Back to the Future';

-- ---------------------------------------------------
-- Using shunting rule
SELECT DISTINCT p.pid
FROM Acts a, Movies m
WHERE m.mid = a.mid
AND m.name = 'Back to the Future'
AND EXISTS (
SELECT * FROM Person p
WHERE p.pid = a.pid
);

-- ---------------------------------------------------
-- Using foreign key rule
SELECT DISTINCT acts.pid
FROM acts, movie
WHERE acts.mid = movie.mid
	AND movie.name = "Back to the Future";