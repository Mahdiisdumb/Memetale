.localvar 0 arguments

:[0]
pushbltn.v self.room
pushi.e 88
cmp.i.v EQ
bf [3]

:[1]
pushglb.v global.plot
pushi.e 106
cmp.i.v GT
bf [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
pushbltn.v self.room
pushi.e 131
cmp.i.v EQ
bf [5]

:[4]
pushglb.v global.plot
pushi.e 118
cmp.i.v GT
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
pushbltn.v self.room
pushi.e 131
cmp.i.v EQ
bf [10]

:[9]
pushi.e 10
pop.v.i self.image_yscale

:[10]
pushbltn.v self.room
pushi.e 116
cmp.i.v EQ
bf [12]

:[11]
pushi.e 20
pop.v.i self.image_yscale

:[12]
pushbltn.v self.room
pushi.e 154
cmp.i.v EQ
bf [14]

:[13]
pushi.e 5
pop.v.i self.image_yscale

:[14]
pushbltn.v self.room
pushi.e 154
cmp.i.v EQ
bf [16]

:[15]
pushglb.v global.plot
pushi.e 134
cmp.i.v GT
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
call.i instance_destroy(argc=0)
popz.v

:[19]
pushi.e 0
pop.v.i self.con

:[end]