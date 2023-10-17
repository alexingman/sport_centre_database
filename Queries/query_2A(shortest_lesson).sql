--Searching for shortest lesson in schedule.

SELECT rlnimi, kesto
FROM rltunti
ORDER BY kesto ASC, rlnimi ASC
LIMIT 1;