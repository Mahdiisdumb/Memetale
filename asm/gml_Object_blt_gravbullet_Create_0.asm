.localvar 0 arguments

:[0]
pushi.e 599
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e 68
pop.v.i self.sprite_index

:[2]
pushi.e 0
pop.v.i self.dmg
pushi.e 0
pop.v.i self.image_speed
pushi.e 5
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pop.v.v self.image_index
push.v self.y
pushi.e 8
sub.i.v
pop.v.v self.y
push.d -0.5
pop.v.d self.vspeed
push.d 0.25
pop.v.d self.gravity
pushi.e 270
pop.v.i self.gravity_direction
push.v self.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 15
add.i.v
cmp.v.v LT
bf [4]

:[3]
push.v self.x
pushi.e 15
add.i.v
pop.v.v self.x

:[4]
pushi.e 0
pop.v.i self.green

:[end]