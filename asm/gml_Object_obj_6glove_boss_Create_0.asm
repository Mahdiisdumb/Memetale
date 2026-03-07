.localvar 0 arguments

:[0]
pushi.e 7
pop.v.i self.maxnum
pushi.e 3
pop.v.i self.angspeed
pushi.e 0
pop.v.i self.ourang
pushi.e 90
pop.v.i self.radius
pushi.e 0
pop.v.i self.radiusspeed
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.slower
pushi.e 0
pop.v.i self.spec
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
push.v self.maxnum
cmp.v.v LT
bf [3]

:[2]
pushi.e 1621
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.glove
push.v self.i
pushi.e 360
mul.i.v
push.v self.maxnum
div.v.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.gloveang
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.gloveang
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.glove
conv.v.i
pop.v.v [stacktop]self.ang
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
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
push.d 2.5
pop.v.d self.vspeed

:[end]