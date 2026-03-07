.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.movetype
pushi.e 1
push.v self.legs
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e -9
pushi.e 4
conv.i.v
call.i random(argc=1)
sub.v.i
pop.v.v self.vspeed
pushi.e 6
conv.i.v
call.i random(argc=1)
pushi.e 3
sub.i.v
pop.v.v self.hspeed
push.d 1.3
pop.v.d self.gravity
pushi.e 270
pop.v.i self.gravity_direction
push.v self.jumpno
pushi.e 1
add.i.v
pop.v.v self.jumpno
push.v self.ystart
pop.v.v self.y
push.v self.jumpno
pushi.e 3
cmp.i.v EQ
bf [2]

:[1]
pushi.e -12
pop.v.i self.vspeed
push.v self.xstart
push.v self.x
sub.v.v
pushi.e 18
conv.i.d
div.d.v
pop.v.v self.hspeed

:[2]
pushi.e 0
pop.v.i self.air
push.v self.hspeed
push.d 0.93
div.d.v
push.v self.larm
conv.v.i
pop.v.v [stacktop]self.hspeed
push.v self.vspeed
pushi.e 2
sub.i.v
push.v self.larm
conv.v.i
pop.v.v [stacktop]self.vspeed
push.v self.gravity
push.d 0.1
add.d.v
push.v self.larm
conv.v.i
pop.v.v [stacktop]self.gravity
pushi.e 270
push.v self.larm
conv.v.i
pop.v.i [stacktop]self.gravity_direction
push.v self.hspeed
push.d 1.1
div.d.v
push.v self.rarm
conv.v.i
pop.v.v [stacktop]self.hspeed
push.v self.vspeed
pushi.e 2
sub.i.v
push.v self.rarm
conv.v.i
pop.v.v [stacktop]self.vspeed
push.v self.gravity
push.d 0.1
add.d.v
push.v self.rarm
conv.v.i
pop.v.v [stacktop]self.gravity
pushi.e 270
push.v self.rarm
conv.v.i
pop.v.i [stacktop]self.gravity_direction
push.v self.hspeed
push.d 1.1
div.d.v
push.v self.legs
conv.v.i
pop.v.v [stacktop]self.hspeed
push.v self.vspeed
pushi.e 2
sub.i.v
push.v self.legs
conv.v.i
pop.v.v [stacktop]self.vspeed
push.v self.gravity
push.d 0.1
add.d.v
push.v self.legs
conv.v.i
pop.v.v [stacktop]self.gravity
pushi.e 270
push.v self.legs
conv.v.i
pop.v.i [stacktop]self.gravity_direction

:[end]