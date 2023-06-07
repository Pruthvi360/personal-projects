import os,sys
from datetime import datetime as dt

#path = input('Enter path to search for older files: ')

path1 = 'E:\python-network-automation'
age = 1

if os.path.exists(path1):
    list_of_files = os.listdir(path1)
else:
    print('Path is invalid')
    sys.exit(1)

today_dt = dt.now()

list_old_files = []

for each_file in list_of_files:
    file_path = os.path.join(path1,each_file)
    if os.path.isfile(file_path):
        files_age_in_secs = os.path.getctime(file_path)
        files_age = (dt.fromtimestamp(files_age_in_secs))
        older_files =(today_dt-files_age).days
        if older_files >= age:
            print(file_path, older_files)


#    
#    print(files_age)
#    print(os.path.join(each_file,files_age))

