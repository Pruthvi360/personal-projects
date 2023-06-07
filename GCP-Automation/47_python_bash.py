import subprocess

cmd = ['bash', '--version']

sp = subprocess.Popen(cmd,shell=False,stdout=subprocess.PIPE,stderr=subprocess.PIPE,universal_newlines=True)

rc = sp.wait()

o,e= sp.communicate()

if rc == 0:
    out = o.splitlines()
    for each_line in out:
        if 'version' in each_line and 'release' in each_line:
            bash_version = each_line.split()[3].split('(')[0]
            print(f'This is your Bash Version : {bash_version}')
else:
    print(e)
