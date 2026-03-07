.localvar 0 arguments

:[0]
push.d 0.5
pop.v.d self.image_xscale
push.d 0.5
pop.v.d self.image_yscale
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.image_angle
pushi.e 1
pop.v.i self.image_alpha
pushi.e 6
conv.i.v
call.i random(argc=1)
pushi.e 6
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.aa
pushi.e 1
conv.i.v
call.i random(argc=1)
pushi.e 1
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.hspeed
pushi.e 1
conv.i.v
call.i random(argc=1)
pushi.e 1
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.vspeed
pushi.e 0
pop.v.i self.image_speed
pushi.e 40
conv.i.v
call.i random(argc=1)
pop.v.v self.image_index
pushi.e 111
conv.i.v
call.i audio_is_playing(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e 111
conv.i.v
call.i snd_stop(argc=1)
popz.v

:[2]
pushi.e 111
conv.i.v
call.i snd_play(argc=1)
popz.v

:[end]