# This file practice of the list tuples and dict

# LIST

list = [1,9,6,3,4,2,'python']

for i in list:
    print(i)
    
print("--------------------------------")       
    
for i in list:
    if list.index(i) == 4:
        print(i)
        
print("--------------------------------")  
        
list_tuple = [(2,4),(3,5),('fruit','orange'),(1,3)]

print(list_tuple[0])

print("--------------------------------")  

l_t = [(2,4),(3,5),('fruit','orange'),(1,3)]

for i in l_t:
    x,y = i
    print(f'This is the first value in tuple : {x}')
    print('------------')
    print(f'This is the second value in tuple : {y}')
    print('------------')
    
print("--------------------------------")  

# Dict

dict = {'fruit': 'orange', 'vegetable': 'tomato', 'python': 'scripting'}

for i in dict.keys():
    print(f'\"This is the Keys in dict\" : {i} ')
    
print("--------------------------------")
    
for i in dict.values():
    print(f'\"This is the \'Values\' in dict\" : {i} ')
    
print("--------------------------------")
    
for i in dict.items():
    print(i[1])



