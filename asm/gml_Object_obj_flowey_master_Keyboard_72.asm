.localvar 0 arguments

:[0]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.htest
pushi.e 1
add.i.v
pop.v.v self.htest
push.v self.htest
pushi.e 2
cmp.i.v GT
bf [end]

:[2]
pushi.e 1635
conv.i.v
pushi.e 200
pushi.e 280
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i self.htest

:[end]