.localvar 0 arguments

:[0]
pushi.e 40
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 31
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 56
pop.v.i self.sprite_index
push.v self.x
pushi.e 2
sub.i.v
pop.v.v self.x
pushi.e -5
pushi.e 500
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e -1
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 5
pop.v.i self.heartcon
push.v self.x
pop.v.v self.thisx
push.v self.y
pop.v.v self.thisy

:[end]