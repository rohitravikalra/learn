import sys
import os

variable = 'Hello world!'

print(variable)
print(len(sys.argv))

argument_length = 1
while (argument_length < len(sys.argv)):
  os.system('dir')
  os.system('mkdir ' + sys.argv[argument_length])
  os.system('dir')
  argument_length += 1

print('all done!')