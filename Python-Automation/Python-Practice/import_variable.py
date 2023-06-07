# List are muteable

my_list=[3,5,4,5,7,5,4,5,7,1,3,4,6,8,4,6,5,3,1,'python','scripting']
my_empty_list=[]
print(my_list)

print(my_list[4])

print(bool(my_list))

print(bool(my_empty_list))

print(my_list[:])

print(my_list[1:])

print(my_list[:-1])

print(my_list[5:14])

print(my_list[-14:-5])

print(dir(my_list))

print(my_list.index(5,2))

print(my_list.count(5))

my_new_list=my_list
my_copy_list=my_list.copy()

print(id(my_new_list),my_new_list,id(my_copy_list),my_copy_list,id(my_list),my_list)


my_list_1=my_list[-1]

print(my_list_1)

my_list.append(my_list_1)

my_list.insert(1,'pruthvi') # 1 is a index and pruthvi is value to get inserted

my_list.insert(10,my_list_1) 
print(my_list)

list=['new','learning']

my_list.append(list)  # append the exact same list which is there in new variable

my_list.extend(list)  # extend will only add the values of the new variable to existing variable

#my_list.extend('extended') # extend in string will break every letter in the string to single value
print(my_list)

print(my_list.pop()) # by default pop will remove the last element

print(my_list.pop(1)) # indexing the 1 value element int he list removed

print(my_list)

my_list.remove('scripting')

print(my_list)

index = my_list.index('python')

num = my_list[:index]

print(num)


num.sort()  # ascending order

print(num)

num.reverse() # reverse

print(num)

num.sort(reverse=False) # reverse

print(num)


