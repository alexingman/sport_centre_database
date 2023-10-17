--Searching for each category category name, 
--the number of group exercise hours in the category, 
--the number of organised hours in the category, 
--and the number of different instructors teaching the number of classes in the category.
--Sorting the rows of the scoreboard in ascending order by category name.

SELECT
    k.knimi AS knimi,
    COUNT(DISTINCT r.rltunnus) AS rltuntilkm,
    COUNT(l.rltunnus) AS ljtuntilkm,
    COUNT(DISTINCT l.otunnus) AS ohjaajalkm
FROM kategoria k
LEFT JOIN rltunti r ON k.ktunnus = r.ktunnus
LEFT JOIN ljtunti l ON r.rltunnus = l.rltunnus
GROUP BY k.ktunnus, k.knimi
ORDER BY k.knimi;