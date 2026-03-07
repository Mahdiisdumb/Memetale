.localvar 0 arguments

:[0]
push.v self.fall
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
pushi.e 90
pop.v.i self.gravity_direction
push.v self.vspeed
push.v self.friction
push.d 0.3
add.d.v
add.v.v
pop.v.v self.vspeed
push.v self.image_angle
push.v self.speed
pushi.e 2
mul.i.v
sub.v.v
pop.v.v self.image_angle
push.v self.y
push.v self.fally
cmp.v.v GT
bf [3]

:[2]
pushi.e 6
pushi.e 12
conv.i.v
call.i random(argc=1)
sub.v.i
pop.v.v self.hspeed
push.v self.vspeed
neg.v
pop.v.v self.vspeed
pushi.e 2
pop.v.i self.fall

:[3]
push.v self.fall
pushi.e 2
cmp.i.v EQ
bf [6]

:[4]
push.v self.vspeed
push.v self.friction
push.d 0.1
add.d.v
add.v.v
pop.v.v self.vspeed
push.v self.image_angle
push.v self.speed
pushi.e 4
mul.i.v
sub.v.v
pop.v.v self.image_angle
push.v self.y
push.v self.fally
pushi.e 7
add.i.v
cmp.v.v GT
bf [6]

:[5]
pushi.e 3
pop.v.i self.fall

:[6]
push.v self.fall
pushi.e 3
cmp.i.v EQ
bf [9]

:[7]
pushi.e 0
pop.v.i self.vspeed
push.v self.image_alpha
push.d 0.03
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 0.06
cmp.d.v LT
bf [9]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[9]
push.v self.fall
pushi.e 6
cmp.i.v EQ
bf [end]

:[10]
pushi.e 180
pop.v.i self.gravity_direction
push.v self.vspeed
push.v self.friction
push.d 0.3
add.d.v
add.v.v
pop.v.v self.vspeed
push.v self.image_angle
push.v self.speed
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.image_angle
push.v self.y
push.v self.fally
cmp.v.v GT
bf [end]

:[11]
pushi.e 4
pushi.e 3
conv.i.v
call.i random(argc=1)
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=2)
mul.v.v
add.v.i
pop.v.v self.hspeed
push.v self.vspeed
neg.v
pop.v.v self.vspeed
pushi.e 2
pop.v.i self.fall

:[end]