.localvar 0 arguments

:[0]
push.d 0.05
push.d 0.06
conv.d.v
call.i random(argc=1)
add.v.d
pop.v.v self.gravity
push.d -0.1
push.d 0.2
conv.d.v
call.i random(argc=1)
add.v.d
pop.v.v self.hspeed
push.d 0.2
conv.d.v
call.i random(argc=1)
push.d 0.2
add.d.v
pop.v.v self.image_speed
pushi.e 0
pop.v.i self.shake
pushi.e 0
pop.v.i self.dmg

:[end]