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
