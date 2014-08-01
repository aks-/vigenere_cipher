#usage: python vigenere.py '+' 'key' 'text'
import sys
import operator
ops = { "+": operator.add, "-": operator.sub }

ALPHABETS = string.ascii_uppercase
SIZE = len(ALPHABETS)
START = ord('A')


def crypt(text, key, func):
    if func == '+':
        #do encryption
    elif func == '-':
        #do decryption
    else:
        raise IllegalError, 'Use + as second arument for encryption and - for decryption'


operator = sys.argv[1]
key = sys.argv[2]
text = sys.argv[3]








