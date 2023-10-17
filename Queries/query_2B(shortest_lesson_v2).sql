--Searching data for shortest lesson, used MIN()-function this time to search shortest lesson.

SELECT rltunti.rlnimi, rltunti.kesto, kategoria.knimi
FROM rltunti
JOIN kategoria ON rltunti.ktunnus = kategoria.ktunnus
WHERE rltunti.kesto = (SELECT MIN(kesto) FROM rltunti)
ORDER BY rltunti.rlnimi ASC;