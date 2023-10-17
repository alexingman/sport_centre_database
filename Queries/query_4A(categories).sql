--Searching for each category: Name, the number of group exercise hours in the category,
--minimum duration and maximum duration.
--Sorting the rows in the scoreboard in ascending order by category name.

SELECT kategoria.knimi AS knimi, 
       COUNT(rltunti.rlnimi) AS lkm, 
       MIN(rltunti.kesto) AS minkesto, 
       MAX(rltunti.kesto) AS maxkesto
FROM kategoria
LEFT JOIN rltunti ON kategoria.ktunnus = rltunti.ktunnus
GROUP BY kategoria.knimi
ORDER BY kategoria.knimi ASC;