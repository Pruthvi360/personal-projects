import subprocess

ip_range = input("Enter your IP Range to check Example = 192.168.0.  :  ")

cnt = input("Enter you ping count : ")

pingableip = open('ip_list.txt', "w")

data = str(f"This is a pingable ip address in this range: {ip_range}254\n")

pingableip.write(data)

pingableip.close()


for ping in range(1,254):
        address = ip_range+ str(ping)
        cmd = f"ping {address} -c {cnt}"
        print(cmd)
    
        sp = subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE ,stderr=subprocess.PIPE,universal_newlines=True)
    
        rc=sp.wait() # this will status of extection processs
        output,Error=sp.communicate()
        for o in output.splitlines():
            if 'received' in o:
                validation = int(o.split(' ')[3])
                if validation !=0:
                    data1 = f"ping to {address} Successfull"
                    pingableip = open('ip_list.txt', "a")
                    pingableip.write(data1+'\n')
                    pingableip.close()
        if rc !=0:
            print(f'This is an error output : This IP {address} is not pingable {Error}')   
                
          

    
