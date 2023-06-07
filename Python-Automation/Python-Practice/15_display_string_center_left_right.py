import os
colomns = os.get_terminal_size().columns


given_str=input("Enter you String here: ")

print(given_str)

# To display the sentence in the center identify the coloums in window
# Run "mode" command to identify the coloums in window 
print(given_str.center(131))

print(given_str.ljust(131))

print(given_str.rjust(131))


# Using OS python to identify the coloums in window 

print(given_str.center(colomns).upper())

print(given_str.ljust(colomns).lower())

print(given_str.rjust(colomns).swapcase())