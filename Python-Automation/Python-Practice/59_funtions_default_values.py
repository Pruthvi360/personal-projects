def addition(a,b=9):  # default arguments passed 
    result = a + b
    return result

def multiplication(a=2,b=4):
    result = a * b
    return result

def main():
    result_add = addition(1,2) # This value will be taken to call the function
    print(result_add,'') 
    result_add = addition(1,) # If no value is passed it will take a default value
    print(result_add) 
    result_mult = multiplication(5,5)
    print(result_mult) 
    result_mult = multiplication() # here no value is passed but taken default value specified in funtion
    print(result_mult) 
    return None

main()