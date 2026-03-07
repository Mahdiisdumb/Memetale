.localvar 0 arguments

:[0]
push.v self.stop
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.image_angle
push.v self.aa
add.v.v
pop.v.v self.image_angle

:[2]
push.v self.y
pushi.e 580
cmp.i.v GT
bf [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
push.v self.x
pushi.e 640
cmp.i.v GT
bf [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
push.v self.x
pushi.e 0
cmp.i.v LT
bf [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
push.v self.y
push.v self.ystart
pushi.e 70
sub.i.v
cmp.v.v LT
bf [10]

:[9]
pushi.e -1112
pop.v.i self.depth

:[10]
push.v self.depth
pushi.e 0
cmp.i.v LT
bf [12]

:[11]
push.v self.image_xscale
pushi.e 2
cmp.i.v LT
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
push.v self.image_xscale
push.d 0.05
add.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.05
add.d.v
pop.v.v self.image_yscale

:[15]
push.v self.y
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 10
sub.i.v
cmp.v.v GT
bf [17]

:[16]
push.v self.stop
pushi.e 0
cmp.i.v EQ
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
pushi.e 1
pop.v.i self.stop
pushi.e 0
pop.v.i self.speed
pushi.e 0
pop.v.i self.gravity

:[20]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v NEQ
bf [22]

:[21]
push.v self.deactivate
pushi.e 0
cmp.i.v EQ
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
pushi.e 1
pop.v.i self.deactivate

:[25]
push.v self.deactivate
pushi.e 1
cmp.i.v EQ
bf [end]

:[26]
pushi.e 2
pop.v.i self.stop
push.d 0.8
push.d 0.3
conv.d.v
call.i random(argc=1)
add.v.d
pop.v.v self.gravity
pushi.e 2
pop.v.i self.deactivate

:[end]