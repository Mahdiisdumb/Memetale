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
pushi.e 90
pop.v.i self.direction
pushi.e 0
pop.v.i self.talkedto
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.con
pushi.e -5
pushi.e 89
push.v [array]global.flag
pushi.e 1
cmp.i.v NEQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
b [3]

:[2]
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i self.visible
push.s "music/rimshot.ogg"@2638
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.rimshot
push.s "music/whoopee.ogg"@2636
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.whoopee
push.s "music/mysteriousroom2.ogg"@2844
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.mystery

:[3]
call.i scr_depth(argc=0)
popz.v
pushi.e 0
pop.v.i self.burg
pushi.e 1
pop.v.i self.curvol
pushi.e 1287
conv.i.v
pushi.e 65
conv.i.v
pushi.e 92
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.counter
push.i 199990
push.v self.counter
conv.v.i
pop.v.i [stacktop]self.depth

:[end]