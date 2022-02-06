def getval(varname, localdic, globaldic) :
    dic = {}
    dic.update(localdic)        # marge local
    dic.update(globaldic)       # marge global
    if varname in dic :
        return dic[varname]
    else :
        return None

a = 100
print(getval('a', locals(), globals()))
def foo() :
    l = 2
    print(getval('l', locals(), globals()))
    print(getval('x', locals(), globals()))
foo()
