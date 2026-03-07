.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 2
sub.i.v
pop.v.v self.wall_l
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 22
sub.i.v
pop.v.v self.wall_r
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 22
sub.i.v
pop.v.v self.wall_d
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 2
sub.i.v
pop.v.v self.wall_u
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [21]

:[1]
push.v self.hspeed
pushi.e 0
cmp.i.v GT
bf [3]

:[2]
push.v self.x
push.v self.wall_r
cmp.v.v GT
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 0
pop.v.i self.vspeed
pushi.e -2
pop.v.i self.hspeed

:[6]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
bf [8]

:[7]
push.v self.x
push.v self.wall_l
cmp.v.v LT
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 0
pop.v.i self.vspeed
pushi.e 2
pop.v.i self.hspeed

:[11]
push.v self.vspeed
pushi.e 0
cmp.i.v GT
bf [13]

:[12]
push.v self.y
push.v self.wall_d
cmp.v.v GT
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e -2
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.hspeed

:[16]
push.v self.vspeed
pushi.e 0
cmp.i.v LT
bf [18]

:[17]
push.v self.y
push.v self.wall_u
cmp.v.v LT
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 2
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.hspeed

:[21]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [23]

:[22]
push.v self.off
pushi.e 0
cmp.i.v EQ
b [24]

:[23]
push.e 0

:[24]
bf [26]

:[25]
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha

:[26]
push.v self.off
pushi.e 1
cmp.i.v EQ
bf [28]

:[27]
push.v self.image_alpha
push.d 0.05
sub.d.v
pop.v.v self.image_alpha

:[28]
push.v self.image_alpha
push.d 0.1
cmp.d.v LT
bf [30]

:[29]
push.v self.off
pushi.e 1
cmp.i.v EQ
b [31]

:[30]
push.e 0

:[31]
bf [end]

:[32]
call.i instance_destroy(argc=0)
popz.v

:[end]