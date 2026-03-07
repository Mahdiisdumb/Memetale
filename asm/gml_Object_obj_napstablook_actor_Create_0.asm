.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_depth(argc=5)
popz.v
pushi.e 1217
pop.v.i self.dsprite
pushi.e 1219
pop.v.i self.usprite
pushi.e 1214
pop.v.i self.lsprite
pushi.e 1215
pop.v.i self.rsprite
pushi.e 1217
pop.v.i self.dtsprite
pushi.e 1219
pop.v.i self.utsprite
pushi.e 1214
pop.v.i self.ltsprite
pushi.e 1215
pop.v.i self.rtsprite
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.facing
pushi.e 90
pop.v.i self.direction
pushi.e 0
pop.v.i self.talkedto
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.fun
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 270
pop.v.i self.direction
pushi.e 1360
conv.i.v
pushi.e 122
conv.i.v
pushi.e 216
conv.i.v
call.i instance_create(argc=3)
popz.v

:[2]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushbltn.v self.room
pushi.e 119
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
call.i scr_murderlv(argc=0)
pushi.e 10
cmp.i.v GTE
bf [end]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[end]