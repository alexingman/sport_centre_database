--Searching the IDs and names of the instructors who will lead
--the chapters of all the group exercise classes they can lead.
--Sorting the rows on the scoreboard in ascending order by instructor ID.

SELECT o.otunnus, o.onimi
FROM ohjaaja o
WHERE NOT EXISTS (
    SELECT r.rltunnus
    FROM voi_ohjata vo
    JOIN rltunti r ON vo.rltunnus = r.rltunnus
    WHERE vo.otunnus = o.otunnus
    EXCEPT
    SELECT l.rltunnus
    FROM ljtunti l
    WHERE l.otunnus = o.otunnus
)
ORDER BY o.otunnus;