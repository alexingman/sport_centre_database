--Searching the following information for the shortest group exercise class
--in the category called Body Care: class name, duration and class category name.
--Sorting the rows in the scoreboard in ascending order by the name of the class.

SELECT rltunti.rlnimi, rltunti.kesto, kategoria.knimi
FROM rltunti
JOIN kategoria ON rltunti.ktunnus = kategoria.ktunnus
WHERE kategoria.knimi = 'Kehonhuolto'
AND rltunti.kesto = (SELECT MIN(kesto) FROM rltunti WHERE ktunnus = kategoria.ktunnus)
ORDER BY rltunti.rlnimi ASC;