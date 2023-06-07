# subprocess is a built in python module for running command line commands
# alternative is os.system('ls -lrt')

'''
sp=subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE,universal_newlines=True)
rc=sp.wait()  # this will status of extection process
output,Error=sp.communicate()
print(f'This is an output of :\n {output})
print(f'This is an error of :\n {Error}')


if shell == True: # Always a "String" then the subprocess will execute in seperate shell.
if shell == False # Always a "list" then the subprocess will execute in same python shell.

Note: shell=False don't work on your operating system environment variables


### WINDOWS ###

Example: cmd="ls -lrt" ====> shell=True
         shell=False ===> cmd="ls -lrt".split() or ["ls" "-lrt"]
         
         cnd is string in windows

'''

import subprocess

cmd = 'dir'

sp = subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE ,stderr=subprocess.PIPE,universal_newlines=True)

rc=sp.wait() # this will status of extection processs

print(f' This is an status of execution code : {rc}')

output,Error=sp.communicate()

print(f'This is an output of :\n {output}')

if rc !=0:
    print(f'This is an error output :\n {Error}')
      
      
