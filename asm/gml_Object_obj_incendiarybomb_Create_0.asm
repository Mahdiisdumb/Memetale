.localvar 0 arguments

:[0]
pushi.e 4
conv.i.v
call.i random(argc=1)
push.d 0.1
add.d.v
pop.v.v self.hspeed
push.v self.hspeed
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=2)
mul.v.v
pop.v.v self.hspeed
pushi.e 0
pop.v.i self.vspeed
pushi.e 270
pop.v.i self.gravity_direction
push.d 0.1
pop.v.d self.gravity

:[end]