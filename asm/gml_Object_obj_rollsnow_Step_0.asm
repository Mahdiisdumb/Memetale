.localvar 0 arguments

:[0]
push.v self.falling
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.i 50000
push.v self.y
pushi.e 10
mul.i.v
push.v self.sprite_height
pushi.e 4
mul.i.v
add.v.v
sub.v.i
pop.v.v self.depth

:[2]
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [7]

:[3]
push.v self.vspeed
push.d 0.1
cmp.d.v GT
bf [5]

:[4]
push.v 1576.depth
pushi.e 1
sub.i.v
pop.v.v self.depth

:[5]
push.v self.vspeed
push.d -0.1
cmp.d.v LT
bf [7]

:[6]
push.v 1576.depth
pushi.e 1
add.i.v
pop.v.v self.depth

:[7]
push.v self.falling
pushi.e 0
cmp.i.v GT
bf [9]

:[8]
pushi.e 1000
pop.v.i self.depth

:[9]
push.v self.hspeed
call.i abs(argc=1)
pop.v.v self.xchange
push.v self.vspeed
call.i abs(argc=1)
pop.v.v self.ychange
push.v self.xchange
push.v self.ychange
add.v.v
pop.v.v self.tchange
push.v self.angle
push.v self.tchange
pushi.e 30
mul.i.v
push.v self.size
pushi.e 10
mul.i.v
div.v.v
add.v.v
pop.v.v self.angle
push.v self.size
pop.v.v self.image_xscale
push.v self.size
pop.v.v self.image_yscale
push.v self.falling
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
push.d -0.1
pop.v.d self.friction
pushi.e 3
pop.v.i self.vspeed
pushi.e 2
pop.v.i self.falling

:[11]
push.v self.falling
pushi.e 2
cmp.i.v EQ
bf [13]

:[12]
push.v self.y
push.v self.specialy
cmp.v.v GT
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
push.v self.specialy
pop.v.v self.y
push.d 0.1
pop.v.d self.friction
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.falling

:[16]
push.v self.t
pushi.e 1
cmp.i.v EQ
bt [18]

:[17]
push.v self.t
pushi.e 2
cmp.i.v EQ
b [19]

:[18]
push.e 1

:[19]
bf [26]

:[20]
push.v self.hspeed
pushi.e 0
cmp.i.v EQ
bf [22]

:[21]
push.v self.vspeed
pushi.e 0
cmp.i.v EQ
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
pushi.e 1
pop.v.i self.t
b [26]

:[25]
pushi.e 2
pop.v.i self.t

:[26]
pushi.e 0
pop.v.i self.golf
push.v self.t
pushi.e 1
cmp.i.v EQ
bf [30]

:[27]
push.v self.shrinko
pushi.e 0
cmp.i.v GT
bf [29]

:[28]
push.v self.shrinko
pushi.e 1
sub.i.v
pop.v.v self.shrinko
b [30]

:[29]
push.v self.size
push.d 0.01
sub.d.v
pop.v.v self.size

:[30]
push.v self.size
push.d 0.2
cmp.d.v LT
bf [34]

:[31]
call.i instance_destroy(argc=0)
popz.v
pushi.e 1016
pushenv [33]

:[32]
pushi.e 10
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[33]
popenv [32]

:[34]
push.v self.timeincrease
pushi.e 1
cmp.i.v EQ
bf [36]

:[35]
push.v self.rolltime
pushi.e 1
add.i.v
pop.v.v self.rolltime

:[36]
push.v self.falling
pushi.e 5
cmp.i.v EQ
bf [38]

:[37]
push.v self.size
push.d 0.2
cmp.d.v GTE
b [39]

:[38]
push.e 0

:[39]
bf [end]

:[40]
push.v self.size
push.d 0.05
sub.d.v
pop.v.v self.size
push.i 900000
pop.v.i self.depth

:[end]