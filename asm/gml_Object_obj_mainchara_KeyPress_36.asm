.localvar 0 arguments

:[0]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 57
push.v self.nnn
add.v.i
pop.v.v global.battlegroup
pushi.e 0
pop.v.i global.border
pushi.e 141
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushglb.v global.plot
pushi.e 998
cmp.i.v EQ
bf [end]

:[2]
pushi.e 0
pushi.e -5
pushi.e 10
pop.v.i [array]global.flag
pushi.e 0
pushi.e -5
pushi.e 11
pop.v.i [array]global.flag
pushi.e 0
pushi.e -5
pushi.e 12
pop.v.i [array]global.flag
pushi.e 0
pushi.e -5
pushi.e 13
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.entrance
pushi.e 82
pop.v.i global.battlegroup
pushi.e -600
pop.v.i 1576.depth
pushi.e 143
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [end]

:[3]
pushi.e 143
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[end]