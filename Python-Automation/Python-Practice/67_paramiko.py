import paramiko as pa

fo = open('commands.txt', 'r')
data = fo.readlines()
print(data)
fo.close()

def main(host, port, username, password, key_filename):
    ssh = pa.SSHClient()
    ssh.set_missing_host_key_policy(pa.AutoAddPolicy)
    ssh.connect(hostname=host, username=username, password=password, port=port)
    
    for each in data:
        cmd = each.strip()
        stdin, stdout, stderr = ssh.exec_command(cmd)
        print(f'This the output of the command : {cmd}')
        print(stdout.readlines())
        print(f'This the Error of the command : {cmd}')
        print(stderr.readlines())

if __name__ == '__main__':
    main(host='192.168.0.1', username='paramiko', password='paramiko123',key_filename='/home/automation/.ssh/id_rsa', port=22)
