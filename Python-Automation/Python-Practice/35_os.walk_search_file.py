# used to generate directory and file names in a directory tree by walking

import os
import string
import platform as pt
'''
path = "E:\\python-network-automation\\"
print(list(os.walk(path)))

for r,d,f in os.walk(path):
    if len(f) != 0:
       print(r,f)

'''
'''
req_file = input("Enter your file to search for : ")

for r,d,f in os.walk('/'):
    for each_file in f:
        if each_file==req_file:
           print(os.path.join(r,each_file))

'''


os1 = pt.system().lower()

req_file = input("Enter your file to search for : ")

if os1 == "windows":
    ps_drive = string.ascii_lowercase
    for each_drive in ps_drive:      
        if os.path.exists(each_drive+":\\"):
            for r,d,f in os.walk(each_drive+":\\"):            
                for each_file in f:
                    if each_file==req_file:
                        print(os.path.join(r,each_file))
elif os1 == "linux":
    for r,d,f in os.walk('/'):
        for each_file in f:
            if each_file==req_file:
                print(os.path.join(r,each_file))
