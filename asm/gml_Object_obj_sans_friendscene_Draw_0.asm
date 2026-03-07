.localvar 0 arguments

:[0]
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.shock
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushi.e 46
sub.i.v
push.v self.x
pushi.e 24
add.i.v
push.v self.face
pushi.e 2414
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[2]
push.v self.shock
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushi.e 46
sub.i.v
push.v self.x
pushi.e 24
add.i.v
pushi.e 0
conv.i.v
pushi.e 2432
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]