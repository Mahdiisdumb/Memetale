.localvar 0 arguments

:[0]
push.v self.lv
pushi.e 1
cmp.i.v EQ
bf [6]

:[1]
pushi.e 5
pop.v.i self.hspeed
push.v self.amount
pushi.e 1
add.i.v
pop.v.v self.amount
pushi.e 20
pop.v.i self.amt
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
push.v self.amt
cmp.v.v LT
bf [4]

:[3]
pushi.e 473
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.fr
push.v self.i
pushi.e 360
conv.i.d
push.v self.amt
div.v.d
mul.v.v
push.v self.baseang
add.v.v
push.v self.fr
conv.v.i
pop.v.v [stacktop]self.direction
pushi.e 3
push.v self.fr
conv.v.i
pop.v.i [stacktop]self.speed
push.d -0.15
push.v self.fr
conv.v.i
pop.v.d [stacktop]self.friction
pushi.e 2
push.v self.fr
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.fr
conv.v.i
pop.v.i [stacktop]self.image_yscale
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[4]
pushi.e 8
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
push.v self.amount
push.v self.maxamount
cmp.v.v GT
bf [6]

:[5]
pushi.e -1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[6]
push.v self.lv
pushi.e 2
cmp.i.v EQ
bf [12]

:[7]
pushi.e 6
pop.v.i self.hspeed
push.v self.amount
push.d 1.2
add.d.v
pop.v.v self.amount
pushi.e 22
pop.v.i self.amt
push.v self.baseang
push.d 1.5
add.d.v
pop.v.v self.baseang
pushi.e 0
pop.v.i self.i

:[8]
push.v self.i
push.v self.amt
cmp.v.v LT
bf [10]

:[9]
pushi.e 473
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.fr
push.v self.i
pushi.e 360
conv.i.d
push.v self.amt
div.v.d
mul.v.v
push.v self.baseang
add.v.v
push.v self.fr
conv.v.i
pop.v.v [stacktop]self.direction
push.d 3.5
push.v self.fr
conv.v.i
pop.v.d [stacktop]self.speed
push.d -0.17
push.v self.fr
conv.v.i
pop.v.d [stacktop]self.friction
pushi.e 2
push.v self.fr
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.fr
conv.v.i
pop.v.i [stacktop]self.image_yscale
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [8]

:[10]
pushi.e 7
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
push.v self.amount
push.v self.maxamount
cmp.v.v GT
bf [12]

:[11]
pushi.e -1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[12]
push.v self.lv
pushi.e 3
cmp.i.v EQ
bf [end]

:[13]
pushi.e 8
pop.v.i self.hspeed
push.v self.amount
push.d 1.2
add.d.v
pop.v.v self.amount
pushi.e 22
pop.v.i self.amt
push.v self.baseang
pushi.e 2
add.i.v
pop.v.v self.baseang
pushi.e 0
pop.v.i self.i

:[14]
push.v self.i
push.v self.amt
cmp.v.v LT
bf [16]

:[15]
pushi.e 473
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.fr
push.v self.i
pushi.e 360
conv.i.d
push.v self.amt
div.v.d
mul.v.v
push.v self.baseang
add.v.v
push.v self.fr
conv.v.i
pop.v.v [stacktop]self.direction
pushi.e 12
push.v self.fr
conv.v.i
pop.v.i [stacktop]self.speed
push.d 0.06
push.v self.fr
conv.v.i
pop.v.d [stacktop]self.friction
pushi.e 2
push.v self.fr
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.fr
conv.v.i
pop.v.i [stacktop]self.image_yscale
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [14]

:[16]
pushi.e 6
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
push.v self.amount
push.v self.maxamount
cmp.v.v GT
bf [end]

:[17]
pushi.e -1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]