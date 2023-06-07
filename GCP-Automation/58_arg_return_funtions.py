def add(a,b):
    add = a+b
    return add
  
def sub(a,b):
    sub = a-b
    return sub
      
def main():
    a = eval(input('Enter 1st number:'))
    b = eval(input('Enter 2nd number:'))
    add_result = add(a,b)
    print(f'This a addition funtion result : {add_result}')
    sub_result = sub(a,b)
    print(f'This a addition funtion result : {sub_result}')
    return None

main()