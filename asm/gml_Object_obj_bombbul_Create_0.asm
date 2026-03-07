.localvar 0 arguments

:[0]
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.type
push.v self.type
pushi.e 0
cmp.i.v EQ
bt [2]

:[1]
push.v self.type
pushi.e 2
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [8]

:[4]
pushi.e 2
pushi.e 3
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.hspeed
push.v self.hspeed
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=2)
mul.v.v
pop.v.v self.hspeed
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
pushi.e 270
pop.v.i self.gravity_direction
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 20
sub.i.v
pop.v.v self.y

:[6]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
pushi.e 180
pop.v.i self.image_angle
pushi.e 90
pop.v.i self.gravity_direction
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 20
add.i.v
pop.v.v self.y

:[8]
push.v self.type
pushi.e 1
cmp.i.v EQ
bt [10]

:[9]
push.v self.type
pushi.e 3
cmp.i.v EQ
b [11]

:[10]
push.e 1

:[11]
bf [16]

:[12]
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
add.v.v
pushi.e 2
conv.i.d
div.d.v
pushi.e 50
add.i.v
pushi.e 100
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.y
pushi.e 2
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.vspeed
push.v self.vspeed
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=2)
mul.v.v
pop.v.v self.vspeed
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
pushi.e 90
pop.v.i self.image_angle
pushi.e 0
pop.v.i self.gravity_direction
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 20
sub.i.v
pop.v.v self.x

:[14]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [16]

:[15]
pushi.e 270
pop.v.i self.image_angle
pushi.e 180
pop.v.i self.gravity_direction
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 20
add.i.v
pop.v.v self.x

:[16]
push.d 0.18
pop.v.d self.gravity
push.d 0.03
pop.v.d self.friction
pushi.e 0
pop.v.i self.bounce
pushi.e 0
pop.v.i self.on
pushi.e 0
pop.v.i self.flash
pushi.e 0
pop.v.i self.expl
pushi.e 0
pop.v.i self.image_speed

:[end]