CREATE PROCEDURE FlyttaBok
    @FrånButikID INT,
    @TillButikID INT,
    @ISBN NVARCHAR(13),
    @Antal INT = 1
AS
BEGIN
    SET NOCOUNT ON;
    

    IF @Antal <= 0
    BEGIN
        RAISERROR('antalet måste vara större än 0', 16, 1);
        RETURN;
    END
    
    IF @FrånButikID = @TillButikID
    BEGIN
        RAISERROR('kan inte flytta en bok till samma butik', 16, 1);
        RETURN;
    END
    

    IF NOT EXISTS (SELECT 1 FROM Butiker WHERE ID = @FrånButikID)
    BEGIN
        RAISERROR('butik med ID %d existerar inte', 16, 1, @FrånButikID);
        RETURN;
    END
    
    IF NOT EXISTS (SELECT 1 FROM Butiker WHERE ID = @TillButikID)
    BEGIN
        RAISERROR('butik med ID %d existerar inte', 16, 1, @TillButikID);
        RETURN;
    END
    

    IF NOT EXISTS (SELECT 1 FROM [Böcker] WHERE ISBN = @ISBN)
    BEGIN
        RAISERROR('Bok med ISBN %s existerar inte', 16, 1, @ISBN);
        RETURN;
    END
    
    BEGIN TRANSACTION;
    
    BEGIN TRY
        DECLARE @TillgängligtAntal INT;
        

        SELECT @TillgängligtAntal = ISNULL(Antal, 0) 
        FROM Lagersaldo 
        WHERE ButikID = @FrånButikID AND ISBN = @ISBN;
        

        IF @TillgängligtAntal < @Antal
        BEGIN
            RAISERROR('finns inte tillräckligt med böcker i lagret. tillgängligt: %d, begärt: %d', 16, 1, @TillgängligtAntal, @Antal);
            ROLLBACK TRANSACTION;
            RETURN;
        END
        

        IF @TillgängligtAntal = @Antal
        BEGIN
            DELETE FROM Lagersaldo 
            WHERE ButikID = @FrånButikID AND ISBN = @ISBN;
        END
        ELSE
        BEGIN
            UPDATE Lagersaldo 
            SET Antal = Antal - @Antal 
            WHERE ButikID = @FrånButikID AND ISBN = @ISBN;
        END
        

        IF EXISTS (SELECT 1 FROM Lagersaldo WHERE ButikID = @TillButikID AND ISBN = @ISBN)
        BEGIN
            UPDATE Lagersaldo 
            SET Antal = Antal + @Antal 
            WHERE ButikID = @TillButikID AND ISBN = @ISBN;
        END
        ELSE
        BEGIN
            INSERT INTO Lagersaldo (ButikID, ISBN, Antal) 
            VALUES (@TillButikID, @ISBN, @Antal);
        END
        
        COMMIT TRANSACTION;
        
        PRINT 'flyttat ' + CAST(@Antal AS NVARCHAR) + ' böcker med ISBN ' + @ISBN + 
              ' från butik ' + CAST(@FrånButikID AS NVARCHAR) + ' till butik ' + CAST(@TillButikID AS NVARCHAR);
        
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();
        
        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH
END


EXEC FlyttaBok @FrånButikID = 1, @TillButikID = 2, @ISBN = '9789129657401', @Antal = 2;
EXEC FlyttaBok @FrånButikID = 2, @TillButikID = 1, @ISBN = '9789129657401', @Antal = 2;

-- Feltest
EXEC FlyttaBok @FrånButikID = 1, @TillButikID = 2, @ISBN = '9789129657401', @Antal = 1000;
EXEC FlyttaBok @FrånButikID = 999, @TillButikID = 2, @ISBN = '9789129657401', @Antal = 1;


