# Data types in python
# 1. Every value in python has a data type
# 2. Since everything is an object in python programming, data types are actually classes
#    and variables are instance (object) of the classes.
# 3. There are various data types in Python

"""
Basic Data Types are:
1. Numbers(int, float and complex)
2. Strings
3. Boolean
"""
x=1
y=33.3
z=3+4*45j
u="string Data types in Python"

result=x+y+z

print(result)

print("This Statement is to print the id for the variable of \'y\' ")
print(id(y))

id_y=id(y)

print(id_y)



print("Printing Data type as a Complex: ",type(z),z)

print("Printing Data type as a Intger: ",type(x),x)

print("Printing Data type as a Float: ",type(y),y)

print("Printing Data type as a String: ",type(u),u) 

print(x,y,z,u)

# Assigning another variable to a variable 

x=y

print(x)

# Delete the variable

# del x

print(x)


# Boolen types

# Only True and False are boolen types and can be applied to variables
# Except the True and False you should write quatation
# if you True or False inside quatation it is considered as a boolean
# Boolen False = bool(0), bool(None), bool(()), bool([])
# boolen Ture = Non Empty
my_value=True
my_value2=False

my_value3='false'


print("Printing Data type as a Boolean: ",type(my_value),my_value) 

k=""
j=0
print(bool(k), bool(j))

# Convert one data type to another data type

a=1

b=str(2)

print(type(b),b)

c=bool(2)

print(type(c),c)

d=bool(0)

print(type(d),d)

# Cannot convert string to number 

#e=int(python)

#print(type(e),e)



