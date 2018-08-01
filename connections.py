import mysql.connector
import time

num_connections = 200
start_time = time.time()

for i in range(num_connections):
    print "connection number " + str(i+1)
    cnx = mysql.connector.connect(host='localhost',user='cliente_lectura',password='cliente_lectura', database='challenge')
    cursor = cnx.cursor()

    cursor.callproc('calculus')
    
            # print out the result
    for result in cursor.stored_results():
        items = result.fetchone()
        for item in items:
            print (item)

    cnx.commit()

    cursor.close()
    cnx.close()
time = (time.time() - start_time) / 60
print ("Finished in %s minutes " % time)
print ("Average time per connection %s seconds" % str(time*60/num_connections))