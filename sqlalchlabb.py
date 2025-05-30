from sqlalchemy import create_engine
from sqlalchemy.engine import URL
from getpass import getpass
from sqlalchemy import text
import pandas as pd



def connect_to_server():
    server_name = "localhost"
    database_name = "BOKHANDEL"
    user_name = "sa" # detta kanske borde vara ett user-konto med endast read-access, men förstått att det inte sparas i en backup
    pwd = getpass("Lösenord:")
    connection_string = f"DRIVER=ODBC Driver 18 for SQL Server;SERVER={server_name};UID={user_name};PWD={pwd};DATABASE={database_name};TrustserverCertificate=yes"
    url_string = URL.create("mssql+pyodbc", query={"odbc_connect": connection_string})
    try:
        engine = create_engine(url_string)
        with engine.connect() as connection:
            print(f"connected")
        return engine
    except Exception as e:
        print("fel vid anslutning: \n")
        print(e)


def search_books(engine, search_term):

    query_sql = text("""
        SELECT 
            b.Titel,
            CONCAT(f.Förnamn, ' ', f.Efternamn) as Författare,
            b.ISBN,
            b.Språk,
            b.Pris,
            fo.Namn as Förlag,
            bu.Butiksnamn,
            bu.Stad,
            ls.Antal
        FROM Böcker b
        LEFT JOIN Bokförfattare bf ON b.ISBN = bf.ISBN
        LEFT JOIN Författare f ON bf.FörfattareID = f.ID
        LEFT JOIN Förlag fo ON b.FörlagID = fo.ID
        LEFT JOIN Lagersaldo ls ON b.ISBN = ls.ISBN
        LEFT JOIN Butiker bu ON ls.ButikID = bu.ID
        WHERE b.Titel LIKE :search_pattern
        ORDER BY b.Titel, bu.Butiksnamn
    """)
    
    try:
        search_pattern = f"%{search_term.strip()}%" # säker mot sql injektion
        df = pd.read_sql(query_sql, engine, params={"search_pattern": search_pattern}) # använder pandas här eftersom det visas bättre i en notebook.
        
        if df.empty:
            print(f"Hittade inte en bok som matchar '{search_term}'")
            return df

        return df
        
    except Exception as e:
        print(f"Fel vid sökning: {e}")
        return pd.DataFrame()


