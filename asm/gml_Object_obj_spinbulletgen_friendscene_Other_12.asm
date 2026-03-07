.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
push.v self.amt
cmp.v.v LT
bf [3]

:[2]
pushi.e 12
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.sidebl
conv.v.i
pop.v.i [stacktop]self.hspeed
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushi.e 6
pushi.e -1
pushi.e 9
pop.v.i [array]self.alarm

:[end]