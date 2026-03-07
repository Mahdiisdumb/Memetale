.localvar 0 arguments

:[0]
pushi.e 1391
pop.v.i self.dsprite
pushi.e 1391
pop.v.i self.usprite
pushi.e 1391
pop.v.i self.lsprite
pushi.e 1391
pop.v.i self.rsprite
pushi.e 1391
pop.v.i self.dtsprite
pushi.e 1391
pop.v.i self.utsprite
pushi.e 1391
pop.v.i self.ltsprite
pushi.e 1391
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
call.i scr_murderlv(argc=0)
pushi.e 7
cmp.i.v GTE
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [end]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[end]