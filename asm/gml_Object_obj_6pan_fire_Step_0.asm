.localvar 0 arguments

:[0]
push.v self.vspeed
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
pushi.e -13
pop.v.i self.depth

:[2]
pushi.e 1
pop.v.i self.visible
push.v self.y
pushbltn.v self.room_height
cmp.v.v GT
bf [end]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[end]