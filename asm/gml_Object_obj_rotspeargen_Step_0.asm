.localvar 0 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [21]

:[1]
push.v self.rotspeed
push.v self.rotmin
cmp.v.v GT
bf [3]

:[2]
push.v self.rotspeed
push.d 0.2
sub.d.v
pop.v.v self.rotspeed

:[3]
push.v self.rotspeed
push.v self.rotmin
cmp.v.v LT
bf [5]

:[4]
push.v self.rotspeed
push.d 0.2
add.d.v
pop.v.v self.rotspeed

:[5]
pushi.e 0
pop.v.i self.i

:[6]
push.v self.i
push.v self.num
cmp.v.v LT
bf [16]

:[7]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spear
call.i instance_exists(argc=1)
conv.v.b
bf [11]

:[8]
push.v self.x
push.v self.curang
push.v self.i
push.v self.num
div.v.v
pushi.e 360
mul.i.v
add.v.v
push.v self.rr
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.hx
push.v self.y
push.v self.curang
push.v self.i
push.v self.num
div.v.v
pushi.e 360
mul.i.v
add.v.v
push.v self.rr
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.hy
push.v self.hx
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spear
conv.v.i
pop.v.v [stacktop]self.x
push.v self.hy
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spear
conv.v.i
pop.v.v [stacktop]self.y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spear
conv.v.i
pushenv [10]

:[9]
push.v self.parent
conv.v.i
push.v [stacktop]self.y
push.v self.parent
conv.v.i
push.v [stacktop]self.x
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.image_angle

:[10]
popenv [9]

:[11]
push.v self.rr
pushi.e 8
cmp.i.v LT
bf [15]

:[12]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spear
conv.v.i
pushenv [14]

:[13]
pushi.e 1
pop.v.i self.deactivate

:[14]
popenv [13]

:[15]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [6]

:[16]
push.v self.rr
pushi.e 8
cmp.i.v LT
bf [18]

:[17]
push.v self.rr
pushi.e 1
add.i.v
pop.v.v self.rr
push.v self.rotspeed
push.d 0.8
mul.d.v
pop.v.v self.rotspeed

:[18]
push.v self.rr
pushi.e -20
cmp.i.v LT
bf [20]

:[19]
call.i instance_destroy(argc=0)
popz.v

:[20]
push.v self.rr
pushi.e 4
sub.i.v
pop.v.v self.rr
push.v self.curang
push.v self.rotspeed
add.v.v
pop.v.v self.curang

:[21]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LT
bf [end]

:[22]
call.i instance_destroy(argc=0)
popz.v

:[end]