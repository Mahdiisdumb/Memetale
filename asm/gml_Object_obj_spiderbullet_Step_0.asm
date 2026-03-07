.localvar 0 arguments

:[0]
pushi.e 364
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [12]

:[1]
pushi.e 364
pop.v.i self.op
push.v self.hspeed
pushi.e 0
cmp.i.v GT
bf [3]

:[2]
push.v self.x
push.v self.op
conv.v.i
push.v [stacktop]self.xmid
push.v self.op
conv.v.i
push.v [stacktop]self.xlen
pushi.e 2
mul.i.v
add.v.v
cmp.v.v GT
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
bf [8]

:[7]
push.v self.x
push.v self.op
conv.v.i
push.v [stacktop]self.xmid
push.v self.op
conv.v.i
push.v [stacktop]self.xlen
pushi.e 2
mul.i.v
sub.v.v
cmp.v.v LT
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
call.i instance_destroy(argc=0)
popz.v

:[11]
b [end]

:[12]
call.i instance_destroy(argc=0)
popz.v

:[end]