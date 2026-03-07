.localvar 0 arguments

:[0]
pushi.e 227
conv.i.v
push.v self.y
push.v self.gg
pushi.e 10
mul.i.v
add.v.v
pushi.e 8
sub.i.v
push.v self.x
pushi.e 72
add.i.v
push.v self.gg
pushi.e 8
mul.i.v
add.v.v
call.i instance_create(argc=3)
pop.v.v self.bl
pushglb.v global.turntimer
pushi.e 33
cmp.i.v GT
bf [end]

:[1]
pushi.e 32
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[end]