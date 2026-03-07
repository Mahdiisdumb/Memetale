.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 4
pop.v.i self.image_yscale
pushi.e 1
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.siner
pushi.e 1
pop.v.i self.basic
pushi.e 0
pop.v.i self.canttalk
pushi.e 0
pop.v.i self.disable
pushi.e 0
pop.v.i self.sold
pushglb.v global.plot
pushi.e 185
cmp.i.v GTE
bf [end]

:[1]
pushbltn.v self.room
pushi.e 139
cmp.i.v EQ
bf [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
pushbltn.v self.room
pushi.e 187
cmp.i.v EQ
bf [end]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[end]