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
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pushi.e -5
pushi.e 107
pop.v.i [array]global.flag

:[2]
pushi.e -5
pushi.e 107
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.image_index

:[4]
push.s "music/dogsong.ogg"@2831
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.dogsong
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.anti_buffer

:[end]