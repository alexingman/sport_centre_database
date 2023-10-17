--Searching for the following information about the scheduled lessons 
--of group exercise classes in the category of Body Care: 
--day of the week, start time, name and duration of the group exercise class.
--Sorting the result rows in ascending order by day of week, start time and name.

SELECT ljtunti.viikonpaiva, ljtunti.alkamisaika, rltunti.rlnimi, rltunti.kesto
FROM ljtunti
JOIN rltunti ON ljtunti.rltunnus = rltunti.rltunnus
JOIN kategoria ON rltunti.ktunnus = kategoria.ktunnus
WHERE kategoria.knimi = 'Kehonhuolto'
ORDER BY ljtunti.viikonpaiva ASC, ljtunti.alkamisaika ASC, rltunti.rlnimi ASC;