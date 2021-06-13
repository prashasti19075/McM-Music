import mysql.connector
import sqlite3

mydb = mysql.connector.connect(host = "127.0.0.1", user = "root", passwd = "12345", port = "3306", database = "midsem")

mycursor = mydb.cursor(buffered=True)
sql_command='''
with sometable(Amount, DistributorNo, Type) as 
(Select count(*), DistributorNo, AlbumType  from Download inner join album on Download.AlbumNo=album.AlbumNo and Download.DownloadStatus="Successful"
 group by AlbumType, DistributorNo)
 Select max(Amount) over(),Type  from sometable where type="Audio"
UNION
 Select max(Amount) over(),Type  from sometable where type="Video"; '''

sql_command2='''
with sometable(Amount, DistributorNo, Type) as 
(Select count(*), DistributorNo, AlbumType  from Download inner join album on Download.AlbumNo=album.AlbumNo and Download.DownloadStatus="Successful"
 group by AlbumType, DistributorNo)
Select DistributorNo, Type, Amount as "Copies_Sold"  from sometable where type= (%s) and Amount= (%s) 
'''
mycursor.execute(sql_command)
cursor2=mydb.cursor(buffered=True)
query="Select DistributorName from Distributors where DistributorNo= (%s);"
cursor3=mydb.cursor(buffered=True)
query2="""Select distinct MemberNo, Candidate.FirstName as \"Name\" from Roles,
Candidate where Roles.MemberNo=Candidate.CandidateNo and  AlbumNo in (Select Download.AlbumNo
from Download INNER JOIN Album ON Album.AlbumNo=Download.AlbumNo where Download.DistributorNo= (%s) and Album.AlbumType=(%s));"""
cursor4=mydb.cursor(buffered=True)
for row in mycursor.fetchall():
        maximum,AlbumType=row
        cursor4.execute(sql_command2,(AlbumType,maximum,))
        for row2 in cursor4.fetchall():
                DistributorNo,AlbumType, Sold_Items = row2
                DistributorName = ""
                cursor2.execute(query,(DistributorNo,))
                for row2 in cursor2.fetchone():
                    DistributorName=row2
                    print("Distributor No. ",DistributorNo," Distributor  Name ", DistributorName," Album Type ", AlbumType,"Items Sold ", Sold_Items,"\n")
                    print("Members Associated :\n")
                    cursor3.execute(query2, (DistributorNo,AlbumType,))
                    for row3 in cursor3.fetchall():
                        MemberNo,MemberName=row3
                        print(MemberNo,MemberName,"\n")
mydb.close() 