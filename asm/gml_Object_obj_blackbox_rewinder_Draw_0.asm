.localvar 0 arguments

:[0]
push.v self.rewed
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
push.v self.sprite_height
sub.v.v
pushi.e 5
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
push.v self.sprite_width
sub.v.v
pushi.e 5
sub.i.v
push.v self.image_index
pushi.e 542
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[2]
push.v self.rewed
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
push.v self.sprite_height
sub.v.v
pushi.e 5
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
push.v self.sprite_width
sub.v.v
pushi.e 5
sub.i.v
push.v self.image_index
pushi.e 543
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[end]