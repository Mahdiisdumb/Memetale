.localvar 0 arguments

:[0]
pushglb.v global.osflavor
pushi.e 2
cmp.i.v LTE
bf [2]

:[1]
call.i game_end(argc=0)
popz.v
b [end]

:[2]
pushi.e -3
conv.i.v
call.i caster_stop(argc=1)
popz.v
pushi.e 0
conv.i.v
push.d 0.6
conv.d.v
pushi.e 1
conv.i.v
pushi.e 666
conv.i.v
pushi.e 237
conv.i.v
call.i audio_play_sound(argc=3)
call.i audio_sound_gain(argc=3)
popz.v
call.i scr_fakecrash_init(argc=0)
popz.v
pushi.e 1
pop.v.i self.in_fakecrash

:[end]