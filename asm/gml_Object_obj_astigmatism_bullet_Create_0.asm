.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.siner
pushi.e 300
conv.i.v
call.i random(argc=1)
pop.v.v self.asiner
pushi.e 393
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.kid
push.v self.x
push.v self.asiner
pushi.e 16
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 14
mul.i.v
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
pushi.e 14
mul.i.v
add.v.v
push.v self.kid
conv.v.i
pop.v.v [stacktop]self.y
pushi.e 393
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.kid2
pushi.e 502
push.v self.kid2
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.x
push.v self.asiner
pushi.e 16
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 28
mul.i.v
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
pushi.e 28
mul.i.v
add.v.v
push.v self.kid2
conv.v.i
pop.v.v [stacktop]self.y
pushi.e -1
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.vspeed
push.v self.y
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 50
sub.i.v
cmp.v.v GT
bf [2]

:[1]
push.v self.vspeed
pushi.e 0
cmp.i.v GT
b [3]

:[2]
push.e 0

:[3]
bf [6]

:[4]
push.v self.vspeed
pushi.e -1
mul.i.v
pop.v.v self.vspeed
push.v self.vspeed
call.i abs(argc=1)
push.d 0.3
cmp.d.v LT
bf [6]

:[5]
push.v self.vspeed
pushi.e 2
mul.i.v
pop.v.v self.vspeed

:[6]
push.v self.y
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 50
add.i.v
cmp.v.v LT
bf [8]

:[7]
push.v self.vspeed
pushi.e 0
cmp.i.v LT
b [9]

:[8]
push.e 0

:[9]
bf [12]

:[10]
push.v self.vspeed
pushi.e -1
mul.i.v
pop.v.v self.vspeed
push.v self.vspeed
call.i abs(argc=1)
push.d 0.3
cmp.d.v LT
bf [12]

:[11]
push.v self.vspeed
pushi.e 2
mul.i.v
pop.v.v self.vspeed

:[12]
pushi.e -3
pushi.e 1
conv.i.v
call.i random(argc=1)
sub.v.i
pop.v.v self.hspeed
push.d 0.7
push.d 0.5
conv.d.v
call.i random(argc=1)
add.v.d
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
mul.v.v
pop.v.v self.av
pushi.e 0
pop.v.i self.image_alpha
pushi.e 0
pop.v.i self.off
pushi.e 8
pop.v.i self.dmg
pushi.e 0
pop.v.i self.image_alpha
call.i scr_monstersum(argc=0)
pop.v.v self.sum
pushi.e 22
pop.v.i self.factor1
pushi.e 40
pop.v.i self.factor2
push.v self.sum
pushi.e 1
cmp.i.v GT
bf [14]

:[13]
pushi.e 18
pop.v.i self.factor1
pushi.e 36
pop.v.i self.factor2
push.d 0.7
push.d 0.5
conv.d.v
call.i random(argc=1)
add.v.d
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
mul.v.v
pop.v.v self.av

:[14]
push.v self.sum
pushi.e 2
cmp.i.v GT
bf [end]

:[15]
push.d -2.5
pushi.e 1
conv.i.v
call.i random(argc=1)
sub.v.d
pop.v.v self.hspeed
pushi.e 16
pop.v.i self.factor1
pushi.e 32
pop.v.i self.factor2
push.d 0.6
push.d 0.5
conv.d.v
call.i random(argc=1)
add.v.d
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
mul.v.v
pop.v.v self.av

:[end]