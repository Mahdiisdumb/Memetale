.localvar 0 arguments

:[0]
push.d 1.1
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.5
mul.d.v
add.v.d
pop.v.v self.angspeed
push.v self.radius
push.v self.siner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.v
pop.v.v self.radius
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
push.v self.maxnum
cmp.v.v LT
bf [5]

:[2]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.glove
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[3]
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.gloveang
push.v self.angspeed
add.v.v
pop.i.v [array]self.gloveang
push.v self.x
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.gloveang
push.v self.ourang
add.v.v
push.v self.radius
call.i lengthdir_x(argc=2)
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.glove
conv.v.i
pop.v.v [stacktop]self.x
push.v self.y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.gloveang
push.v self.ourang
add.v.v
push.v self.radius
call.i lengthdir_y(argc=2)
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.glove
conv.v.i
pop.v.v [stacktop]self.y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.gloveang
push.v self.ourang
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.glove
conv.v.i
pop.v.v [stacktop]self.image_angle

:[4]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[5]
push.v self.x
pushi.e 0
cmp.i.v LT
bf [7]

:[6]
push.v self.hspeed
neg.v
pop.v.v self.hspeed

:[7]
push.v self.x
pushbltn.v self.room_width
cmp.v.v GT
bf [9]

:[8]
push.v self.hspeed
neg.v
pop.v.v self.hspeed

:[9]
push.v self.slower
pushi.e 1
cmp.i.v EQ
bf [13]

:[10]
push.v self.speed
pushi.e 0
cmp.i.v GT
bf [12]

:[11]
push.v self.speed
push.d 0.05
sub.d.v
pop.v.v self.speed
b [13]

:[12]
pushi.e 0
pop.v.i self.speed

:[13]
push.v self.y
pushi.e 1000
cmp.i.v GT
bf [16]

:[14]
push.v self.spec
pushi.e 0
cmp.i.v EQ
bf [16]

:[15]
call.i instance_destroy(argc=0)
popz.v

:[16]
push.v self.y
pushbltn.v self.room_height
cmp.v.v GT
bf [22]

:[17]
push.v self.spec
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
push.v self.vspeed
pushi.e 0
cmp.i.v GT
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
push.v self.vspeed
call.i abs(argc=1)
neg.v
pop.v.v 1623.vspeed

:[22]
push.v self.y
pushi.e 0
cmp.i.v LT
bf [end]

:[23]
push.v self.spec
pushi.e 1
cmp.i.v EQ
bf [25]

:[24]
push.v self.vspeed
pushi.e 0
cmp.i.v LT
b [26]

:[25]
push.e 0

:[26]
bf [end]

:[27]
push.v self.vspeed
call.i abs(argc=1)
pop.v.v 1623.vspeed

:[end]