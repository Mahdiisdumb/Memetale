.localvar 0 arguments

:[0]
push.v self.sound
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.soundtimer
pushi.e 0
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 22
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.sound
pushi.e 3
pop.v.i self.soundtimer

:[5]
push.v self.soundtimer
pushi.e 1
sub.i.v
pop.v.v self.soundtimer

:[end]