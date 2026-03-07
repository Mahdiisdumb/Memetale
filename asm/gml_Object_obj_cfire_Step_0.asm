.localvar 0 arguments

:[0]
push.v self.r
push.v self.rspeed
sub.v.v
pop.v.v self.r
push.v self.ang
push.v self.angspeed
add.v.v
pop.v.v self.ang
push.v self.r
push.d 0.5
cmp.d.v LTE
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
push.v self.centerx
push.v self.ang
push.v self.r
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.x
push.v self.centery
push.v self.ang
push.v self.r
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.y
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