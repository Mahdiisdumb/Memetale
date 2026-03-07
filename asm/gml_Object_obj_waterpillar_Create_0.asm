.localvar 0 arguments

:[0]
call.i scr_depth(argc=0)
popz.v
push.d 0.1
pop.v.d self.image_yscale
push.d 0.5
pop.v.d self.image_alpha
pushi.e 2
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.on
pushi.e 22
conv.i.v
call.i snd_play(argc=1)
popz.v

:[end]