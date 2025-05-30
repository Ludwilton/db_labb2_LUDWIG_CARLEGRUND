CREATE DATABASE BOKHANDEL

CREATE TABLE [Författare](
    ID int identity(1,1) PRIMARY KEY,
    [Förnamn] NVARCHAR(MAX),
    Efternamn NVARCHAR(MAX),
    [Födelsedatum] DATE
)


CREATE TABLE Förlag(
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Namn NVARCHAR(MAX)
)


CREATE TABLE [Böcker](
    ISBN NVARCHAR(13) PRIMARY KEY,
        CHECK (LEN(ISBN) = 13 AND ISNUMERIC(ISBN) = 1),
    Titel NVARCHAR(MAX),
    [Språk] NVARCHAR(MAX),
    Pris INT,
        CHECK(PRIS > 0),
    Utgivningsdatum DATE,
    [FörlagID] INT FOREIGN KEY REFERENCES [Förlag](ID)
)

CREATE TABLE [Bokförfattare](
    ISBN NVARCHAR(13) FOREIGN KEY REFERENCES [Böcker](ISBN),
    [FörfattareID] INT FOREIGN KEY REFERENCES [Författare](ID),
    Roll NVARCHAR(MAX),
    PRIMARY KEY (ISBN, FörfattareID)
)

CREATE TABLE Butiker(
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Butiksnamn NVARCHAR(MAX),
    Stad NVARCHAR(MAX),
    Adress NVARCHAR(MAX),
    Postnummer NVARCHAR(5),
        check (len(postnummer) = 5 and ISNUMERIC(postnummer) = 1)
)

CREATE TABLE Lagersaldo(
    ButikID INT FOREIGN KEY REFERENCES butiker(ID),
    ISBN NVARCHAR(13) FOREIGN KEY REFERENCES [Böcker](ISBN),
    Antal INT,
    PRIMARY KEY (ButikID, ISBN)
)

CREATE TABLE Kunder(
    ID INT IDENTITY(1,1) PRIMARY KEY,
    [Förnamn] NVARCHAR(MAX),
    Efternamn NVARCHAR(MAX),
    LeveransAdress NVARCHAR(MAX),
    Postnummer NVARCHAR(5),
        CHECK (len(Postnummer) = 5 and ISNUMERIC(Postnummer) = 1),
    Stad NVARCHAR(MAX)
)

CREATE TABLE Ordrar(
    OrderID INT IDENTITY(1,1) PRIMARY KEY,
    KundID INT FOREIGN KEY REFERENCES Kunder(ID),
    Datum DATE
)

CREATE TABLE OrderDetaljer(
    OrderID INT FOREIGN KEY REFERENCES Ordrar(OrderID),
    ISBN NVARCHAR(13) FOREIGN KEY REFERENCES [Böcker](ISBN),
    Antal INT,
    ButikID INT FOREIGN KEY REFERENCES Butiker(ID),
    PRIMARY KEY (OrderID, ISBN)
)

CREATE TABLE Kategorier(
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Kategorinamn NVARCHAR(100) NOT NULL
)

CREATE TABLE BokKategorier(
    ISBN NVARCHAR(13) FOREIGN KEY REFERENCES [Böcker](ISBN),
    KategoriID INT FOREIGN KEY REFERENCES Kategorier(ID),
    PRIMARY KEY (ISBN, KategoriID)
)
;




select * from [böcker]
select * from [förlag]
select * from [Författare]
select * from [Bokförfattare]
select * from [Butiker]
select * from [Lagersaldo]
select * from [Kunder]
select * from [Ordrar]
select * from [OrderDetaljer]
select * from [Kategorier]
select * from [BokKategorier]
select * from [Kunder]

select * from TitlarPerFörfattare


BACKUP DATABASE BOKHANDEL 
TO DISK = 'Ludwig_carlegrund.bak'
WITH FORMAT, INIT;
