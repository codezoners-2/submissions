from random import choice as randomly_pick

# STEP 2
def fileToString(filename):
    """
    >>> print(fileToString('testRead.txt'))
    one
    two
    """
    f = open(filename, 'r')
    lines = f.read()
    f.close()
    return lines.strip()
    
# STEP 3
def fileToDict(filename):
    """
    >>> fileToDict('testDict.txt') == {'student_name': 'Robert', 'teacher_name':'Smith'}
    True
    """
    string = fileToString(filename)
    result = {}
    for line in string.strip().split("\n"):
        item = line.split(":")
        result[item[0]] = randomly_pick(item[1].strip().split())
    return result

def main():
    # STEP 4
    template = fileToString("excuseTemplate.txt")
    simpleDataDict = fileToDict("simpleData.txt")
    simpleFinalText = template.format(**simpleDataDict)
    
    # STEP 5
    bootstrap = fileToString("bootstrap.html")
    simpleResult = bootstrap.format(customText=simpleFinalText)
    
    f = open('excuse.html', 'w')
    f.write(simpleResult)
    f.close()
    
    # BONUS STEP
    complexDataDict = fileToDict("complexData.txt")
    complexFinalText = template.format(**complexDataDict)
    
    complexResult = bootstrap.format(customText=complexFinalText)
    
    g = open('complexExcuse.html', 'w')
    g.write(complexResult)
    g.close()

if __name__ == "__main__":
    main()
