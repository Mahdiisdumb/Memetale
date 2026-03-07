.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.visible
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.image_yscale
pushi.e -1
pop.v.i self.vspeed

:[2]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e -1
pop.v.i self.image_yscale
push.v self.y
pushi.e 150
sub.i.v
pop.v.v self.y
pushi.e 1
pop.v.i self.vspeed

:[4]
pushi.e 13
conv.i.v
call.i snd_play(argc=1)
popz.v

:[end]