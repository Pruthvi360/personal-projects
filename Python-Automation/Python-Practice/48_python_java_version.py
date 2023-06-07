import subprocess

cmd = 'java --version'

sp = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE, universal_newlines=True)

rc = sp.wait()

o,e = sp.communicate()


if rc == 0:
    for each in o.splitlines():
        if 'openjdk' in each:
            java_ver = each.split()[1]
            print(f'This is your java version : {java_ver}')
else:
    print(e)