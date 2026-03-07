.localvar 0 arguments

:[0]
pushi.e 2055
pop.v.i self.dsprite
pushi.e 2054
pop.v.i self.usprite
pushi.e 2055
pop.v.i self.lsprite
pushi.e 2054
pop.v.i self.rsprite
pushi.e 2053
pop.v.i self.dtsprite
pushi.e 2056
pop.v.i self.utsprite
pushi.e 2053
pop.v.i self.ltsprite
pushi.e 2056
pop.v.i self.rtsprite
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.facing
pushi.e 180
pop.v.i self.direction
pushi.e 0
pop.v.i self.talkedto
pushi.e 0
pop.v.i self.image_speed
call.i scr_murderlv(argc=0)
pushi.e 10
cmp.i.v GTE
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e -5
pushi.e 269
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 2052
pop.v.i self.sprite_index

:[4]
pushi.e 0
pop.v.i self.con

:[end]