# Create a new file or if exits use that file.
# add content to an extisting file.
# read content in the file.
'''
Open ---> w ---> write content to file.
open ---> a ---> append content to an extisting file.
Open ---> r ---> read content from an existing file.
'''

data = ['you', 'are', 'learning', 'about', 'python']

file = open('write.txt', 'w')

#file.write('Hello World\n')

for i in data:
    file.write(i + '\n')

file.close()

file_read = open('write.txt', 'r')

data = file_read.read()        # read content as it is written
data1 = file_read.readlines()  # This will return a list of lines

file_read.close()

print(data)

file_read = open('write.txt', 'r')

data1 = file_read.readlines() 

file_read.close()
print(data1)

device_list = ['vManage', 'vSmart', 'vBond', 'vEdge', 'C8kv']

append_file = open('write.txt', 'a') # append

for u in device_list: # append
    append_file.write(u + '\n')

append_file.close()

read = open('write.txt', 'r')

rd = read.readlines() # read lines 

read.close()

print(rd)

read = open('write.txt','r')

data = read.readlines() # read lines

read.close()

for each in range(0,10,1):
    print(data[each])
    