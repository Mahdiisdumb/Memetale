.localvar 0 arguments

:[0]
pushbltn.v self.room
pushi.e 5
cmp.i.v EQ
bf [3]

:[1]
pushglb.v global.plot
pushi.e 0
cmp.i.v NEQ
bf [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
pushbltn.v self.room
pushi.e 43
cmp.i.v EQ
bf [6]

:[4]
pushglb.v global.plot
pushi.e 27
cmp.i.v GT
bf [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
pushi.e 0
pop.v.i self.image_speed

:[end]