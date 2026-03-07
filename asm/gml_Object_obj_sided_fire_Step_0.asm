.localvar 0 arguments

:[0]
push.v self.y
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
cmp.v.v GT
bf [2]

:[1]
push.v self.vspeed
pushi.e 0
cmp.i.v GT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
push.v self.y
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
push.v self.sprite_height
sub.v.v
cmp.v.v LT
bf [7]

:[6]
push.v self.vspeed
pushi.e 0
cmp.i.v LT
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
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

:[11]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]