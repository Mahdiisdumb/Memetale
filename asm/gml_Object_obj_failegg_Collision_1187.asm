.localvar 0 arguments

:[0]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.image_angle
push.v self.ang
sub.v.v
pop.v.v self.image_angle
push.v self.hspeed
pushi.e 2
div.i.v
pop.v.v self.hspeed

:[end]