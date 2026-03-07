.localvar 0 arguments

:[0]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.curang
pushi.e 8
pop.v.i self.rotspeed
pushi.e 2
pop.v.i self.rotmin
pushi.e 7
pop.v.i self.num
pushi.e 20
pop.v.i self.rate
pushi.e 220
pop.v.i self.rr

:[2]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 0
pop.v.i self.curang
pushi.e -8
pop.v.i self.rotspeed
pushi.e -2
pop.v.i self.rotmin
pushi.e 7
pop.v.i self.num
pushi.e 20
pop.v.i self.rate
pushi.e 220
pop.v.i self.rr

:[4]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.curang
pushi.e 8
pop.v.i self.rotspeed
pushi.e 2
pop.v.i self.rotmin
pushi.e 8
pop.v.i self.num
pushi.e 20
pop.v.i self.rate
pushi.e 230
pop.v.i self.rr

:[6]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [8]

:[7]
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.curang
pushi.e -8
pop.v.i self.rotspeed
pushi.e -2
pop.v.i self.rotmin
pushi.e 8
pop.v.i self.num
pushi.e 20
pop.v.i self.rate
pushi.e 230
pop.v.i self.rr

:[8]
pushi.e 0
pop.v.i self.i

:[9]
push.v self.i
push.v self.num
cmp.v.v LT
bf [13]

:[10]
push.v self.x
pushi.e 8
add.i.v
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
pushi.e 8
add.i.v
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
pushi.e 279
conv.i.v
push.v self.hy
push.v self.hx
call.i instance_create(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.spear
push.v self.id
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spear
conv.v.i
pop.v.v [stacktop]self.parent
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spear
conv.v.i
pushenv [12]

:[11]
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

:[12]
popenv [11]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [9]

:[13]
pushi.e 1
pop.v.i self.active

:[end]