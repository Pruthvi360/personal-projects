import os,sys

path = input('Enter your path to search file extention in dir : ')

if os.path.exists(path) == True:
    ext = input('Enter your file extension to search for : ')
else:
    print('Path does not exist')
    sys.exit()
    
search = os.listdir(path)
if len(search)==0:
    print('This is an emplty Directory')
    sys.quit()
else:
    req_files=[]
    for each_file in search:
        if each_file.endswith(ext):
            req_files.append(each_file)
    if len(req_files) == 0:
        print('There is no matching file in the directory')
    else:
        print(f'Matching files in this directory is : {req_files}')

    

    