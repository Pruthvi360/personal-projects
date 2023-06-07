"""
Option for conversion of string

Upper = all letter in UPPER
Lower = all letter in LOWER
Title = First letter of the word in Capital
len = find the length of the string

"""


my_str="Python"
my_str1="Scripting"
translate="PRUTHVI"

print(my_str.upper())
print(my_str1.lower())

final = f'{my_str.upper()} {my_str1.lower()}'

print(final)

# Below step we can identify the option available 

x="hello"
print(dir(x))

final = f'{my_str} {my_str1}'

print(final)

print(final.upper())

print(final.lower())

print(final.title())

print(final.capitalize())

print(final.__len__())

print(final.casefold())

print(final.__hash__())

print(final.__iter__())

print(final.__sizeof__())

print(final.isdigit())

print(final.swapcase())

"""
print(final.translate(translate))

print(final.zfill(5))
"""

print(final.join(translate))

print(final.split())

print(final.strip())

print(final.isprintable())

print(final.isidentifier())

print(final[1])



