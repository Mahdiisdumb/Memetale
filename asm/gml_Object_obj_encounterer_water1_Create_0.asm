.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.alldead
pushi.e 0
pop.v.i global.encounter
pushi.e 360
pop.v.i self.factor
pushi.e 0
pop.v.i self.desto
pushbltn.v self.room
pushi.e 90
cmp.i.v EQ
bf [2]

:[1]
pushi.e 110
pop.v.i self.factor

:[2]
pushbltn.v self.room
pushi.e 88
cmp.i.v EQ
bf [4]

:[3]
pushi.e 340
pop.v.i self.factor

:[4]
pushbltn.v self.room
pushi.e 88
cmp.i.v EQ
bf [7]

:[5]
pushi.e -5
pushi.e 357
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushglb.v global.entrance
pushi.e 1
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 20
pop.v.i self.factor
pushi.e 1
pop.v.i self.desto

:[10]
pushi.e 204
conv.i.v
pushi.e 18
conv.i.v
pushi.e 30
conv.i.v
push.v self.factor
pushi.e 105
conv.i.v
call.i script_execute(argc=5)
popz.v
pushi.e -5
pushi.e 204
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
pushglb.v global.plot
pushi.e 121
cmp.i.v GT
b [13]

:[12]
push.e 0

:[13]
bf [end]

:[14]
call.i instance_destroy(argc=0)
popz.v

:[end]