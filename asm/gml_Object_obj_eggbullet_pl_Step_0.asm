.localvar 0 arguments

:[0]
push.v self.direction
pop.v.v self.image_angle
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 740
conv.i.v
push.v self.y
push.v self.sprite_width
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
push.v self.y
push.v self.x
call.i collision_rectangle(argc=7)
conv.v.b
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
push.v self.y
pushbltn.v self.room_height
cmp.v.v GT
bf [end]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[end]