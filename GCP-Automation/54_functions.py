'''
A function is a block of code for some specific operation.
Function code is re-usable
A function executes only if it is called
'''
import os,time,platform

def logic(cmd1, cmd2):
    print('Cleaning the screen....')
    time.sleep(2)
    os.system(cmd1)
    time.sleep(1)
    os.system(cmd2)
    time.sleep(1)
    
if platform.system()=='Windows':
    logic('cls','dir')
else:
    logic('clear','ls -lrt')