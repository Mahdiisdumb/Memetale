.localvar 0 arguments

:[0]
push.v self.direction
pop.v.v self.image_angle
push.d 0.3
pop.v.d self.friction
push.v self.hspeed
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.hspeed
push.d 0.1
sub.d.v
pop.v.v self.hspeed

:[2]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
bf [4]

:[3]
push.v self.hspeed
push.d 0.1
add.d.v
pop.v.v self.hspeed

:[4]
push.v 1587.x
pushi.e 8
add.i.v
push.v self.x
cmp.v.v GT
bf [6]

:[5]
push.v self.hspeed
push.d 0.1
add.d.v
pop.v.v self.hspeed

:[6]
push.v 1587.y
pushi.e 8
add.i.v
push.v self.y
cmp.v.v GT
bf [8]

:[7]
push.v self.vspeed
push.d 0.1
add.d.v
pop.v.v self.vspeed

:[8]
push.v 1587.y
pushi.e 8
add.i.v
push.v self.y
cmp.v.v LT
bf [10]

:[9]
push.v self.vspeed
push.d 0.12
sub.d.v
pop.v.v self.vspeed

:[10]
push.v 1587.x
pushi.e 8
add.i.v
push.v self.x
cmp.v.v LT
bf [12]

:[11]
push.v self.hspeed
push.d 0.1
sub.d.v
pop.v.v self.hspeed

:[12]
push.v self.y
pushi.e 380
cmp.i.v GT
bf [14]

:[13]
push.v self.hspeed
push.d 1.12
mul.d.v
pop.v.v self.hspeed

:[14]
push.v self.size
pop.v.v self.image_xscale
push.v self.size
pop.v.v self.image_yscale
push.v self.image_index
pushi.e 9
cmp.i.v GT
bf [16]

:[15]
push.v self.rp
pushi.e 2
cmp.i.v LT
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
pushi.e 5
pop.v.i self.image_index
push.v self.rp
pushi.e 1
add.i.v
pop.v.v self.rp

:[19]
push.v self.image_index
pushi.e 18
cmp.i.v GT
bf [24]

:[20]
push.v self.image_alpha
push.d 0.8
cmp.d.v GT
bf [22]

:[21]
push.d 0.8
pop.v.d self.image_alpha

:[22]
push.d 0.1
conv.d.v
push.i 16776960
conv.i.v
push.v self.image_blend
call.i merge_color(argc=3)
pop.v.v self.image_blend
push.v self.image_alpha
push.d 0.05
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 0.1
cmp.d.v LTE
bf [24]

:[23]
call.i instance_destroy(argc=0)
popz.v

:[24]
push.v self.image_index
pushi.e 40
cmp.i.v GTE
bf [end]

:[25]
call.i instance_destroy(argc=0)
popz.v

:[end]