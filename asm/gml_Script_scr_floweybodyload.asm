.localvar 0 arguments

:[0]
push.v self.saved
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.save_x
pop.v.v self.x
push.v self.save_y
pop.v.v self.y
push.v self.save_index
pop.v.v self.image_index
push.v self.save_sprite
pop.v.v self.sprite_index
push.v self.save_blend
pop.v.v self.image_blend
push.v self.save_xscale
pop.v.v self.image_xscale
push.v self.save_yscale
pop.v.v self.image_yscale
push.v self.save_angle
pop.v.v self.image_angle
push.v self.save_hspeed
pop.v.v self.hspeed
push.v self.save_vspeed
pop.v.v self.vspeed
push.v self.save_speed
pop.v.v self.speed
push.v self.save_direction
pop.v.v self.direction

:[end]