.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.siner
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.timer
push.s "music/sfx_bookspin.ogg"@2727
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.bookspin
push.d 0.9
conv.d.v
pushi.e 1
conv.i.v
push.v self.bookspin
call.i caster_play(argc=3)
popz.v
pushi.e 0
pop.v.i self.crit

:[end]