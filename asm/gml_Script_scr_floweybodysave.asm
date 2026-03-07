.localvar 0 arguments

:[0]
push.v self.x
pop.v.v self.save_x
push.v self.y
pop.v.v self.save_y
push.v self.image_index
pop.v.v self.save_index
push.v self.sprite_index
pop.v.v self.save_sprite
push.v self.image_blend
pop.v.v self.save_blend
push.v self.image_xscale
pop.v.v self.save_xscale
push.v self.image_yscale
pop.v.v self.save_yscale
push.v self.image_angle
pop.v.v self.save_angle
push.v self.hspeed
pop.v.v self.save_hspeed
push.v self.vspeed
pop.v.v self.save_vspeed
push.v self.speed
pop.v.v self.save_speed
push.v self.direction
pop.v.v self.save_direction
pushi.e 1
pop.v.i self.saved

:[end]