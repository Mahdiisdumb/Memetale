.localvar 0 arguments

:[0]
push.v self.saved
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[2]
push.v self.saved_angle
pop.v.v self.image_angle
push.v self.saved_x
pop.v.v self.x
push.v self.saved_y
pop.v.v self.y
push.v self.saved_active
pop.v.v self.active
push.v self.saved_speed
pop.v.v self.speed
push.v self.saved_direction
pop.v.v self.direction
push.v self.saved_size
pop.v.v self.size
push.v self.saved_xscale
pop.v.v self.image_xscale
push.v self.saved_yscale
pop.v.v self.image_yscale
push.v self.saved_visible
pop.v.v self.visible
push.v self.saved_active
pushi.e 0
cmp.i.v EQ
bf [end]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[end]