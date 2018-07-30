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

num_values = 100000

data = []
print ("Generating random data...")
start_time = time.time()
for x in range (num_values):
    datayn = yn[random.randint(0, 1)]
    databool = boolv[random.randint(0, 1)]
    datamoney = '$' + str(random.randint(0, 999999999))
    data.append([datayn, numgen(2), dategen1(), databool, stringgen(31), numgen(10), dategen2(), numgen(15), datamoney, stringgen(10), numgen(10), stringgen(40), stringgen(20), stringgen(800), stringgen(200), "0"])

print ("Finished in %s seconds" % (time.time() - start_time))

with open("randomData.csv", 'wb') as myfile:
    wr = csv.writer(myfile, quoting=csv.QUOTE_ALL)
    for i in range (len(data)):
        wr.writerow(data[i])
