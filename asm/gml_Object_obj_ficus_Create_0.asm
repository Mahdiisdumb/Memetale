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
pushbltn.v self.room
pushi.e 183
cmp.i.v EQ
bf [end]

:[1]
pushi.e 2071
pop.v.i self.sprite_index

:[end]