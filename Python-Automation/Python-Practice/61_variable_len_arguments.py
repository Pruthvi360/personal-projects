def variable(*arg):
    print(type(arg),arg)
    for each in arg:
        print(type(each),each)
        
variable()
variable('pruthvi', 'is', 'learning' ,'python',1,4563,345)