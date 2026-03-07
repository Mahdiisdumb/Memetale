.localvar 0 arguments

:[0]
push.v self.move
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=2)
pop.v.v self.hspeed
push.v 361.turnamt
pushi.e 10
cmp.i.v EQ
bf [3]

:[2]
push.d 1.5
conv.d.v
push.d -1.5
conv.d.v
call.i choose(argc=2)
pop.v.v self.hspeed

:[3]
push.v 361.turnamt
pushi.e 16
cmp.i.v EQ
bf [end]

:[4]
push.d 1.5
conv.d.v
push.d -1.5
conv.d.v
call.i choose(argc=2)
pop.v.v self.hspeed

:[end]