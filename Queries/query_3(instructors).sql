--Searching the IDs and names of the instructors who can teach both classes
--in the Spinning category and classes in the Body Care category.
--Sorting the rows of the scoreboard in ascending order by instructor ID.

SELECT ohjaaja.otunnus, ohjaaja.onimi
FROM ohjaaja
WHERE ohjaaja.otunnus IN (
    SELECT otunnus FROM voi_ohjata WHERE rltunnus IN (
        SELECT rltunnus FROM rltunti WHERE ktunnus = (
            SELECT ktunnus FROM kategoria WHERE knimi = 'Spinning'
        )
    )
    AND otunnus IN (
        SELECT otunnus FROM voi_ohjata WHERE rltunnus IN (
            SELECT rltunnus FROM rltunti WHERE ktunnus = (
                SELECT ktunnus FROM kategoria WHERE knimi = 'Kehonhuolto'
            )
        )
    )
)
ORDER BY ohjaaja.otunnus ASC;