my_dict={}

print(type(my_dict))

dict = {'ios':''}

print(dict)

dict = {'ios':'XE','nexus':1000, 'isr':4000}

print(dict['ios'])

print(dir(dict))

print(dict.get('isr'))

# print(dict['ASR']) # it will throw Error if specified key is not there

print(dict.get('ASR'))

#print(dict.clear()) # clear the dictionary

print(dict)

dict['ASR']=1000  # this create a new key value pair inside the dictionary

print(dict)

dict['ASR']=4000

print(dict)

print(dict.keys())

print(dict.values())

new_dict = dict.copy()

print(new_dict)

new_dict1 = {'vManage' : 20.1, 'vBond' : 20.1, 'vSmart': 20.1, 'vEdge': 20.1, 'cEdge': '8000k'}

dict.update(new_dict1)

print(dict)

dict.pop('ios')

print(dict)

remove = dict.popitem()
print(remove)
print(dict)



keys=['a','e','i','o','u']

list_to_dict = dict.fromkeys(keys)

print(list_to_dict)

list_to_dict['a']='alpha'

print(list_to_dict)

list_to_dict['a','b']='alphabet','2nd alphabet','3rd alphabet'

print(list_to_dict)

list_to_dict['e']='beta'

print(list_to_dict)

setdefault = {'fruit' : 'orange'}

print(setdefault)

setdefault.setdefault('vegetable','tomato') # updating the new key value pair

print(setdefault)

setdefault.setdefault('vegetable','potato') # only if key is not there it will applicable to add key and value 

print(setdefault)