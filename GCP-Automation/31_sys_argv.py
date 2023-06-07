import sys

if len(sys.argv) != 3:
   print(f"Usage of the script requires {sys.arg[0]} <Your String> <lower|upper|title>")
   sys.quit()

user_string = sys.argv[1]

user_action = sys.argv[2]


if user_action == 'lower':
    print(user_string.lower())
elif user_action == 'upper':
    print(user_string.upper())
elif user_action == 'title':
    print(user_string.title())
else:
    print('This script requires 2 arguments 1st "String" for consversion and 2nd for type of conversion')
