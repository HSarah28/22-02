SELECT * FROM Film;

SELECT Regisseur, SUM(Länge) AS Gesamtlänge
FROM Filme
GROUP BY Regisseur;

SELECT Veröffentlichungsjahr, COUNT(*) AS Anzahl_Filme
FROM Filme
GROUP BY Veröffentlichungsjahr;


SELECT 
  CONCAT(LEFT(Veröffentlichungsjahr, 3), '0s') AS Jahrzehnt,
  AVG(Länge) AS Durchschnittslänge
FROM Filme
GROUP BY LEFT(Veröffentlichungsjahr, 3);

SELECT 
  Veröffentlichungsjahr,
  MAX(Länge) AS Maximale_Länge,
  MIN(Länge) AS Minimale_Länge
FROM Filme
GROUP BY Veröffentlichungsjahr;


SELECT RegisseurID, COUNT(FilmID) AS AnzahlFilme

FROM Film

GROUP BY RegisseurID;


--Challenge 1--
SELECT  DISTINCT Jahr FROM Film
ORDER BY Jahr
SELECT MIN (Jahr) AS ältestes_Erscheinungsjahr FROM Film;
 
--Challenge 2--
SELECT DISTINCT Länge FROM Film
ORDER BY Länge DESC
LIMIT 1;

--Challenge 3--
SELECT COUNT(*) AS Anzahl_Filme_Ridley_Scott
FROM Film
INNER JOIN Regisseur ON Film.RegisseurID = Regisseur.RegisseurID
WHERE Regisseur.Nachname = 'Scott';
 
--Challenge 4--
SELECT ROUND(AVG(Länge), 0) AS Durchschnittliche_Länge
FROM Film;
 
 
--Challenge 5--
SELECT Regisseur.Name, COUNT(Film.ID) AS Anzahl_Filme
FROM Regisseur
LEFT JOIN Film ON Regisseur.ID = Film.Regisseur_ID
GROUP BY Regisseur.Name;
 
--Challenge 6--
SELECT Erscheinungsjahr, COUNT(*) AS Anzahl_Filme
FROM Film
GROUP BY Erscheinungsjahr
ORDER BY Anzahl_Filme DESC
LIMIT 1;
