.localvar 0 arguments

:[0]
push.d 0.4
push.d 0.2
conv.d.v
call.i random(argc=1)
add.v.d
pop.v.v self.gravity
push.d 0.2
pop.v.d self.friction
pushi.e 2
conv.i.v
call.i random(argc=1)
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=2)
mul.v.v
pop.v.v self.hspeed
pushi.e 0
pop.v.i self.ang
pushi.e 0
pop.v.i self.image_speed

:[end]