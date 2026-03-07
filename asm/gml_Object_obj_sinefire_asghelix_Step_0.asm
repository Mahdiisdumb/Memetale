.localvar 0 arguments

:[0]
push.v self.s
pushi.e 1
add.i.v
pop.v.v self.s
push.v self.x
push.v self.s
push.v self.sv
div.v.v
call.i sin(argc=1)
push.v self.sf
mul.v.v
add.v.v
pop.v.v self.x
push.v self.y
pushbltn.v self.room_height
pushi.e 100
add.i.v
cmp.v.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
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
bf [end]

:[3]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]