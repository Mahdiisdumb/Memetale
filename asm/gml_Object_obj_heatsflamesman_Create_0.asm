.localvar 0 arguments

:[0]
pushi.e 1307
pop.v.i self.dsprite
pushi.e 1307
pop.v.i self.usprite
pushi.e 1307
pop.v.i self.lsprite
pushi.e 1307
pop.v.i self.rsprite
pushi.e 1307
pop.v.i self.dtsprite
pushi.e 1307
pop.v.i self.utsprite
pushi.e 1307
pop.v.i self.ltsprite
pushi.e 1307
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
pushi.e 434
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
pushi.e 2078
pop.v.i self.sprite_index

:[2]
pushbltn.v self.room
pushi.e 157
cmp.i.v EQ
bf [4]

:[3]
pushglb.v global.plot
pushi.e 166
cmp.i.v GTE
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
pushi.e 12
cmp.i.v GTE
bf [9]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[9]
pushi.e -5
pushi.e 425
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[10]
call.i instance_destroy(argc=0)
popz.v

:[end]