.localvar 0 arguments

:[0]
push.v self.crack
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.y
pushi.e 13
add.i.v
push.v self.x
pushi.e 18
add.i.v
push.v self.crack
pushi.e 1
sub.i.v
pushi.e 2539
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[2]
push.v self.y
call.i floor(argc=1)
push.v self.x
call.i floor(argc=1)
push.v self.image_index
call.i floor(argc=1)
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
push.v self.y
pushi.e 23
sub.i.v
push.v self.heady
add.v.v
call.i floor(argc=1)
push.v self.x
push.v self.headx
add.v.v
call.i floor(argc=1)
push.v self.head_index
push.v self.headsprite
call.i draw_sprite(argc=4)
popz.v
push.v self.timer
pushi.e 320
cmp.i.v GTE
bf [4]

:[3]
push.v self.timer
pushi.e 370
cmp.i.v LTE
b [5]

:[4]
push.e 0

:[5]
bf [end]

:[6]
push.v self.alphys
conv.v.i
push.v [stacktop]self.y
pushi.e 20
sub.i.v
push.v self.alphys
conv.v.i
push.v [stacktop]self.x
pushi.e 20
sub.i.v
pushi.e 0
conv.i.v
pushi.e 2542
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[end]