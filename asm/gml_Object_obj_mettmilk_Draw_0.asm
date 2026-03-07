.localvar 0 arguments

:[0]
push.v self.y
pushi.e 20
sub.i.v
push.v self.x
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v

:[end]