import json

path = 'C:\\Users\\HP\\Desktop\Downloads\\ansible-part1\\Json\\Answers\\question.yaml'

js = open(path, 'r')

data = js.read()

print('This type of output is :',type(data),'\n',data,data.encode('utf-8'))

data1 = json.loads(data)

print(type(data1),'\n',data1)

js.close()

print('---------------------------------------------------------------------')

jsw = open('demo.json', 'w')

#json.dump(data1,jsw)  # This will write without indention
json.dump(data1,jsw, indent=3)

jsw.close()

jsr = open('demo.json', 'r')

datar = json.loads(jsr.read())

print(datar)

jsr.close()

