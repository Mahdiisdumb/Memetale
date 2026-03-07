.localvar 0 arguments

:[0]
push.d 0.5
pop.v.d self.image_speed
pushi.e 5
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.form
pushi.e 2
pop.v.i self.size
push.v self.size
pop.v.v self.image_xscale
push.v self.size
pop.v.v self.image_yscale
pushi.e 0
pop.v.i self.shotno
push.s "music/sfx_gunshot.ogg"@2725
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.gunsfx
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.gunsfx
call.i caster_play(argc=3)
popz.v
pushi.e 60
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.crit

:[end]