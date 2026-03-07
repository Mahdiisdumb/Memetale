.localvar 0 arguments

:[0]
pushglb.v global.currentsong
call.i caster_get_volume(argc=1)
pop.v.v self.vol
push.v self.vol
pushi.e 2
conv.i.d
div.d.v
pushglb.v global.currentsong
call.i caster_set_volume(argc=2)
popz.v
push.v self.x
pop.v.v self.xbound
push.v self.x
pushi.e 320
add.i.v
pop.v.v self.xbound2
push.v self.y
pop.v.v self.ybound
push.v self.y
pushi.e 240
add.i.v
pop.v.v self.ybound2
pushi.e 1365
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.st
pushi.e 1
push.v self.st
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e -10
push.v self.st
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 1563
push.v self.st
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 0.2
push.v self.st
conv.v.i
pop.v.d [stacktop]self.image_speed
pushbltn.v self.room
pushi.e 95
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1562
pop.v.i self.sprite_index

:[2]
pushi.e 0
pop.v.i self.buffer
pushi.e 2
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
push.d 0.1
pop.v.d self.image_speed
push.v self.sprite_index
call.i scr_getsprite(argc=1)
pop.v.v self.sprite_index
pushi.e 0
pop.v.i self.dest
pushi.e 0
pop.v.i self.dest_timer

:[end]