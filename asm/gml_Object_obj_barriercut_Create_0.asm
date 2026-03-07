.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.shaken
pushi.e 0
pop.v.i self.bx
pushi.e 0
pop.v.i self.bx2
pushi.e 4
pop.v.i self.bxspeed
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.image_speed
pushi.e 10
pop.v.i self.shaker
pushi.e 1
pop.v.i self.b_al
push.s "music/sfx/sfx_abreak.ogg"@2786
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.sfx1
push.s "music/sfx/sfx_abreak2.ogg"@2785
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.sfx2
push.d 0.95
conv.d.v
push.d 0.8
conv.d.v
push.v self.sfx1
call.i caster_play(argc=3)
popz.v

:[end]