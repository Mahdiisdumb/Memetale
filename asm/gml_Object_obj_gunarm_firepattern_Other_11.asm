.localvar 0 arguments

:[0]
push.v self.image_angle
pushi.e 90
sub.i.v
pushi.e 95
conv.i.v
call.i lengthdir_x(argc=2)
pop.v.v self.xx
push.v self.image_angle
pushi.e 90
sub.i.v
pushi.e 95
conv.i.v
call.i lengthdir_y(argc=2)
pop.v.v self.yy
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 584
conv.i.v
push.v self.y
push.v self.yy
add.v.v
push.v self.x
push.v self.xx
add.v.v
call.i instance_create(argc=3)
pop.v.v self.bolt
push.v self.image_angle
pushi.e 90
sub.i.v
push.v self.bolt
conv.v.i
pop.v.v [stacktop]self.direction
push.v self.image_angle
pushi.e 90
sub.i.v
push.v self.bolt
conv.v.i
pop.v.v [stacktop]self.thisd
push.v self.bolt
conv.v.i
push.v [stacktop]self.direction
push.v self.bolt
conv.v.i
pop.v.v [stacktop]self.image_angle
pushi.e 20
push.v self.bolt
conv.v.i
pop.v.i [stacktop]self.speed
pushi.e 2
push.v self.bolt
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.bolt
conv.v.i
pop.v.i [stacktop]self.image_yscale

:[2]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [6]

:[3]
pushi.e 0
pop.v.i self.i
pushi.e 3
dup.i 0
push.i 0
cmp.i.i LTE
bt [5]

:[4]
pushi.e 584
conv.i.v
push.v self.y
push.v self.yy
add.v.v
push.v self.x
push.v self.xx
add.v.v
call.i instance_create(argc=3)
pop.v.v self.bolt
push.v self.image_angle
pushi.e 90
sub.i.v
push.v self.bolt
conv.v.i
pop.v.v [stacktop]self.direction
push.v self.bolt
conv.v.i
push.v [stacktop]self.direction
push.v self.bolt
conv.v.i
pop.v.v [stacktop]self.image_angle
push.v self.image_angle
pushi.e 110
sub.i.v
pushi.e 20
push.v self.i
mul.v.i
add.v.v
push.v self.bolt
conv.v.i
pop.v.v [stacktop]self.thisd
push.v self.bolt
conv.v.i
push.v [stacktop]self.direction
push.v self.bolt
conv.v.i
pop.v.v [stacktop]self.image_angle
pushi.e 20
push.v self.bolt
conv.v.i
pop.v.i [stacktop]self.speed
pushi.e 2
push.v self.bolt
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.bolt
conv.v.i
pop.v.i [stacktop]self.image_yscale
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [4]

:[5]
popz.i

:[6]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [end]

:[7]
pushi.e 0
pop.v.i self.i
pushi.e 4
dup.i 0
push.i 0
cmp.i.i LTE
bt [9]

:[8]
pushi.e 584
conv.i.v
push.v self.y
push.v self.yy
add.v.v
push.v self.x
push.v self.xx
add.v.v
call.i instance_create(argc=3)
pop.v.v self.bolt
push.v self.image_angle
pushi.e 90
sub.i.v
push.v self.bolt
conv.v.i
pop.v.v [stacktop]self.direction
push.v self.bolt
conv.v.i
push.v [stacktop]self.direction
push.v self.bolt
conv.v.i
pop.v.v [stacktop]self.image_angle
push.v self.image_angle
pushi.e 120
sub.i.v
pushi.e 20
push.v self.i
mul.v.i
add.v.v
push.v self.bolt
conv.v.i
pop.v.v [stacktop]self.thisd
push.v self.bolt
conv.v.i
push.v [stacktop]self.direction
push.v self.bolt
conv.v.i
pop.v.v [stacktop]self.image_angle
pushi.e 20
push.v self.bolt
conv.v.i
pop.v.i [stacktop]self.speed
pushi.e 2
push.v self.bolt
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.bolt
conv.v.i
pop.v.i [stacktop]self.image_yscale
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [8]

:[9]
popz.i

:[end]