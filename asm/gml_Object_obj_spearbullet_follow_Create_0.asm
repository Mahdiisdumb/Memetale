.localvar 0 arguments

:[0]
pushi.e 32
pop.v.i self.rotspeed
push.v 744.x
pushi.e 4
sub.i.v
pushi.e 8
conv.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.x
push.v 744.y
pushi.e 4
sub.i.v
pushi.e 8
conv.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.y
pushi.e 0
pop.v.i self.image_alpha
pushi.e 13
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v 744.y
push.v 744.x
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.offsetdir
push.v self.x
push.v self.offsetdir
pushi.e 140
conv.i.v
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.x
push.v self.y
push.v self.offsetdir
pushi.e 140
conv.i.v
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.y
push.v self.offsetdir
pop.v.v self.direction
pushi.e 4
pop.v.i self.speed
push.d 0.2
pop.v.d self.friction
pushi.e 7
pop.v.i self.dmg
pushi.e 0
pop.v.i self.deactivate
pushi.e 283
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
pushi.e 11
pop.v.i self.dmg

:[end]