.localvar 0 arguments

:[0]
push.v self.bbox_bottom
push.v 1576.y
sub.v.v
pop.v.v self.maxy
push.v self.col
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v

:[2]
push.v self.col
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.y
pushi.e 16
sub.i.v
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v

:[4]
push.v self.col
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
push.v self.y
pushi.e 25
sub.i.v
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v

:[6]
push.v self.col
pushi.e 2
cmp.i.v GT
bf [end]

:[7]
push.v self.y
pushi.e 30
sub.i.v
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v

:[end]