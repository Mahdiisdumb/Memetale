.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.range
pushi.e 9
pop.v.i self.timer
push.i 16777215
pop.v.i self.col
pushi.e 0
pop.v.i self.siner
pushi.e 10
pop.v.i self.beamtime
push.v 744.x
pop.v.v self.targetx
push.v 744.y
pop.v.v self.targety
pushi.e 0
pop.v.i self.home
push.s "music/sfx/sfx_rainbowbeam_1.ogg"@2802
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.beamsfx
push.s "music/sfx/sfx_rainbowbeam_hold.ogg"@2796
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.beamsfx2
pushi.e 300
pop.v.i self.last
pushi.e 0
pop.v.i self.hits

:[end]