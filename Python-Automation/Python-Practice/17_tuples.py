# tuples are immutable

# tuples doesn't support items assignment inside the tuple object

# tuple[1] = 30 this is not supported

tuple = 1,1,1
booltuple = ()

print(type(tuple),tuple)

tuple1 = (1,2,3)

print(type(tuple),tuple)

print(bool(booltuple)) # Empty tuples are always False in boolen

print(bool(tuple)) # non-empty tuples are always True in boolen


tuple3 = (1,34,['pruthvi','python'],3,5)

print(tuple3) # list inside tuples

print(tuple3[2]) # extra list inside tuples

print(tuple3[2][1]) # extra element inside the lists of tuples

print(tuple1.index(2,1))

print(tuple.count(1))

print(len(tuple)) # find out the length of the tuple

print(tuple1[0:])

print(tuple1[:])