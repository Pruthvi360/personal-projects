import re

my_str = "This is a python course. Python is easy and fast to learning. which as Python2 and Python3 Versions"


my_pattern = r'\bpython[23]?\b' # '?' means may be 2 or 3 and '\b\ for exact word matching
'''

print(re.search(my_pattern,my_str))
print(re.findall(my_pattern,my_str,flags=re.I)) # flags for case sensitive matching
print(re.split(my_pattern,my_str)) 
'''

pat_obj = re.compile(my_pattern) # this will keep the pattern in variable
print(pat_obj)
print(pat_obj.findall(my_str))
print(pat_obj.search(my_str))
print(pat_obj.split(my_str))

