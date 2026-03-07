.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
push.v self.num
cmp.v.v LT
bf [3]

:[2]
push.v 744.x
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
push.v 744.y
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
pushi.e 281
conv.i.v
push.v self.hy
push.v self.hx
call.i instance_create(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.spear
push.v self.fade
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spear
conv.v.i
pop.v.v [stacktop]self.fade
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
push.v self.rate
pushi.e 10
cmp.i.v GT
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
push.v self.rate
pushi.e 1
sub.i.v
pop.v.v self.rate

:[8]
push.v self.type
pushi.e 0
cmp.i.v EQ
bt [10]

:[9]
push.v self.type
pushi.e 3
cmp.i.v EQ
b [11]

:[10]
push.e 1

:[11]
bf [13]

:[12]
push.v self.curang
push.v self.ang
add.v.v
pop.v.v self.curang

:[13]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
push.v self.curang
pushi.e 10
pushi.e 30
conv.i.v
pushi.e 20
conv.i.v
pushi.e 10
conv.i.v
call.i choose(argc=3)
add.v.i
add.v.v
pop.v.v self.curang

:[15]
push.v self.rate
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [end]

:[16]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.siner
pushi.e 16
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 16
mul.i.v
pop.v.v self.ang
push.v self.ang
call.i abs(argc=1)
pushi.e 2
cmp.i.v LT
bf [21]

:[17]
push.v self.ang
pushi.e 0
cmp.i.v LT
bf [19]

:[18]
pushi.e -2
pop.v.i self.ang

:[19]
push.v self.ang
pushi.e 0
cmp.i.v GT
bf [21]

:[20]
pushi.e 2
pop.v.i self.ang

:[21]
push.v self.curang
push.v self.ang
add.v.v
pop.v.v self.curang

:[end]