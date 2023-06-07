# imp is when we want to automate tasks in the server side
# when we want to autmate in system


import os
'''
print(dir(os))
print(help(os))
'''

print(f" Path seperator in you sytem:  {os.sep}")

print(f" current work directory: {os.getcwd()}")

os.chdir(f'C://Users/HP/Desktop/')
os.rmdir('os_demo')
os.mkdir('os_demo')
os.getcwd()
os.listdir()
os.listdir(f"c://Users//HP//Desktop")
os.rmdir('os_dem1')
os.mkdir("os_dem1")
os.makedirs(f"c://Users//HP//Desktop//xyz//xz")
#os.remove("path")
os.removedirs(f"c://Users//HP//Desktop//xyz//xz")
os.rmdir(f"c://Users//HP//Desktop//os_demo")
os.rmdir('renamed')
os.rename("os_dem1","renamed")
os.environ
os.getuid()
os.getgid()
#os.gerpid()

