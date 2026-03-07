.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale
push.d 0.2
pop.v.d self.image_speed
pushi.e -5
pushi.e 493
push.v [array]global.flag
pushi.e 12
cmp.i.v GTE
bf [2]

:[1]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [14]

:[4]
pushbltn.v self.room
pushi.e 219
cmp.i.v EQ
bf [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
pushbltn.v self.room
pushi.e 232
cmp.i.v EQ
bf [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
pushbltn.v self.room
pushi.e 231
cmp.i.v EQ
bf [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
pushbltn.v self.room
pushi.e 216
cmp.i.v EQ
bf [12]

:[11]
call.i instance_destroy(argc=0)
popz.v

:[12]
pushbltn.v self.room
pushi.e 235
cmp.i.v EQ
bf [14]

:[13]
call.i instance_destroy(argc=0)
popz.v

:[14]
pushbltn.v self.room
pushi.e 131
cmp.i.v EQ
bf [end]

:[15]
call.i scr_murderlv(argc=0)
pushi.e 11
cmp.i.v LT
bt [18]

:[16]
pushi.e -5
pushi.e 27
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bt [18]

:[17]
pushglb.v global.plot
pushi.e 119
cmp.i.v GT
b [19]

:[18]
push.e 1

:[19]
bf [end]

:[20]
call.i instance_destroy(argc=0)
popz.v

:[end]