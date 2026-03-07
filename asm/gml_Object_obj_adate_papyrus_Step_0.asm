.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.vspeed

:[2]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
pushi.e 20
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e -16
pop.v.i self.vspeed
pushi.e 1
pop.v.i self.gravity
pushi.e 3
pop.v.i self.con

:[4]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [end]

:[5]
push.v self.vspeed
pushi.e 0
cmp.i.v GTE
bf [7]

:[6]
pushi.e 80
pop.v.i self.depth

:[7]
push.v self.y
push.v 176.y
pushi.e 10
add.i.v
push.v self.sprite_height
sub.v.v
cmp.v.v GTE
bf [end]

:[8]
pushi.e 21
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.vspeed
push.v 176.y
pushi.e 10
add.i.v
push.v self.sprite_height
sub.v.v
pop.v.v self.y
pushi.e 4
pop.v.i self.con

:[end]