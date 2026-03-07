.localvar 0 arguments

:[0]
pushi.e 60
conv.i.v
call.i random(argc=1)
pushi.e 40
add.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.alarm
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 45
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 239
conv.i.v
push.v self.y
pushi.e 96
add.i.v
push.v self.x
pushi.e 50
add.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i self.image_speed

:[end]