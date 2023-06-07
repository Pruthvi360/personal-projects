import os
import sys

path = "E:\\python-network-automation"
if os.path.exists(path):
    dir_file_output = os.listdir(path)
else:
    print("No directory Provide valid path")
    sys.exit()
    
for each_item in dir_file_output:
    if os.path.isdir(each_item) == True:   # checking dir in the path
        print_path = os.path.join(path, each_item)
        print(f'This Folder in Given path\n-----------\n{print_path}\n----------')
    elif os.path.isfile(each_item) == True:
        print_path = os.path.join(path, each_item)
        print(f'This file in Given path\n-----------\n{print_path}\n----------')
    else:
        print("ERROR: Please Enter a valid path")
        
#print(os.listdir(path))
'''
if os.path.isdir(path):
    print(os.listdir(path))
elif os.path.isfile(path):
    print(os.path.basename(path))
else:
    print("ERROR: Please Enter a valid path")
'''



#print(dir_file_output)