.localvar 0 arguments

:[0]
push.v self.direction
pop.v.v self.image_angle
push.v self.x
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.x
push.v self.y
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.y
push.v self.siner
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.siner

:[end]