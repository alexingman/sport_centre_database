--Searching the following information for group exercise classes
--in the category Body Care with a weekday of Tue (Tuesday abbreviated to Tue) 
--or a duration of 50 minutes: 
--day of the week, starting time, name of the group exercise class, 
--duration and level of difficulty.
--Sorting the result rows in ascending order by day of week, start time and name.

SELECT ljtunti.viikonpaiva, ljtunti.alkamisaika, rltunti.rlnimi, rltunti.kesto, rltunti.taso
FROM ljtunti
JOIN rltunti ON ljtunti.rltunnus = rltunti.rltunnus
JOIN kategoria ON rltunti.ktunnus = kategoria.ktunnus
WHERE kategoria.knimi = 'Kehonhuolto'
  AND (ljtunti.viikonpaiva = 'ti' OR rltunti.kesto = 50)
ORDER BY ljtunti.viikonpaiva ASC, ljtunti.alkamisaika ASC, rltunti.rlnimi ASC;