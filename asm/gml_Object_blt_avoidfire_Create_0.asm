.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.dmg
push.d 0.2
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.vspeed
push.d 0.1
push.d 0.2
conv.d.v
call.i random(argc=1)
add.v.d
pop.v.v self.gravity
pushi.e 250
pushi.e 40
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.gravity_direction
pushi.e 0
pop.v.i self.visible

:[end]