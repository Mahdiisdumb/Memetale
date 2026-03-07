.localvar 0 arguments

:[0]
push.v self.y
pushi.e 190
cmp.i.v GT
bf [2]

:[1]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.vspeed
push.v self.y
pop.v.v self.yanchor
push.v self.x
pop.v.v self.xanchor
pushi.e 1
pop.v.i self.anchor

:[5]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.v self.image_xscale
pushi.e 1
cmp.i.v LT
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
push.v self.image_xscale
push.d 0.05
add.d.v
pop.v.v self.image_xscale

:[10]
push.v 1587.y
pushi.e 8
add.i.v
push.v 1587.x
pushi.e 8
add.i.v
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.image_angle
push.v self.side
pushi.e 0
cmp.i.v EQ
bf [15]

:[11]
push.v self.image_angle
pushi.e 312
cmp.i.v GT
bf [13]

:[12]
pushi.e 312
pop.v.i self.image_angle

:[13]
push.v self.image_angle
pushi.e 260
cmp.i.v LT
bf [15]

:[14]
pushi.e 260
pop.v.i self.image_angle

:[15]
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [20]

:[16]
push.v self.image_angle
pushi.e 225
cmp.i.v LT
bf [18]

:[17]
pushi.e 225
pop.v.i self.image_angle

:[18]
push.v self.image_angle
pushi.e 280
cmp.i.v GT
bf [20]

:[19]
pushi.e 280
pop.v.i self.image_angle

:[20]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [end]

:[21]
pushi.e -5
pop.v.i self.vspeed
pushi.e -1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
push.v self.image_xscale
push.d 0.1
cmp.d.v GT
bf [23]

:[22]
push.v self.image_xscale
push.d 0.1
sub.d.v
pop.v.v self.image_xscale

:[23]
push.v self.y
pushi.e 150
cmp.i.v LTE
bf [end]

:[24]
call.i instance_destroy(argc=0)
popz.v

:[end]