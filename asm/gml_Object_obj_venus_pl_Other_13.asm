.localvar 0 arguments

:[0]
push.v self.boss
conv.v.i
pushenv [3]

:[1]
push.v self.reach2
pushi.e 29
cmp.i.v LT
bf [3]

:[2]
push.v self.reach2
push.d 0.5
add.d.v
pop.v.v self.reach2

:[3]
popenv [1]

:[end]