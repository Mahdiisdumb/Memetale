.localvar 0 arguments

:[0]
push.v self.image_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.d 0.8
cmp.d.v GT
bf [2]

:[1]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.bbox_bottom
pushi.e 1
sub.i.v
push.v self.bbox_right
push.v self.bbox_top
push.v self.bbox_left
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[2]
pushi.e 1
pop.v.i self.non

:[end]