.localvar 0 arguments

:[0]
push.v self.x
pushi.e 0
cmp.i.v LT
bf [2]

:[1]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
push.v self.x
pushi.e 640
cmp.i.v GT
bf [7]

:[6]
push.v self.hspeed
pushi.e 0
cmp.i.v GT
b [8]

:[7]
push.e 0

:[8]
bf [end]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[end]