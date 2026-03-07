.localvar 0 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [44]

:[1]
push.v self.site
pushi.e 0
cmp.i.v EQ
bf [4]

:[2]
push.v self.x
push.v self.object0
conv.v.i
push.v [stacktop]self.x
pushi.e 80
sub.i.v
cmp.v.v GT
bf [4]

:[3]
push.v self.part
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 1
pop.v.i self.part

:[7]
push.v self.site
pushi.e 1
cmp.i.v EQ
bf [10]

:[8]
push.v self.x
push.v self.object0
conv.v.i
push.v [stacktop]self.x
pushi.e 80
add.i.v
cmp.v.v LT
bf [10]

:[9]
push.v self.part
pushi.e 0
cmp.i.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
pushi.e 1
pop.v.i self.part

:[13]
push.v self.site
pushi.e 2
cmp.i.v EQ
bf [16]

:[14]
push.v self.y
push.v self.object0
conv.v.i
push.v [stacktop]self.y
pushi.e 80
add.i.v
cmp.v.v LT
bf [16]

:[15]
push.v self.part
pushi.e 0
cmp.i.v EQ
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
pushi.e 1
pop.v.i self.part

:[19]
push.v self.site
pushi.e 3
cmp.i.v EQ
bf [22]

:[20]
push.v self.y
push.v self.object0
conv.v.i
push.v [stacktop]self.y
pushi.e 80
sub.i.v
cmp.v.v GT
bf [22]

:[21]
push.v self.part
pushi.e 0
cmp.i.v EQ
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
pushi.e 1
pop.v.i self.part

:[25]
pushi.e 10
pop.v.i self.rater
pushi.e 20
pop.v.i self.r2
push.v self.part
pushi.e 1
cmp.i.v EQ
bf [29]

:[26]
pushi.e 0
pop.v.i self.siner
pushi.e 2
pop.v.i self.part
pushi.e 0
pop.v.i self.speed
push.v self.x
pop.v.v self.remx
push.v self.y
pop.v.v self.remy
pushi.e 0
pop.v.i self.xrate
push.v self.rating
pushi.e 8
cmp.i.v GT
bf [28]

:[27]
push.v self.rating
pushi.e 8
sub.i.v
pop.v.v self.xrate

:[28]
pushi.e 145
push.v self.xrate
pushi.e 8
mul.i.v
add.v.i
pop.v.v self.totalx

:[29]
push.v self.down
pushi.e 1
cmp.i.v EQ
bf [31]

:[30]
push.v self.countdown
pushi.e 1
sub.i.v
pop.v.v self.countdown
pushi.e 0
pop.v.i self.down

:[31]
push.v self.part
pushi.e 2
cmp.i.v EQ
bf [44]

:[32]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.site
pushi.e 0
cmp.i.v EQ
bf [35]

:[33]
push.v self.remx
push.v self.siner
push.d 3.141592653589793
mul.d.v
push.v self.r2
div.v.v
call.i sin(argc=1)
push.v self.totalx
mul.v.v
add.v.v
pop.v.v self.x
push.v self.remy
push.v self.siner
push.d 3.141592653589793
mul.d.v
push.v self.rater
div.v.v
call.i sin(argc=1)
pushi.e 100
mul.i.v
sub.v.v
pop.v.v self.y
push.v self.siner
push.v self.rater
cmp.v.v EQ
bf [35]

:[34]
pushi.e 3
pop.v.i self.part
pushi.e -8
push.v self.speedmod
mul.v.i
pop.v.v self.hspeed

:[35]
push.v self.site
pushi.e 1
cmp.i.v EQ
bf [38]

:[36]
push.v self.remx
push.v self.siner
push.d 3.141592653589793
mul.d.v
push.v self.r2
div.v.v
call.i sin(argc=1)
push.v self.totalx
mul.v.v
sub.v.v
pop.v.v self.x
push.v self.remy
push.v self.siner
push.d 3.141592653589793
mul.d.v
push.v self.rater
div.v.v
call.i sin(argc=1)
pushi.e 100
mul.i.v
sub.v.v
pop.v.v self.y
push.v self.siner
push.v self.rater
cmp.v.v EQ
bf [38]

:[37]
pushi.e 3
pop.v.i self.part
pushi.e 8
push.v self.speedmod
mul.v.i
pop.v.v self.hspeed

:[38]
push.v self.site
pushi.e 2
cmp.i.v EQ
bf [41]

:[39]
push.v self.remy
push.v self.siner
push.d 3.141592653589793
mul.d.v
push.v self.r2
div.v.v
call.i sin(argc=1)
push.v self.totalx
mul.v.v
sub.v.v
pop.v.v self.y
push.v self.remx
push.v self.siner
push.d 3.141592653589793
mul.d.v
push.v self.rater
div.v.v
call.i sin(argc=1)
pushi.e 100
mul.i.v
sub.v.v
pop.v.v self.x
push.v self.siner
push.v self.rater
cmp.v.v EQ
bf [41]

:[40]
pushi.e 3
pop.v.i self.part
pushi.e 8
push.v self.speedmod
mul.v.i
pop.v.v self.vspeed

:[41]
push.v self.site
pushi.e 3
cmp.i.v EQ
bf [44]

:[42]
push.v self.remy
push.v self.siner
push.d 3.141592653589793
mul.d.v
push.v self.r2
div.v.v
call.i sin(argc=1)
push.v self.totalx
mul.v.v
add.v.v
pop.v.v self.y
push.v self.remx
push.v self.siner
push.d 3.141592653589793
mul.d.v
push.v self.rater
div.v.v
call.i sin(argc=1)
pushi.e 100
mul.i.v
add.v.v
pop.v.v self.x
push.v self.siner
push.v self.rater
cmp.v.v EQ
bf [44]

:[43]
pushi.e 3
pop.v.i self.part
pushi.e -8
push.v self.speedmod
mul.v.i
pop.v.v self.vspeed

:[44]
push.v self.alphoid
pushi.e 1
cmp.i.v LT
bf [46]

:[45]
push.v self.alphoid
push.d 0.2
add.d.v
pop.v.v self.alphoid

:[46]
push.v self.alphoid
pop.v.v self.image_alpha

:[end]