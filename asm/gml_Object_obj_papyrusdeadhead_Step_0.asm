.localvar 0 arguments

:[0]
push.v self.c
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.d 1.5
pop.v.d self.hspeed
push.d 0.2
pop.v.d self.gravity
pushi.e 270
pop.v.i self.gravity_direction
pushi.e -1
pop.v.i self.vspeed
pushi.e 2
pop.v.i self.c

:[2]
push.v self.c
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
push.v self.y
push.v self.ystart
pushi.e 70
add.i.v
cmp.v.v GT
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.gravity
pushi.e 3
pop.v.i self.c

:[7]
push.v self.c
pushi.e 5
cmp.i.v EQ
bf [9]

:[8]
push.d 0.2
pop.v.d self.gravity
pushi.e 6
pop.v.i self.c

:[9]
push.v self.c
pushi.e 6
cmp.i.v EQ
bf [11]

:[10]
push.v self.y
push.v self.ystart
pushi.e 135
add.i.v
cmp.v.v GT
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.gravity

:[14]
push.v self.c
pushi.e 7
cmp.i.v EQ
bf [end]

:[15]
pushi.e 156
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.ddd
push.v self.ddd
conv.v.i
pushenv [17]

:[16]
pushi.e 10
conv.i.v
call.i scr_newvapordata(argc=1)
popz.v

:[17]
popenv [16]
push.v self.sprite_index
push.v self.ddd
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.sprite_height
push.v self.ddd
conv.v.i
pop.v.v [stacktop]self.ht
push.v self.sprite_width
push.v self.ddd
conv.v.i
pop.v.v [stacktop]self.wd
call.i instance_destroy(argc=0)
popz.v

:[end]