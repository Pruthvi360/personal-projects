# range is a built in function in python
# syntax = range(start,stop,step)

# EXMAPLES BELOW:

print(list(range(5))) # In Range By Default range(0,variable,1)
print(list(range(0,5)))
print(list(range(0,5,1)))  #  3rd argument in range function is diff between start and stop to print each Number

print(list(range(0,20,2)))

print(list(range(20,3,-1)))  # Descending order of range functions

print(list(range(-2,-20,-1))) # Aescending order of range functions in Minus value

x = [3,9,7,0,9,5,4,0]

for i in range(len(x)):
    print(f'Index of {i}---->value is {x[i]}')