.localvar 0 arguments

:[0]
push.v self.frame
pushi.e 0
cmp.i.v EQ
bf [4]

:[1]
pushi.e 494
pushenv [3]

:[2]
pushi.e 492
conv.i.v
push.v 493.y
push.v 493.x
call.i instance_create(argc=3)
pop.v.v self.specbullet

:[3]
popenv [2]

:[4]
push.v self.frame
pushi.e 0
cmp.i.v GT
bf [6]

:[5]
pushi.e 492
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[6]
push.v self.frame
pushi.e 1
add.i.v
pop.v.v self.frame
push.v self.direction
pushi.e 10
sub.i.v
pop.v.v self.direction
pushi.e 93
conv.i.v
call.i snd_play(argc=1)
popz.v

:[end]