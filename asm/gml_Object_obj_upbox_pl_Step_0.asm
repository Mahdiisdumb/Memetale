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
call.i room_restart(argc=0)
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
bf [9]

:[3]
push.v self.vspeed
push.d 0.5
cmp.d.v GT
bf [5]

:[4]
push.d 0.5
pop.v.d self.vspeed
b [6]

:[5]
pushi.e 4
pop.v.i self.vspeed

:[6]
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
push.v self.g
conv.v.i
pushenv [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
popenv [7]

:[9]
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