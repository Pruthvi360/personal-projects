'''
num = eval(input('Enter you number which you want to convert :'))

if num == 1:
    print('One')
elif num == 2:
    print('Two')
elif num == 3:
    print('Three')
elif num == 4:
    print('Four')
elif num == 5:
    print('Five')
elif num == 6:
    print('Six')
elif num == 7:
    print('Seven')
elif num == 8:
    print('Eight')
elif num == 9:
    print('Nine')
elif num == 10:
    print('Ten')
else:
    print('Invalid number')    
'''

num=eval(input('Enter your number:'))

list = {1: 'one', 2: 'two', 3: 'three', 4: 'four', 5: 'five', 6: 'six', 7:'seven', 8: 'eight', 9: 'nine', 10: 'ten'}

n_list=[1,2,3,4,5,6,7,8,9,10]

if num in n_list:
    print(f'this is you number conversion :  {list.get(num)}')
else:
    print('Your number is not an integer or out of range')
  