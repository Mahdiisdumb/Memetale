.localvar 0 arguments

:[0]
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
push.v self.mode
pushi.e 1
cmp.i.v EQ
bt [2]

:[1]
push.v self.mode
pushi.e 3
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
push.v 1187.y
pushi.e 10
add.i.v
push.v 1187.x
pushi.e 10
add.i.v
push.v self.y
pushi.e 15
add.i.v
push.v self.x
pushi.e 11
add.i.v
call.i point_direction(argc=4)
pop.v.v self.ang

:[5]
push.v self.mode
pushi.e 3
cmp.i.v EQ
bf [7]

:[6]
push.v self.ang
pushi.e 60
conv.i.v
call.i random(argc=1)
pushi.e 30
sub.i.v
add.v.v
pop.v.v self.ang

:[7]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.ang
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
pushi.e 15
add.i.v
push.v self.x
pushi.e 11
add.i.v
pushi.e 0
conv.i.v
pushi.e 1799
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]