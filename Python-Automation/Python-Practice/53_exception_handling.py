# There are 2 types of Error in python
'''
1. syntax error
2. Runtime error

** Exception can handeled by using 'try' & 'except' statement**
Note: We can only handle Runtime errors not syntax errors

Type of Errors:
1. Index Error
2. ZeroDivisionError
3. ImportError
4. TypeError
5. ValueError
5. NameError
6. FileNotFoundError
7. IOError
'''


try:
    a=1
    print(a)
    #import instagramapi
    #x = 'python'+33
    #op = open('try.txt', 'r')
    #v = 4/0
    

except NameError:
    print('Error: Variable is not defined')
except FileNotFoundError:
    print('Error: File not found')
except TypeError:
    print('Error: Adding Number and string Not possible')
except ZeroDivisionError:
    print('Error: Division by zero is not possible')
except ImportError:
    print('Error: Please import the module first')   
except Exception as e:
    print(e)
else:
    print('This will only execute if try block is successful\nThis will be written after the exception is handling') 
finally:
    print('You have successfully learned Exception handling') # This will be executed even if 'TRY' and 'EXCEPT'  is failed.