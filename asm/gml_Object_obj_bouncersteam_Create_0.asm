.localvar 0 arguments

:[0]
push.v self.x
pushi.e 10
add.i.v
pop.v.v self.x
push.v self.y
pushi.e 10
add.i.v
pop.v.v self.y
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.image_angle
push.d 0.4
pop.v.d self.image_xscale
push.d 0.4
pop.v.d self.image_yscale
push.d 0.4
pop.v.d self.size
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 80
pushi.e 20
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.direction
pushi.e 3
pop.v.i self.speed
push.d 0.1
pop.v.d self.friction

:[end]