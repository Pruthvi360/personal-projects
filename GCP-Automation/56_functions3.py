def function1():
    global x
    x = 10
    print(f'Defined variable {x} is global can acess every where in the script')
    
    return None

def function2(p): # getting "p" value from main "Z" variable from "main" function
    y = 1000
    print(f'Defined variable {y} is local variable\n \'x\' is : {x} global can acess every where in the script')
    print(f'Importing variable from other function{p}')
    
def main():
    function1()  # calling function inside the function
    z = 'import variable 2'
    function2(z)      # "Argument" This variable is taken and placed in another function
    return None

main() # Entery point in the script 
