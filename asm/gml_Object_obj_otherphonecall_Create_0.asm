.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e -5
pushi.e 277
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
pushi.e 0
pop.v.i self.type
pushi.e -5
pushi.e 5
push.v [array]global.flag
pushi.e 40
cmp.i.v GTE
bf [6]

:[5]
pushi.e -5
pushi.e 5
push.v [array]global.flag
pushi.e 45
cmp.i.v LTE
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
pushi.e 1
pop.v.i self.type

:[9]
pushi.e -5
pushi.e 5
push.v [array]global.flag
pushi.e 45
cmp.i.v GT
bf [11]

:[10]
pushi.e -5
pushi.e 5
push.v [array]global.flag
pushi.e 50
cmp.i.v LTE
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushi.e 2
pop.v.i self.type

:[14]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pop.v.v self.type

:[16]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [18]

:[17]
call.i instance_destroy(argc=0)
popz.v

:[18]
pushglb.v global.plot
pushi.e 120
cmp.i.v GTE
bf [end]

:[19]
call.i instance_destroy(argc=0)
popz.v

:[end]