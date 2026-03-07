.localvar 0 arguments

:[0]
pushi.e -4
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.counter
pushi.e 35
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
neg.v
pop.v.v self.counter
pushi.e 0
pop.v.i self.type
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 270
pop.v.i self.image_angle
pushbltn.v self.room_height
push.v self.sprite_height
push.d 0.6
mul.d.v
sub.v.v
pop.v.v self.y
push.v self.sprite_index
call.i scr_getsprite(argc=1)
pop.v.v self.sprite_index

:[end]