.localvar 0 arguments

:[0]
push.v self.image_alpha
push.d 0.05
add.d.v
pop.v.v self.image_alpha
push.v self.image_angle
push.v self.rotspeed
sub.v.v
pop.v.v self.image_angle
push.v self.rotspeed
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.rotspeed
pushi.e 2
sub.i.v
pop.v.v self.rotspeed

:[2]
push.v self.rotspeed
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.v self.speed
pushi.e 1
cmp.i.v LT
b [5]

:[4]
push.e 0

:[5]
bf [8]

:[6]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 5
cmp.i.v EQ
bf [8]

:[7]
pushi.e 8
pop.v.i self.speed
push.d -0.3
pop.v.d self.friction
push.v self.image_angle
pop.v.v self.direction
push.v self.direction
pop.v.v self.image_angle

:[8]
push.v self.fade
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
push.v self.speed
pushi.e 7
cmp.i.v GTE
b [11]

:[10]
push.e 0

:[11]
bf [14]

:[12]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 22
cmp.i.v GTE
bf [14]

:[13]
pushi.e 1
pop.v.i self.deactivate

:[14]
push.v self.direction
pushi.e 25
conv.i.v
call.i lengthdir_x(argc=2)
pop.v.v self.xoff
push.v self.direction
pushi.e 25
conv.i.v
call.i lengthdir_y(argc=2)
pop.v.v self.yoff
push.v self.rotspeed
pushi.e 0
cmp.i.v EQ
bf [16]

:[15]
push.v self.deactivate
pushi.e 0
cmp.i.v EQ
b [17]

:[16]
push.e 0

:[17]
bf [24]

:[18]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 744
conv.i.v
push.v self.y
push.v self.yoff
add.v.v
push.v self.x
push.v self.xoff
add.v.v
push.v self.y
push.v self.yoff
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.x
push.v self.xoff
pushi.e 2
conv.i.d
div.d.v
sub.v.v
call.i collision_line(argc=7)
conv.v.b
bf [24]

:[19]
pushglb.v global.hp
pushi.e 1
cmp.i.v GT
bf [23]

:[20]
call.i scr_damagestandard_x(argc=0)
popz.v
pushglb.v global.hp
pushi.e 0
cmp.i.v LTE
bf [22]

:[21]
pushi.e 1
pop.v.i global.hp

:[22]
b [24]

:[23]
pushi.e 0
pop.v.i global.hp

:[24]
push.v self.deactivate
pushi.e 1
cmp.i.v EQ
bf [27]

:[25]
push.v self.image_alpha
push.d 0.25
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [27]

:[26]
call.i instance_destroy(argc=0)
popz.v

:[27]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LT
bf [end]

:[28]
call.i instance_destroy(argc=0)
popz.v

:[end]