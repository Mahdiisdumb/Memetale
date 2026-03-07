.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.die
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [3]

:[2]
pushi.e 50
conv.i.v
call.i random(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.point
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushi.e 0
pop.v.i self.off
pushi.e 0
pop.v.i self.tough

:[end]