.localvar 0 arguments

:[0]
push.v self.direction
push.v self.rotdir
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.image_angle
push.v self.image_alpha
push.i 16777215
conv.i.v
push.v self.image_angle
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.direction
push.v self.rotdir
add.v.v
pop.v.v self.direction
pushi.e 12
conv.i.v
call.i scr_bordercross(argc=1)
popz.v
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha

:[end]