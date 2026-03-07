.localvar 0 arguments

:[0]
push.v self.sprite_index
pop.v.v self.dsprite
push.v self.sprite_index
pop.v.v self.usprite
push.v self.sprite_index
pop.v.v self.lsprite
push.v self.sprite_index
pop.v.v self.rsprite
pushi.e 1443
pop.v.i self.dtsprite
pushi.e 1452
pop.v.i self.utsprite
pushi.e 1457
pop.v.i self.ltsprite
pushi.e 1453
pop.v.i self.rtsprite
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.facing
pushi.e 0
pop.v.i self.direction
pushi.e 0
pop.v.i self.talkedto
pushi.e 0
pop.v.i self.image_speed
pushi.e -5
pushi.e 52
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushbltn.v self.room
pushi.e 73
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
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
pushbltn.v self.room
pushi.e 68
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
call.i instance_destroy(argc=0)
popz.v

:[12]
pushi.e 0
pop.v.i self.sansmode

:[end]