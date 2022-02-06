class Counter :
    c = 0

    def increment(self) :
        self.c += 1
    def reset(self):
        self.c = 0
    def get(self) :
        return self.c

n = Counter()
n.increment()
print(n.get())
n.increment()
n.increment()
n.increment()
print(n.get())
n.reset()
print(n.get())
