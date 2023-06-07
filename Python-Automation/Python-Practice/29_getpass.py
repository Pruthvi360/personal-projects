import getpass

# print(dir(getpass))

getusername = getpass.getuser()
getpass = getpass.getpass(prompt='Enter your password : ')

print(getusername)
print(getpass)