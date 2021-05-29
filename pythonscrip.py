#where we write transactions

import pyodbc 
conn = pyodbc.connect('Driver={SQL Server};'
                      'Server=localhost;'
                      'Database=LibraryDatabase;'
                      'Trusted_Connection=yes;')

cursor = conn.cursor()
cursor.execute('SELECT * FROM database_name.table')

for row in cursor:
    print(row)
