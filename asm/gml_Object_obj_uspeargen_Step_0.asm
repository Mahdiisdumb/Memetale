.localvar 0 arguments

:[0]
pushglb.v global.interact
pushi.e 0
cmp.i.v NEQ
bf [end]

:[1]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.alarm
pushi.e 1
add.i.v
pop.i.v [array]self.alarm

:[end]