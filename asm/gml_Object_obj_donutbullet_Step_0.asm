.localvar 0 arguments

:[0]
pushi.e 364
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [24]

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
push.v self.image_yscale
pushi.e 1
cmp.i.v LT
bf [13]

:[12]
push.v self.image_yscale
push.d 0.1
add.d.v
pop.v.v self.image_yscale

:[13]
push.v self.vspeed
pushi.e 0
cmp.i.v GT
bf [15]

:[14]
push.v self.y
push.v self.op
conv.v.i
push.v [stacktop]self.yzero
push.v self.op
conv.v.i
push.v [stacktop]self.yamt
pushi.e 1
sub.i.v
push.v self.op
conv.v.i
push.v [stacktop]self.yspace
mul.v.v
add.v.v
pushi.e 10
add.i.v
cmp.v.v GT
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
push.v self.y
push.v self.vspeed
sub.v.v
pop.v.v self.y
push.v self.vspeed
neg.v
pop.v.v self.vspeed
push.d 0.6
pop.v.d self.image_yscale

:[18]
push.v self.vspeed
pushi.e 0
cmp.i.v LT
bf [20]

:[19]
push.v self.y
push.v self.op
conv.v.i
push.v [stacktop]self.yzero
pushi.e 10
sub.i.v
cmp.v.v LT
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
push.v self.y
push.v self.vspeed
sub.v.v
pop.v.v self.y
push.v self.vspeed
neg.v
pop.v.v self.vspeed
push.d 0.6
pop.v.d self.image_yscale

:[23]
b [end]

:[24]
call.i instance_destroy(argc=0)
popz.v

:[end]