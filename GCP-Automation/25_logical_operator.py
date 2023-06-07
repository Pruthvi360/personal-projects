# Logical operators are 
'''
and & all[1,2,3,4,5]
or & any[1,2,3,4,5]
not any[1,2,4,5,7,6] 
'''

x = [1,2,4,.5,4,5,2,8]

#print(x)

if .5 in x and 1 not in x:
    print(f'in {x} the Number \'0.5\' is there but 1 is not there')
elif 1 in x or 3 in x:
    print(f'in {x} the Number \'1\' is there but \'3\' is not there')
else:
    print(f'Number is not list in {x}')