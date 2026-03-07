.localvar 0 arguments

:[0]
pushi.e 1671
conv.i.v
push.v self.y
pushi.e 40
sub.i.v
push.v self.i
pushi.e 10
mul.i.v
add.v.v
push.v self.x
pushi.e 250
sub.i.v
call.i instance_create(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.sidebl
push.v self.i
pushi.e 8
cmp.i.v LT
bf [2]

:[1]
pushi.e 1
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm

:[2]
push.v self.amt
pushi.e 1
add.i.v
pop.v.v self.amt
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
pushi.e 10
pushi.e -1
pushi.e 10
pop.v.i [array]self.alarm
pushi.e 93
conv.i.v
call.i snd_play(argc=1)
popz.v

:[end]