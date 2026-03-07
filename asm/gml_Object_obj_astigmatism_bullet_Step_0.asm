.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.y
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i cos(argc=1)
push.d 0.6
mul.d.v
add.v.v
pop.v.v self.y
push.v self.asiner
push.v self.av
add.v.v
pop.v.v self.asiner
push.v self.kid
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e -2
push.v self.x
add.v.i
push.v self.asiner
pushi.e 16
conv.i.d
div.d.v
call.i sin(argc=1)
push.v self.factor1
mul.v.v
add.v.v
push.v self.kid
conv.v.i
pop.v.v [stacktop]self.x
push.v self.y
push.v self.asiner
pushi.e 16
conv.i.d
div.d.v
call.i cos(argc=1)
push.v self.factor1
mul.v.v
add.v.v
push.v self.kid
conv.v.i
pop.v.v [stacktop]self.y

:[2]
push.v self.kid2
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[3]
push.v self.x
push.v self.asiner
pushi.e 16
conv.i.d
div.d.v
call.i sin(argc=1)
push.v self.factor2
mul.v.v
add.v.v
push.v self.kid2
conv.v.i
pop.v.v [stacktop]self.x
push.v self.y
push.v self.asiner
pushi.e 16
conv.i.d
div.d.v
call.i cos(argc=1)
push.v self.factor2
mul.v.v
add.v.v
push.v self.kid2
conv.v.i
pop.v.v [stacktop]self.y

:[4]
push.v self.x
pushi.e 0
cmp.i.v LT
bf [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [8]

:[7]
push.v self.off
pushi.e 0
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha

:[11]
push.v self.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 30
sub.i.v
cmp.v.v LT
bf [13]

:[12]
pushi.e 1
pop.v.i self.off

:[13]
push.v self.off
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
push.v self.image_alpha
push.d 0.05
sub.d.v
pop.v.v self.image_alpha

:[15]
push.v self.image_alpha
push.d 0.1
cmp.d.v LT
bf [17]

:[16]
push.v self.off
pushi.e 1
cmp.i.v EQ
b [18]

:[17]
push.e 0

:[18]
bf [end]

:[19]
call.i instance_destroy(argc=0)
popz.v

:[end]