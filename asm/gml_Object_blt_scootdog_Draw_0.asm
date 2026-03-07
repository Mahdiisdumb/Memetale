.localvar 0 arguments

:[0]
call.i draw_self_border(argc=0)
popz.v
push.v self.x
pushi.e 0
cmp.i.v LT
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
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]