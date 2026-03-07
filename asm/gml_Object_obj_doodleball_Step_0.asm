.localvar 0 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [8]

:[1]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.r
push.v self.maxr
cmp.v.v LT
bf [3]

:[2]
push.v self.r
pushi.e 10
add.i.v
pop.v.v self.r

:[3]
pushi.e 0
pop.v.i self.i

:[4]
push.v self.i
push.v self.num
cmp.v.v LT
bf [8]

:[5]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.child
call.i instance_exists(argc=1)
conv.v.b
bf [7]

:[6]
push.v self.x
push.v self.i
push.v self.num
div.v.v
pushi.e 360
mul.i.v
push.v self.siner
pushi.e 2
mul.i.v
add.v.v
push.v self.r
call.i lengthdir_x(argc=2)
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.child
conv.v.i
pop.v.v [stacktop]self.x
push.v self.y
push.v self.i
push.v self.num
div.v.v
pushi.e 360
mul.i.v
push.v self.siner
pushi.e 2
mul.i.v
add.v.v
push.v self.r
call.i lengthdir_y(argc=2)
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.child
conv.v.i
pop.v.v [stacktop]self.y

:[7]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [4]

:[8]
push.v self.x
pushi.e 800
cmp.i.v GT
bf [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
push.v self.x
pushi.e -200
cmp.i.v LT
bf [12]

:[11]
call.i instance_destroy(argc=0)
popz.v

:[12]
push.v self.y
pushi.e 700
cmp.i.v GT
bf [14]

:[13]
call.i instance_destroy(argc=0)
popz.v

:[14]
push.v self.y
pushi.e -200
cmp.i.v LT
bf [16]

:[15]
call.i instance_destroy(argc=0)
popz.v

:[16]
push.v self.speed
pushi.e 5
cmp.i.v GT
bf [end]

:[17]
push.v self.speed
pushi.e 1
sub.i.v
pop.v.v self.speed

:[end]