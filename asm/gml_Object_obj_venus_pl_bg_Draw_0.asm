.localvar 0 arguments

:[0]
push.v self.parent
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v self.parent
conv.v.i
push.v [stacktop]self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.parent
conv.v.i
push.v [stacktop]self.image_yscale
push.v self.parent
conv.v.i
push.v [stacktop]self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
b [end]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[end]