.localvar 0 arguments

:[0]
push.v self.lock
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v 744.jumpstage
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 2
pop.v.i 744.jumpstage
pushi.e 0
pop.v.i 744.vspeed

:[5]
pushi.e 0
pop.v.i self.lock

:[end]