.localvar 0 arguments

:[0]
pushi.e 1019
conv.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_yview
pushi.e 10
sub.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.newsnow
pushi.e 1
push.v self.newsnow
conv.v.i
pop.v.i [stacktop]self.falling
push.v self.ystart
push.v self.newsnow
conv.v.i
pop.v.v [stacktop]self.specialy

:[end]