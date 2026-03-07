.localvar 0 arguments

:[0]
push.v self.y
pushbltn.v self.room_height
cmp.v.v GT
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]