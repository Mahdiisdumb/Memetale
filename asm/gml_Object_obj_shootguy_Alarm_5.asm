.localvar 0 arguments

:[0]
push.v self.ammo
push.v self.idealammo
cmp.v.v LT
bf [end]

:[1]
push.v self.ammo
push.v self.idealammo
pushi.e 1
sub.i.v
cmp.v.v LT
bf [3]

:[2]
push.v self.buffer
pushi.e 6
add.i.v
pop.v.v self.buffer

:[3]
push.v self.ammo
pushi.e 1
add.i.v
pop.v.v self.ammo
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 6
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[end]