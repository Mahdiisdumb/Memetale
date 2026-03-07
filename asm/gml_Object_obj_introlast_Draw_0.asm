.localvar 0 arguments

:[0]
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
push.v self.sprite_height
push.v self.h
sub.v.v
pushi.e 320
conv.i.v
push.v self.sprite_height
push.v self.h
pushi.e 100
add.i.v
sub.v.v
pushi.e 0
conv.i.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_part(argc=8)
popz.v
push.v self.go
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.h
pushi.e 1
add.i.v
pop.v.v self.h

:[2]
push.v self.h
pushi.e 240
cmp.i.v GT
bf [end]

:[3]
push.v self.h
pushi.e 1
sub.i.v
pop.v.v self.h

:[end]