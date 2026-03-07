.localvar 0 arguments

:[0]
pushi.e 12
conv.i.v
push.v self.centery
push.v self.centerx
call.i move_towards_point(argc=3)
popz.v
push.v self.king
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 143
conv.i.v
call.i snd_play(argc=1)
popz.v

:[end]