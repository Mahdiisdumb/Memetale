.localvar 0 arguments

:[0]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 744
conv.i.v
push.v self.bbox_bottom
push.v self.bbox_right
push.v self.bbox_top
push.v self.bbox_left
call.i collision_rectangle(argc=7)
conv.v.b
bf [2]

:[1]
pushi.e 11
conv.i.v
call.i event_user(argc=1)
popz.v

:[2]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 740
conv.i.v
push.v self.y
pushi.e 22
add.i.v
push.v self.x
pushi.e 22
add.i.v
push.v self.y
pushi.e 2
add.i.v
push.v self.x
pushi.e 2
add.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [10]

:[3]
pushi.e 403
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [5]

:[4]
push.v global.ratings
pushi.e 20
add.i.v
pop.v.v global.ratings

:[5]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 740
conv.i.v
push.v self.y
pushi.e 22
add.i.v
push.v self.x
pushi.e 22
add.i.v
push.v self.y
pushi.e 2
add.i.v
push.v self.x
pushi.e 2
add.i.v
call.i collision_rectangle(argc=7)
pop.v.v self.g
pushi.e 129
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.g
conv.v.i
pushenv [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
popenv [6]
pushi.e 426
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.bp
push.v self.bp
call.i instance_exists(argc=1)
conv.v.b
bf [9]

:[8]
push.v self.sprite_index
push.v self.bp
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
push.v self.s
pushi.e 1
add.i.v
pop.v.v self.s
push.v self.xstart
push.v self.s
push.v self.sp
div.v.v
call.i sin(argc=1)
push.v self.sf
mul.v.v
add.v.v
pop.v.v self.x

:[end]