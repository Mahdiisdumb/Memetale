.localvar 0 arguments

:[0]
push.v self.aimage
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 572
conv.i.v
push.v self.y
push.v self.rely
add.v.v
push.v self.x
push.v self.relx
add.v.v
call.i instance_create(argc=3)
pop.v.v self.o
push.v self.sprite_index
push.v self.o
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.image_index
push.v self.o
conv.v.i
pop.v.v [stacktop]self.image_index
pushi.e 0
push.v self.o
conv.v.i
pop.v.i [stacktop]self.image_speed
push.d 0.5
push.v self.o
conv.v.i
pop.v.d [stacktop]self.image_alpha
push.v self.depth
pushi.e 1
add.i.v
push.v self.o
conv.v.i
pop.v.v [stacktop]self.depth

:[2]
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]