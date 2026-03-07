.localvar 0 arguments

:[0]
pushi.e 364
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [16]

:[1]
pushi.e 364
pop.v.i self.op
push.v self.side
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v self.hspeed
push.d 0.25
sub.d.v
pop.v.v self.hspeed
push.v self.image_angle
pushi.e 8
add.i.v
pop.v.v self.image_angle

:[3]
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
push.v self.hspeed
push.d 0.25
add.d.v
pop.v.v self.hspeed
push.v self.image_angle
pushi.e 8
sub.i.v
pop.v.v self.image_angle

:[5]
push.v self.hspeed
pushi.e 0
cmp.i.v GT
bf [7]

:[6]
push.v self.x
push.v self.op
conv.v.i
push.v [stacktop]self.xmid
push.v self.op
conv.v.i
push.v [stacktop]self.xlen
pushi.e 5
mul.i.v
add.v.v
cmp.v.v GT
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
bf [12]

:[11]
push.v self.x
push.v self.op
conv.v.i
push.v [stacktop]self.xmid
push.v self.op
conv.v.i
push.v [stacktop]self.xlen
pushi.e 5
mul.i.v
sub.v.v
cmp.v.v LT
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
call.i instance_destroy(argc=0)
popz.v

:[15]
b [end]

:[16]
call.i instance_destroy(argc=0)
popz.v

:[end]