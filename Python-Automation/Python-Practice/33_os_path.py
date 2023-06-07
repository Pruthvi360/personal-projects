# os.path is a sub module of the os module

import os

path=f'C:\\Users\\HP\\Desktop\\testing issue.txt'
path1=f'C:\\Users\\HP\\'
path2=f'Desktop\\testing issue.txt'

print(os.path.sep) # separator of OS
print(os.path.basename(path)) # to get file in path the last end of the path
print(os.path.dirname(path)) # to get directory name
print(os.path.join(path1,path2)) # join the two paths
print(os.path.split(path)) # split into paths and files
print(os.path.getsize(path),"Bytes") # to get the size of the file
print(os.path.getatime(path))  # access time in milliseconds
print(os.path.getmtime(path))  # Modification time in milliseconds
print(os.path.getctime(path)) # Creation time in milliseconds
print(os.path.exists(path)) # Does the file exist
print(os.path.isfile(path)) 
print(os.path.isdir(path)) # Is a directory
print(os.path.islink(path)) # Is a link