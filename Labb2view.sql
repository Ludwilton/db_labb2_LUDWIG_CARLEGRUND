CREATE VIEW TitlarPerFörfattare AS
SELECT 
    f.[Förnamn] + ' ' + f.Efternamn AS 'Namn',
    CAST(DATEDIFF(YEAR, f.[Födelsedatum], GETDATE()) AS NVARCHAR) + ' år' AS 'Ålder',
    CAST(COUNT(DISTINCT bf.ISBN) AS NVARCHAR) + ' st' AS 'Titlar',
    CAST(ISNULL(SUM(b.Pris * ls.Antal), 0) AS NVARCHAR) + ' kr' AS 'Lagervärde'
FROM 
    [Författare] f
    LEFT JOIN [Bokförfattare] bf ON f.ID = bf.[FörfattareID]
    LEFT JOIN [Böcker] b ON bf.ISBN = b.ISBN
    LEFT JOIN Lagersaldo ls ON b.ISBN = ls.ISBN
GROUP BY 
    f.ID, f.[Förnamn], f.Efternamn, f.[Födelsedatum];


SELECT * FROM TitlarPerFörfattare 
