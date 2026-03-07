.localvar 0 arguments

:[0]
pushbltn.v self.room
pushi.e 148
cmp.i.v EQ
bf [2]

:[1]
pushglb.v global.plot
pushi.e 132
cmp.i.v GT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
pushbltn.v self.room
pushi.e 171
cmp.i.v EQ
bf [7]

:[6]
pushglb.v global.plot
pushi.e 163
cmp.i.v GT
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
pushi.e 0
pop.v.i self.con
pushi.e 5
pop.v.i self.image_xscale

:[end]