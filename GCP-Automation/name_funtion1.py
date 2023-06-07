# __name__ is __main__ 
import functionscript2 as sc2

# print('This output is from script-1 :',__name__)

def multi(x,y):
    print(f'This the Multiplication of {x} and {y} is : {x*y}')
    
def main():
    x = eval(input('Enter 1st num :'))
    y = eval(input('Enter 2nd num :'))
    sc2.add(x,y)
    sc2.sub(x,y)
    multi(x,y)
    return None

if __name__ == '__main__':
    main()