.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.phase
pushi.e 0
pop.v.i self.plotrating
pushi.e 1
pop.v.i self.scale
pushbltn.v self.room
pushi.e 24
cmp.i.v EQ
bf [2]

:[1]
pushi.e 13
pop.v.i self.plotrating

:[2]
pushbltn.v self.room
pushi.e 25
cmp.i.v EQ
bf [4]

:[3]
pushi.e 14
pop.v.i self.plotrating
pushi.e 0
pop.v.i self.scale

:[4]
pushbltn.v self.room
pushi.e 26
cmp.i.v EQ
bf [6]

:[5]
pushi.e 15
pop.v.i self.plotrating

:[6]
pushbltn.v self.room
pushi.e 57
cmp.i.v EQ
bf [8]

:[7]
pushi.e 48
pop.v.i self.plotrating

:[8]
pushbltn.v self.room
pushi.e 58
cmp.i.v EQ
bf [10]

:[9]
pushi.e 52
pop.v.i self.plotrating

:[10]
pushbltn.v self.room
pushi.e 59
cmp.i.v EQ
bf [12]

:[11]
pushi.e 55
pop.v.i self.plotrating

:[12]
push.v self.scale
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
pushi.e 400
pop.v.i self.image_yscale

:[14]
push.v self.scale
pushi.e 0
cmp.i.v EQ
bf [16]

:[15]
pushi.e 400
pop.v.i self.image_xscale

:[16]
pushglb.v global.plot
push.v self.plotrating
cmp.v.v GT
bf [end]

:[17]
call.i instance_destroy(argc=0)
popz.v

:[end]