.localvar 0 arguments

:[0]
pushbltn.v self.argument0
pop.v.v self.b
pushbltn.v self.argument1
pop.v.v self.c
pushbltn.v self.argument2
pop.v.v self.d
push.v self.a
pushi.e 1
add.i.v
pop.v.v self.a
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
push.v self.sprite_height
cmp.v.v LT
bf [end]

:[2]
push.v self.a
pushi.e 1
add.i.v
pop.v.v self.a
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.i
pushi.e 2
mul.i.v
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
push.v self.a
call.i sin(argc=1)
mul.v.i
push.v self.d
mul.v.v
push.v self.sprite_width
push.v self.i
pushi.e 0
conv.i.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_part_ext(argc=12)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[end]