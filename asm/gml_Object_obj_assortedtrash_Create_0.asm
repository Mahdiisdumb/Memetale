.localvar 0 arguments

:[0]
pushi.e 1443
pop.v.i self.dsprite
pushi.e 1452
pop.v.i self.usprite
pushi.e 1457
pop.v.i self.lsprite
pushi.e 1453
pop.v.i self.rsprite
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
pushi.e 270
pop.v.i self.direction
pushi.e 0
pop.v.i self.talkedto
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.con
push.v self.y
pushi.e 420
cmp.i.v GT
bf [2]

:[1]
pushi.e 1710
pop.v.i self.sprite_index

:[2]
push.v self.y
pushi.e 500
cmp.i.v GT
bf [4]

:[3]
pushi.e 1566
pop.v.i self.sprite_index

:[4]
pushi.e 0
pop.v.i self.con
call.i scr_depth(argc=0)
popz.v

:[end]