.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.image_speed
push.v self.x
pushi.e 300
cmp.i.v LT
bf [2]

:[1]
pushi.e 0
pop.v.i self.type
pushi.e 6
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.hspeed
push.d 0.17
pop.v.d self.gravity
pushi.e 180
pop.v.i self.gravity_direction
pushi.e -1
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.vspeed
b [3]

:[2]
pushi.e 1
pop.v.i self.type
pushi.e 1
pop.v.i self.image_index
pushi.e -6
pushi.e 2
conv.i.v
call.i random(argc=1)
sub.v.i
pop.v.v self.hspeed
push.d 0.17
pop.v.d self.gravity
pushi.e 0
pop.v.i self.gravity_direction
pushi.e -1
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.vspeed

:[3]
pushi.e 0
pop.v.i self.off

:[end]