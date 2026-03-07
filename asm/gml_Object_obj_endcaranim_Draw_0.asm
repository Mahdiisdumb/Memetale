.localvar 0 arguments

:[0]
push.v self.y
pushi.e 8
add.i.v
push.v self.cary
add.v.v
push.v self.x
pushi.e 20
sub.i.v
push.v self.image_index
pushi.e 2554
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.y
pushi.e 8
add.i.v
push.v self.x
pushi.e 20
sub.i.v
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 2552
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.y
push.v self.x
pushi.e 34
conv.i.v
push.v self.sprite_width
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_index
call.i floor(argc=1)
push.v self.sprite_index
call.i draw_sprite_part(argc=8)
popz.v
push.v self.y
pushi.e 8
add.i.v
push.v self.x
pushi.e 20
sub.i.v
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 2553
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.y
pushi.e 8
add.i.v
push.v self.cary
add.v.v
push.v self.x
pushi.e 20
sub.i.v
push.v self.image_index
pushi.e 2551
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[end]