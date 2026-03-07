.localvar 0 arguments

:[0]
push.v self.m
push.v self.maxm
cmp.v.v LT
bf [end]

:[1]
push.v self.object_index
pushbltn.v self.room_height
pushi.e 2
conv.i.d
div.d.v
pushbltn.v self.room_height
push.v self.m
pushi.e 1
add.i.v
div.v.v
sub.v.v
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
pushbltn.v self.room_width
push.v self.m
pushi.e 1
add.i.v
div.v.v
sub.v.v
call.i instance_create(argc=3)
popz.v

:[end]