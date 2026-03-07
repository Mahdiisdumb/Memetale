.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 4
pop.v.i self.party
pushi.e -9
pop.v.i self.vspeed
push.d 0.3
pop.v.d self.gravity
pushi.e 2
pushi.e 4
conv.i.v
call.i random(argc=1)
sub.v.i
pop.v.v self.hspeed
pushi.e 0
pop.v.i self.visible
pushi.e 0
pop.v.i self.type
pushi.e 0
pop.v.i self.con
pushi.e 90
pop.v.i self.image_angle
push.v self.sprite_index
call.i scr_getsprite(argc=1)
pop.v.v self.sprite_index

:[end]