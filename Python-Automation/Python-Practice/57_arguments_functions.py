# In this we learn about positional arguments or parameter and Arguments
def main():
    a = eval(input('Enter you 1st value: '))
    b = eval(input('Enter your 2nd value: '))
    add_argument(a,b)
    sub_argument(a,b)
    mul_argument(a,b)
    div_argument(a,b)   # a & b are arguments

def add_argument(x,y):   # x & y are Positional arguments OR parameters
    add = x + y
    print(f'Addition of {x} and {y} is : {add}')

def sub_argument(a,b):
    sub = a - b
    print(f'Substration of {a} and {b} is : {sub}')

def mul_argument(a,b):
    mult = a*b
    print(f'Multiplication of {a} and {b} is : {mult}')

def div_argument(a,b):
    div = a/b
    print(f'Division of {a} and {b} is : {div}')
        
main()