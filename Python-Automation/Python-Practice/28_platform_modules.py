# Platform module is used for checking the HARDWARE INFO OF SYSTEM AND RUN TIME INTERPETER
import platform as pt

print(pt.machine())
print(pt.version())
print(pt.platform())
print(pt.uname())
print(pt.system())
print(pt.release())
print(pt.architecture())

system_info = pt.uname()

print(f'Operating System: {system_info[0]}\nMachine Name: {system_info[1]}\nOS Version: {system_info[2]},\nArchitecture: {pt.architecture()[0]}')
