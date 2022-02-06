def Counter() :
    count = 0

    def increment() :
        nonlocal count
        count += 1
    
    def reset() :
        nonlocal count
        count = 0
    
    def get() :
        nonlocal count
        return count

    return {
        "increment" : increment,
        "reset" : reset,
        "get" : get
        }

ctr = Counter()
ctr['increment']()
ctr['increment']()
ctr['increment']()
ctr['increment']()
print(ctr['get']())
ctr['reset']()
print(ctr['get']())