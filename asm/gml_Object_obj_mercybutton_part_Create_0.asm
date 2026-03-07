.localvar 0 arguments

:[0]
push.v self.sprite_index
call.i scr_getsprite(argc=1)
pop.v.v self.sprite_index
pushi.e 1
pop.v.i self.gravity
pushi.e -10
pushi.e 6
conv.i.v
call.i random(argc=1)
sub.v.i
pop.v.v self.vspeed
push.v self.y
pushbltn.v self.room_height
pushi.e 40
add.i.v
cmp.v.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e 0
pop.v.i self.image_speed
pushi.e 2
conv.i.v
call.i random(argc=1)
pop.v.v self.aa
pushi.e 0
pop.v.i self.image_blend

:[end]