.localvar 0 arguments

:[0]
pushi.e 145
pushi.e 20
conv.i.v
call.i random(argc=1)
sub.v.i
pop.v.v self.direction
pushi.e 280
pop.v.i self.gravity_direction
push.d 0.4
pop.v.d self.gravity
pushi.e 7
pushi.e 3
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.speed
pushi.e 1
pop.v.i self.image_index
push.v self.dmg
push.d 1.8
mul.d.v
pop.v.v self.dmg

:[end]