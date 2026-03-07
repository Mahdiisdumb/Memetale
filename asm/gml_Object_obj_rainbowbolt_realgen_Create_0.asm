.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.i
push.s "music/sfx/sfx_a_lithit.ogg"@2791
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.lithit
pushi.e 169
pop.v.i self.lithit2
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.lithit
call.i audio_sound_gain(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.lithit2
call.i audio_sound_gain(argc=3)
popz.v
pushi.e 1
conv.i.v
push.v self.lithit
call.i audio_sound_pitch(argc=2)
popz.v
pushi.e 1
conv.i.v
push.v self.lithit2
call.i audio_sound_pitch(argc=2)
popz.v
push.s "music/sfx/sfx_menu_error.ogg"@49680
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.er
pushi.e 0
pop.v.i self.hit
pushi.e 0
pop.v.i self.rr
pushi.e 0
pop.v.i self.h_mode
pushi.e 0
pop.v.i self.l_buffer
pushi.e 0
pop.v.i self.o_o
pushi.e 0
pop.v.i self.perturn
pushi.e 0
pop.v.i self.lh

:[end]