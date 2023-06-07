# If you import this file directly and run it will print as __name__ == funtionsscript2
import name_funtion1 as sc1

#print('This output form script2 :' , __name__)

def add(x,y):
    print(f'The addtion of {x} and {y} is :{x+y}')
    return None
    
def sub(x,y):
    print(f'This subtraction of {x} and {y} is : {x-y}')
    return None

def main():
    x = eval(input('1st num : '))
    y = eval(input('2nd num : '))
    add(x,y)
    sub(x,y)
    sc1.multi(x,y)
if __name__=='__main__':
    main()   
