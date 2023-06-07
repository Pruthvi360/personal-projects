# Loop control Mechanism

'''
1. break
2. continue
3. pass
'''

x = [1,2,4,5,6,5,23,7,2,3]

for i in x:
    print(i)
    if i == 23:
        break
 
print("---------------------------------------------------------------------")

cnt = 0

while True:
    print(x)
    cnt=cnt+1
    if cnt == 10:
        break

print("---------------------------------------------------------------------")

   
path = ['usr/local/bin', 'usr/bin/http', '/home/users/log.txt']

for i in path:
    print(i)
    if 'http' in i:
        break

# Continue control
print("---------------------------------------------------------------------")

    
for i in range(0,21):
    if i == 12:
        continue
        print("Continue loop Break mechanism is will skip this line")
    print(i)
print("---------------------------------------------------------------------")

# Pass control

for i in range(0,100):
    pass                        # pass control to avoid Error of the for loop

        