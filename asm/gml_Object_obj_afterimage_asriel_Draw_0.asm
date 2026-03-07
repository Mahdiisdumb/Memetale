.localvar 0 arguments

:[0]
push.v self.image_alpha
push.d 0.02
sub.d.v
pop.v.v self.image_alpha
push.v self.hue
pushi.e 9
add.i.v
pop.v.v self.hue
pushi.e 250
conv.i.v
pushi.e 255
conv.i.v
push.v self.hue
call.i make_color_hsv(argc=3)
pop.v.v self.mycolor
push.v self.image_alpha
push.v self.mycolor
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.d 0.06
cmp.d.v LT
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]