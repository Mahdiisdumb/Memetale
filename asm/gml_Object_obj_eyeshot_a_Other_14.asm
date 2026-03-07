.localvar 0 arguments

:[0]
push.v self.image_angle
pop.v.v self.saved_angle
push.v self.x
pop.v.v self.saved_x
push.v self.y
pop.v.v self.saved_y
push.v self.active
pop.v.v self.saved_active
push.v self.speed
pop.v.v self.saved_speed
push.v self.direction
pop.v.v self.saved_direction
push.v self.size
pop.v.v self.saved_size
push.v self.image_xscale
pop.v.v self.saved_xscale
push.v self.image_yscale
pop.v.v self.saved_yscale
push.v self.visible
pop.v.v self.saved_visible
pushi.e 1
pop.v.i self.saved
push.v self.saved_active
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]