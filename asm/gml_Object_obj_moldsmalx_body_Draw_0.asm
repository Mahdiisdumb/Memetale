.localvar 0 arguments

:[0]
push.v self.stage
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v

:[2]
push.v self.stage
pushi.e 1
cmp.i.v EQ
bf [9]

:[3]
push.v self.xsin
pushi.e 10
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 4
mul.i.v
pop.v.v self.xsin2
pushi.e 275
pop.v.i self.sprite_index
pushi.e 293
conv.i.v
push.v self.y
pushi.e 170
add.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.g
pushi.e 1
push.v self.g
conv.v.i
pop.v.i [stacktop]self.c
pushi.e 293
conv.i.v
push.v self.y
pushi.e 140
add.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.g
pushi.e 293
conv.i.v
push.v self.y
pushi.e 110
add.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.g
pushi.e 1
push.v self.g
conv.v.i
pop.v.i [stacktop]self.c
pushi.e 293
conv.i.v
push.v self.y
pushi.e 80
add.i.v
push.v self.x
call.i instance_create(argc=3)
popz.v
pushbltn.v self.room
pushi.e 278
cmp.i.v EQ
bt [5]

:[4]
pushbltn.v self.room
pushi.e 305
cmp.i.v EQ
b [6]

:[5]
push.e 1

:[6]
bf [8]

:[7]
push.v self.ystart
pushi.e 100
add.i.v
pop.v.v 293.bborder

:[8]
pushi.e 2
pop.v.i self.stage

:[9]
push.v self.stage
pushi.e 2
cmp.i.v EQ
bf [12]

:[10]
push.v self.height
pushi.e 2
add.i.v
pop.v.v self.height
push.v self.y
pushi.e 4
sub.i.v
pop.v.v self.y
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
push.v self.xsin2
add.v.v
push.v self.height
pushi.e 50
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_part_ext(argc=12)
popz.v
push.v self.height
pushi.e 104
cmp.i.v GT
bf [12]

:[11]
pushi.e 3
pop.v.i self.stage

:[12]
push.v self.stage
pushi.e 3
cmp.i.v EQ
bf [end]

:[13]
pushi.e 2
pop.v.i 293.f
push.v self.xsin
pushi.e 10
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 4
mul.i.v
pop.v.v self.xsin2
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
push.v self.xsin2
add.v.v
push.v self.height
pushi.e 50
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_part_ext(argc=12)
popz.v
push.v self.xsin
pushi.e 1
add.i.v
pop.v.v self.xsin

:[end]