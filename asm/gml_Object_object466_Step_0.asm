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
push.v self.vspeed
push.d 0.1
cmp.d.v GT
bf [4]

:[3]
push.v 1576.depth
pushi.e 1
sub.i.v
pop.v.v self.depth

:[4]
push.v self.vspeed
push.d -0.1
cmp.d.v LT
bf [6]

:[5]
push.v 1576.depth
pushi.e 1
add.i.v
pop.v.v self.depth

:[6]
push.v self.falling
pushi.e 0
cmp.i.v GT
bf [8]

:[7]
pushi.e 1000
pop.v.i self.depth

:[8]
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
bf [10]

:[9]
push.d -0.1
pop.v.d self.friction
pushi.e 3
pop.v.i self.vspeed
pushi.e 2
pop.v.i self.falling

:[10]
push.v self.falling
pushi.e 2
cmp.i.v EQ
bf [12]

:[11]
push.v self.y
push.v self.specialy
cmp.v.v GT
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
push.v self.specialy
pop.v.v self.y
push.d 0.1
pop.v.d self.friction
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.falling

:[15]
push.v self.t
pushi.e 1
cmp.i.v EQ
bt [17]

:[16]
push.v self.t
pushi.e 2
cmp.i.v EQ
b [18]

:[17]
push.e 1

:[18]
bf [25]

:[19]
push.v self.hspeed
pushi.e 0
cmp.i.v EQ
bf [21]

:[20]
push.v self.vspeed
pushi.e 0
cmp.i.v EQ
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
pushi.e 1
pop.v.i self.t
b [25]

:[24]
pushi.e 2
pop.v.i self.t

:[25]
pushi.e 0
pop.v.i self.golf
push.v self.t
pushi.e 1
cmp.i.v EQ
bf [27]

:[26]
push.v self.size
push.d 0.01
sub.d.v
pop.v.v self.size

:[27]
push.v self.size
push.d 0.2
cmp.d.v LT
bf [end]

:[28]
call.i instance_destroy(argc=0)
popz.v
pushi.e 1016
pushenv [30]

:[29]
pushi.e 10
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[30]
popenv [29]

:[end]