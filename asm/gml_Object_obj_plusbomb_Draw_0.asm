.localvar 0 arguments

:[0]
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.y
pushi.e 28
add.i.v
push.v self.x
pushi.e 22
add.i.v
push.v self.sprite_width
add.v.v
pushi.e 1
add.i.v
push.v self.y
pushi.e 6
add.i.v
push.v self.x
pushi.e 2
add.i.v
push.v self.sprite_width
add.v.v
pushi.e 1
add.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[2]
push.v self.side
pushi.e 2
cmp.i.v EQ
bf [end]

:[3]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.y
pushi.e 28
add.i.v
push.v self.x
pushi.e 22
add.i.v
push.v self.sprite_width
sub.v.v
pushi.e 1
sub.i.v
push.v self.y
pushi.e 6
add.i.v
push.v self.x
pushi.e 2
add.i.v
push.v self.sprite_width
sub.v.v
pushi.e 1
sub.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[end]