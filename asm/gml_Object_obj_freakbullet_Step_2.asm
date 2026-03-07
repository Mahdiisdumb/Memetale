.localvar 0 arguments

:[0]
push.v self.image_index
pushi.e 3
cmp.i.v GTE
bf [2]

:[1]
push.v self.image_index
pushi.e 8
cmp.i.v LTE
b [3]

:[2]
push.e 0

:[3]
bf [6]

:[4]
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
bf [6]

:[5]
pushi.e 6
conv.i.v
call.i event_user(argc=1)
popz.v

:[6]
pushglb.v global.turntimer
pushi.e 0
cmp.i.v LTE
bf [end]

:[7]
pushi.e -1
pop.v.i global.turntimer
pushi.e 3
pop.v.i global.mnfight
call.i instance_destroy(argc=0)
popz.v

:[end]