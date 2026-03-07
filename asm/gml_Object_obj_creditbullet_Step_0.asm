.localvar 0 arguments

:[0]
push.v self.image_angle
push.v self.aa
add.v.v
pop.v.v self.image_angle
push.v self.y
pushi.e 800
cmp.i.v GT
bf [2]

:[1]
push.v self.vspeed
pushi.e 0
cmp.i.v GT
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
pushi.e 800
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
bf [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
push.v self.y
pushi.e -200
cmp.i.v LT
bf [12]

:[11]
push.v self.vspeed
pushi.e 0
cmp.i.v LT
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
call.i instance_destroy(argc=0)
popz.v

:[15]
push.v self.x
pushi.e -200
cmp.i.v LT
bf [17]

:[16]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
call.i instance_destroy(argc=0)
popz.v

:[20]
push.v self.action
pushi.e 1
cmp.i.v EQ
bf [33]

:[21]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
bf [23]

:[22]
push.v self.x
pushbltn.v self.room_width
push.v self.width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
cmp.v.v LT
b [24]

:[23]
push.e 0

:[24]
bf [27]

:[25]
push.v self.speed
pushi.e 0
cmp.i.v GT
bf [27]

:[26]
push.v self.speed
push.d 0.5
sub.d.v
pop.v.v self.speed

:[27]
push.v self.hspeed
pushi.e 0
cmp.i.v GT
bf [29]

:[28]
push.v self.x
pushi.e 0
push.v self.width
pushi.e 2
conv.i.d
div.d.v
add.v.i
cmp.v.v GT
b [30]

:[29]
push.e 0

:[30]
bf [33]

:[31]
push.v self.speed
pushi.e 0
cmp.i.v GT
bf [33]

:[32]
push.v self.speed
push.d 0.5
sub.d.v
pop.v.v self.speed

:[33]
push.v self.action
pushi.e 3
cmp.i.v EQ
bf [end]

:[34]
push.v self.x
pushi.e -50
cmp.i.v LT
bf [36]

:[35]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
b [37]

:[36]
push.e 0

:[37]
bf [39]

:[38]
push.v self.x
pushi.e 710
add.i.v
pop.v.v self.x

:[39]
push.v self.x
pushbltn.v self.room_width
pushi.e 50
add.i.v
cmp.v.v GT
bf [41]

:[40]
push.v self.hspeed
pushi.e 0
cmp.i.v GT
b [42]

:[41]
push.e 0

:[42]
bf [end]

:[43]
push.v self.x
pushi.e 710
sub.i.v
pop.v.v self.x

:[end]