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
push.v self.sprite_index
pop.v.v self.dtsprite
push.v self.sprite_index
pop.v.v self.utsprite
push.v self.sprite_index
pop.v.v self.ltsprite
push.v self.sprite_index
pop.v.v self.rtsprite
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.facing
pushi.e 270
pop.v.i self.direction
pushi.e 0
pop.v.i self.talkedto
pushi.e 0
pop.v.i self.image_speed
pushi.e -5
pushi.e 55
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]