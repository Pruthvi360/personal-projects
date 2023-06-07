'''
The regex is a procedure in any language that to look for a specified pattern in a given text.

re is the module to perform the search regex in python. ( user import re in scripts)

There are different types of operations in re like:
    >>>>>>>>>>>> ----- search, match, finditer, findall, split, sub etc.......
---> Syntax :
1. re.search(pattern,text)
2. re.findall(pattern,text)
3. re.match(pattern,text)
4. re.finditer(pattern,text)
5. re.split(pattern,text)

IMP : Pattern is a sequence of characters, which represents multiple strings

Examples :
1. "python"
2. "Python[23]" ------->> "Python2" "python3"
'''

import re

text = "Python is a scripting lanunage and it is every @ is to learn"

#pattern = "is"
#pattern = 'i[st]' # This will search for 'is' 'it'
#pattern = '[a-z]'
#pattern = '[p]'
#pattern = '[a-d]'
#pattern = '[A-Z]'
#pattern = '[0-9]'   
#pattern = '\w\w\w'  # This take possible 3 letters string # Matches any single letter, digit or underscore
#pattern = '\W' # Matches any character not part of \w, It will count except characters
#pattern = '\d' # Matches any digits
pattern = '.' # Matches any single character except new line character

print(re.findall(pattern,text), len(re.findall(pattern,text)))
