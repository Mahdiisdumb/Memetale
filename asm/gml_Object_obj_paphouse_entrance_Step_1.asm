.localvar 0 arguments

:[0]
push.v self.dooract
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1576
conv.i.v
push.v self.bbox_bottom
push.v self.bbox_right
push.v self.bbox_top
push.v self.bbox_left
call.i collision_rectangle(argc=7)
conv.v.b
bf [end]

:[2]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]