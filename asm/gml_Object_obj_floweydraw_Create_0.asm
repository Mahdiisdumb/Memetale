.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i global.inbattle
pushglb.v global.kills
pushi.e -5
pushi.e 201
pop.v.v [array]global.flag
pushbltn.v self.room
pushi.e 308
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1
pop.v.i global.border

:[end]