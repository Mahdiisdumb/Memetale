.localvar 0 arguments

:[0]
push.v 1575.time
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
pop.v.v self.hspeed
push.v self.r
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v 1575.time
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
neg.v
pushi.e 4
mul.i.v
pop.v.v self.hspeed

:[2]
push.v self.h
pushi.e 1
add.i.v
pop.v.v self.h

:[end]