.localvar 0 arguments

:[0]
push.d 0.3
push.d 0.1
conv.d.v
call.i random(argc=1)
add.v.d
pop.v.v self.gravity
push.v self.x
pushi.e 300
cmp.i.v LT
bf [2]

:[1]
pushi.e 2
pop.v.i self.aa
pushi.e -2
pop.v.i self.hspeed
b [end]

:[2]
pushi.e -2
pop.v.i self.aa
pushi.e 2
pop.v.i self.hspeed

:[end]