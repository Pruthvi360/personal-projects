# identity operator may be class/type/object

# Types of operators 2 types 
# 1. is
# 2. is not

x=5
z=10        

result = type(x) is type(z)  # Validating type of variable int, string, float

print(result)

x='zero'  # this string
z=2       # this is int

result = type(x) is type(z)

print(result)

result = type(x) is not type(z)

print(result)