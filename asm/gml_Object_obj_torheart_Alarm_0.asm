.localvar 0 arguments

:[0]
pushi.e 30
pop.v.i self.room_speed
pushi.e 31
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 57
pop.v.i self.sprite_index
push.v self.x
pushi.e 2
sub.i.v
pop.v.v self.x
pushi.e 40
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.shake

:[end]