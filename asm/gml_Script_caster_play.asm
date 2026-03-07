.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
pushi.e 100
conv.i.v
pushbltn.v self.argument0
call.i audio_play_sound(argc=3)
pop.v.v self.this_song_i
pushbltn.v self.argument2
pushbltn.v self.argument0
call.i audio_sound_pitch(argc=2)
popz.v
pushi.e 0
conv.i.v
pushbltn.v self.argument1
pushbltn.v self.argument0
call.i audio_sound_gain(argc=3)
popz.v
push.v self.this_song_i
ret.v

:[end]