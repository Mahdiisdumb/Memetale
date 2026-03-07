.localvar 0 arguments

:[0]
push.v self.x
push.v self.xstart
pushi.e 8
add.i.v
cmp.v.v GT
bf [2]

:[1]
pushi.e -1
pop.v.i self.hspeed
b [3]

:[2]
pushi.e 1
pop.v.i self.hspeed

:[3]
pushi.e 239
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [5]

:[4]
push.v self.hspeed
pop.v.v 239.hspeed

:[5]
pushi.e 8
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[end]