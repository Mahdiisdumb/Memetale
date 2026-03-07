.localvar 0 arguments

:[0]
pushbltn.v self.room
pushi.e 8
cmp.i.v EQ
bf [2]

:[1]
pushglb.v global.plot
pushi.e 4
cmp.i.v GTE
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
pushglb.v global.plot
push.d 5.5
cmp.d.v GTE
bf [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
pushi.e 270
pop.v.i self.direction

:[end]