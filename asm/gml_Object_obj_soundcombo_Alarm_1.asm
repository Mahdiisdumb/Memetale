.localvar 0 arguments

:[0]
push.v self.sound2
call.i snd_play(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]