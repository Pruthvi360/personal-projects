# working with CSV files

import csv,time

print('---------------------------Writing data to CSV file Type 1---------------------------------')

data = [['sl.no','Name','Designation','id'],[1,'Pruthvi','Network Lead','10042'],[1,'Chaithra','Network Specialist','10043']]

cs = open('demo.csv','w',newline="")

cswr = csv.writer(cs, delimiter=',')

for line in data:
    cswr.writerow(line)
    
print('Writing CSV file from \'Using for loop\'..................................................')
time.sleep(2)
    
cs.close()

print('---------------------------Writing data to CSV file Type 2---------------------------------')

cs = open('demo.csv','w',newline="")

cswr = csv.writer(cs, delimiter=',')

cswr.writerows(data)
  
print('Writing CSV file \'Using CSV.writerows \'................................................................')
time.sleep(2)
    
cs.close()


print('---------------------------Reading data from CSV file---------------------------------')

csr = open('demo.csv','r')

data = csv.reader(csr, delimiter=',')

for each_row in data:
    print(each_row)

csr.close()

print('---------------------------Reading data only header of CSV file---------------------------------')

csr = open('demo.csv','r')

data1 = csv.reader(csr, delimiter=',')
# print(list(data1))
# print(list(data1)[0])
header = next(data1)
print('Your CSV file Header is : ', header)

print('--------------------------------')

#print("No of lines after header in CSV file : ", len(list(data1)))

print(list(data1))      # observe the output it is printing from 2nd line because cursor position moved to next line after print header


csr.close()
