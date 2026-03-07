.localvar 0 arguments

:[0]
pushbltn.v self.argument0
pop.v.v self.b
pushbltn.v self.argument1
pop.v.v self.c
push.v self.a
pushi.e 1
add.i.v
pop.v.v self.a
pushbltn.v self.room_height
pop.v.v self.i

:[1]
push.v self.i
pushi.e 0
cmp.i.v GT
bf [end]

:[2]
push.v self.a
pushi.e 1
add.i.v
pop.v.v self.a
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.i
add.v.v
push.v self.x
push.v self.a
push.v self.b
div.v.v
call.i sin(argc=1)
push.v self.c
mul.v.v
add.v.v
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
push.v [array]self.background_width
push.v self.i
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
push.v [array]self.background_index
call.i draw_background_part_ext(argc=11)
popz.v
push.v self.i
pushi.e 1
sub.i.v
pop.v.v self.i
b [1]

:[end]