.localvar 0 arguments

:[0]
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
push.d 0.5
push.v self.ystart
push.v self.y
sub.v.v
pushi.e 40
conv.i.d
div.d.v
sub.v.d
push.v self.hole
conv.v.i
pop.v.v [stacktop]self.image_xscale
push.d 0.5
push.v self.ystart
push.v self.y
sub.v.v
pushi.e 40
conv.i.d
div.d.v
sub.v.d
push.v self.hole
conv.v.i
pop.v.v [stacktop]self.image_yscale

:[end]