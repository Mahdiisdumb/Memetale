.localvar 0 arguments

:[0]
push.d 0.4
push.d 0.8
conv.d.v
call.i random(argc=1)
add.v.d
pop.v.v self.size
push.d 0.2
push.d 1.4
conv.d.v
call.i random(argc=1)
add.v.d
pop.v.v self.goalsize
push.d 0.9
pop.v.d self.image_alpha
push.d -0.1
push.d 0.1
conv.d.v
call.i random(argc=1)
add.v.d
pop.v.v self.gravity
pushi.e 2
pushi.e -4
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.hspeed
pushi.e -1
pop.v.i self.vspeed
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.siner
push.d 0.5
conv.d.v
call.i random(argc=1)
push.d 0.25
sub.d.v
pop.v.v self.rr
push.d 0.5
conv.d.v
call.i random(argc=1)
push.d 0.25
sub.d.v
pop.v.v self.vv
pushi.e 2
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.gg
push.d 0.25
pop.v.d self.image_speed
pushi.e 8
conv.i.v
call.i random(argc=1)
pop.v.v self.image_index

:[end]