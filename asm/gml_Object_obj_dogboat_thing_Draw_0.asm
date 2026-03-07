.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.adjust
push.v self.sprite_index
pushi.e 1618
cmp.i.v EQ
bf [2]

:[1]
push.v self.image_index
pushi.e 1
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.i self.adjust

:[5]
push.v self.y
push.v self.dogy
add.v.v
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
push.v self.cc
push.d 0.1
add.d.v
pop.v.v self.cc
push.v self.y
push.v self.x
push.v self.cc
pushi.e 1620
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.y
push.v self.dogy
add.v.v
pushi.e 17
sub.i.v
push.v self.adjust
add.v.v
push.v self.rman
conv.v.i
pop.v.v [stacktop]self.y
push.v self.x
pushi.e 20
add.i.v
push.v self.rman
conv.v.i
pop.v.v [stacktop]self.x
push.v self.snapper
call.i instance_exists(argc=1)
conv.v.b
bf [7]

:[6]
push.v self.x
pushi.e 56
add.i.v
push.v self.snapper
conv.v.i
pop.v.v [stacktop]self.x
push.v self.y
push.v self.dogy
add.v.v
pushi.e 8
sub.i.v
push.v self.adjust
add.v.v
push.v self.snapper
conv.v.i
pop.v.v [stacktop]self.y

:[7]
push.v self.lapbg
pushi.e 1
cmp.i.v EQ
bf [11]

:[8]
push.v self.tilex
push.v self.bgspeed
add.v.v
pop.v.v self.tilex
push.v self.tilex
pushi.e -20
cmp.i.v GT
bf [10]

:[9]
pushi.e 0
conv.i.v
pushi.e -240
conv.i.v
push.i 1000000
conv.i.v
call.i tile_layer_shift(argc=3)
popz.v
push.v self.tilex
pushi.e 240
sub.i.v
pop.v.v self.tilex

:[10]
pushi.e 0
conv.i.v
push.v self.bgspeed
push.i 1000000
conv.i.v
call.i tile_layer_shift(argc=3)
popz.v

:[11]
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_yview

:[end]