#where we write transactions

import pyodbc 

print ("import statement successful")
conn = pyodbc.connect('Driver={ODBC Driver 17 for SQL Server};'
                      'Server=localhost;'
                      'Database=LibraryDatabase;'
                      'Trusted_Connection=yes;')

cursor = conn.cursor()
cursor.execute('SELECT * FROM database_name.table')

for row in cursor:
    print(row)
