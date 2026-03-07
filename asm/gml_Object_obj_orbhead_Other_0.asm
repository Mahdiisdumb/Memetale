.localvar 0 arguments

:[0]
push.v self.onhead
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.y
pushi.e 0
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 10
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 2
pop.v.i self.onhead

:[end]