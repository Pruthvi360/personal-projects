# Ascending order of the of unordered elements inside the set 
# Removes duplicate elements inside the sets
# can convert list to sets but while converting list to sets duplicates entries will be removed

list = [8,6,4,9,5,1,2,4,5,7,9,7,5]

sets1 = {2,8,6,0,2,6,1,0,6,5,8,2,3}


print(list)

print(sets1)

list_to_set = set(list) # conversion of lists to sets

print(list_to_set)

print(sets1)

print(sets1.union(list_to_set))

print(sets1.intersection(list_to_set))

print(sets1.difference(list_to_set))

sets1.add(10)

print(sets1)

copy = sets1.copy()
print(copy)

sets1.