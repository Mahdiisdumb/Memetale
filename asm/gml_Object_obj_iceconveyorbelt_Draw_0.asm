.localvar 0 arguments

:[0]
push.v 1440.y
pushi.e 68
add.i.v
push.v 1440.x
pushi.e 58
add.i.v
pushi.e 0
conv.i.v
pushi.e 1393
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
push.v self.stage
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.y
pushi.e 30
sub.i.v
push.v self.x
push.v self.icex
add.v.v
pushi.e 0
conv.i.v
pushi.e 1396
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.icex
push.d 0.5
add.d.v
pop.v.v self.icex

:[end]