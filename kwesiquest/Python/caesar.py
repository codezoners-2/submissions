from __future__ import print_function
from string import ascii_letters as al

def encrypt(message, shift):
    result = []
    capitals = len(al) / 2
    is_string = False
    if isinstance(message, (basestring)):
        is_string = True
        message = [message]
    for line in message:
        processed = ""
        for character in line:
            i = al.find(character)
            if i > -1:
                j = (i + shift) % capitals
                processed += al[j] if i < capitals else al[j + capitals]
            elif i == -1:
                processed += character
        result.append(processed)
    return result if not is_string else result[0]
    
def main():
    secretMessage = "Help me Obi Wan Kenobi, you're my only hope!"
    secretList = ["Line 1", "Line 2", "Line 3"]
    print(secretMessage)
    print(encrypt(secretMessage, 1))
    print(encrypt((encrypt(secretMessage, 1)), -1))
    print()
    print(*(line for line in secretList), sep="\n")
    print("--------------------------------------------")
    print(*(encrypt(line, 1) for line in secretList), sep="\n")

if __name__ == '__main__':
    main()
