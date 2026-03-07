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
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[2]
push.v self.speed
push.v self.negaspeed
sub.v.v
pop.v.v self.speed

:[end]