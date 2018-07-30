# coding=utf-8

from __future__ import print_function
from datetime import date, datetime, timedelta
import mysql.connector
import random
import time
import string
import csv

def dategen1():
    day = random.randint(1, 31)
    if day < 10:
        day = "0" + str(day)
    return  str(random.randint(1, 12)) +"/"+ str(day) +"/"+ str(random.randint(1, 9999))

def dategen2():
    day = random.randint(1, 31)
    if day < 10:
        day = "0" + str(day)
    return  str(random.randint(1, 9999)) +"/"+ str(random.randint(1, 12)) +"/"+ str(day) 


def stringgen(max):
    return ''.join(random.choice(string.ascii_letters) for _ in range(random.randint(1, max)))

def numgen(max):
    max = '9' * max
    return random.randint(0, int(max))



yn = ["Y", "N"]
boolv = ["true", "false"]

num_values = 5000
max_value = 100000
insert = "INSERT INTO challenge (yn,age,birthday,bool,city,ccnumber,date,digit,dollar,first,chifre,name,last,paragraph,sentence,trgr) VALUES"
values =  "(%s, %s, %s, %s, %s, %s, %s, %s,%s, %s, %s, %s,%s, %s, %s, %s),"
values *= num_values
values = values [:-1]
insert += values
add_row = (insert)

data = []
print ("Generating random data...")
start_time = time.time()
for y in range (max_value/num_values):
    print (y*num_values)
    datayn = yn[random.randint(0, 1)]
    databool = boolv[random.randint(0, 1)]
    datamoney = '$' + str(random.randint(0, 9999999999999))
    data_row = (datayn, numgen(2), dategen1(), databool, stringgen(31), numgen(10), dategen2(), numgen(15), datamoney, stringgen(10), numgen(10), stringgen(40), stringgen(20), stringgen(800), stringgen(200), "0")

    for x in range (num_values-1):
        datayn = yn[random.randint(0, 1)]
        databool = boolv[random.randint(0, 1)]
        datamoney = '$' + str(random.randint(0, 6846846846842))
        data_row += (datayn, numgen(2), dategen1(), databool, stringgen(31), numgen(10), dategen2(), numgen(15), datamoney, stringgen(10), numgen(10), stringgen(40), stringgen(20), stringgen(800), stringgen(200), "0")
    data.append(data_row)
print ("Finished in %s seconds" % (time.time() - start_time))


cnx = mysql.connector.connect(host='localhost', user='cliente_lect_scr', password='cliente_lect_scr', database='challenge')
cursor = cnx.cursor()

print ("Execute inserts")
start_time = time.time()
for i in range(max_value/num_values):
    cursor.execute(add_row, data[i])
print ("Finished in %s seconds" % (time.time() - start_time))
# Make sure data is committed to the database
cnx.commit()

cursor.close()
cnx.close()
