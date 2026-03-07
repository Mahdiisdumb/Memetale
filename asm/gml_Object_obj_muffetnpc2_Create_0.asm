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
call.i scr_murderlv(argc=0)
pushi.e 12
cmp.i.v GTE
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e 0
pop.v.i self.kk
pushi.e -5
pushi.e 397
push.v [array]global.flag
pushi.e 0
cmp.i.v NEQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.kk

:[4]
pushglb.v global.plot
pushi.e 165
cmp.i.v LT
bf [6]

:[5]
pushi.e 1
pop.v.i self.kk

:[6]
push.v self.kk
pushi.e 1
cmp.i.v EQ
bf [end]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[end]