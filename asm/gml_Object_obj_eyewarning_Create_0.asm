.localvar 0 arguments

:[0]
push.d 0.1
pop.v.d self.size
pushi.e 1
pop.v.i self.image_alpha
push.v self.size
pop.v.v self.image_xscale
push.v self.size
pop.v.v self.image_yscale
pushi.e 179
conv.i.v
call.i snd_stop(argc=1)
popz.v
push.d 1.2
conv.d.v
push.d 0.8
conv.d.v
pushi.e 179
conv.i.v
call.i caster_play(argc=3)
popz.v

:[end]