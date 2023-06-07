# Membership operators are used to validate the membership of a value
# 2 types of operators 
# 1. in
# 2. not in

x=[1,2,3]

result = 1 in x

print(result)

x=[1,2,3]

result = 1 not in x

print(result)

x=['1.5','1.6','1.7']

result = 1 in x

print(result)

x=['1.5','1.6','1.7']

result = 1 not in x

print(result)

valid_java=['1.6','1.7','1.8']

result = '1.9' not in valid_java

print(result)