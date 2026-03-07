.localvar 0 arguments

:[0]
push.v self.y
push.v self.x
pushi.e 1
conv.i.v
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
push.v self.y
push.v self.x
pushi.e 50
conv.i.v
pushi.e 20
push.v self.side
sub.v.i
pushi.e 0
conv.i.v
push.v self.side
pushi.e 0
conv.i.v
pushi.e 1948
conv.i.v
call.i draw_sprite_part(argc=8)
popz.v
push.v self.y
push.v self.x
pushi.e 20
add.i.v
push.v self.side
add.v.v
pushi.e 50
conv.i.v
pushi.e 20
push.v self.side
sub.v.i
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1948
conv.i.v
call.i draw_sprite_part(argc=8)
popz.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v

:[end]