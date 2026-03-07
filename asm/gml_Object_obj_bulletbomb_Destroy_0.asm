.localvar 0 arguments

:[0]
push.v self.playdo
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.myloop
call.i audio_stop_sound(argc=1)
popz.v

:[end]