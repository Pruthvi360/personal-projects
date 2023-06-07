source_path = input('Enter your source path :') # C:\Users\HP\Desktop\Trouble shooting\devices are not accessiable.txt
destination_path = input('Enter your destination path :') # C:\Users\HP\Desktop\transfered.txt

read = open(source_path,'r')

data = read.readlines()

read.close()

print(data)

write = open(destination_path,'w')

for list in data:
    write.write(list)

write.close()

read1 = open(destination_path,'r')

data1 = read1.readlines()

read1.close()

print(data1)
