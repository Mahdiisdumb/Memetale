.localvar 0 arguments

:[0]
pushi.e 120
pop.v.i self.x
pushi.e 120
pop.v.i self.y
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.image_speed
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.image_alpha
pushi.e 0
pop.v.i self.n_timer
pushi.e 0
pop.v.i self.n_index
pushi.e 0
pop.v.i self.n_alpha
pushi.e 0
pop.v.i self.n_active
pushi.e 0
pop.v.i self.offer
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
call.i scr_loadendsong(argc=0)
popz.v
pushi.e -5
pushi.e 7
push.v [array]global.endsong
call.i caster_stop(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 8
push.v [array]global.endsong
call.i caster_play(argc=3)
pop.v.v self.s8
push.s "music/f_noise.ogg"@2743
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.noise
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.noise
call.i caster_loop(argc=3)
pop.v.v self.noise
pushi.e 1
pop.v.i global.inbattle

:[end]