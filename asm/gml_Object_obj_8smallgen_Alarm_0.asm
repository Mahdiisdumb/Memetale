.localvar 0 arguments

:[0]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 20
add.i.v
pushi.e 120
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.cx
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 20
add.i.v
pushi.e 121
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.cy
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cx
sub.v.v
call.i abs(argc=1)
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cx
sub.v.v
call.i abs(argc=1)
sub.v.v
pop.v.v self.hdist
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cy
sub.v.v
call.i abs(argc=1)
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cy
sub.v.v
call.i abs(argc=1)
sub.v.v
pop.v.v self.vdist
push.v self.vdist
call.i abs(argc=1)
push.v self.hdist
call.i abs(argc=1)
cmp.v.v GT
bf [5]

:[1]
push.v self.vdist
pushi.e 0
cmp.i.v GTE
bf [3]

:[2]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cy
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
sub.v.v
pop.v.v self.hd2
b [4]

:[3]
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cy
sub.v.v
pop.v.v self.hd2

:[4]
b [8]

:[5]
push.v self.hdist
pushi.e 0
cmp.i.v GTE
bf [7]

:[6]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cx
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
sub.v.v
pop.v.v self.hd2
b [8]

:[7]
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cx
sub.v.v
pop.v.v self.hd2

:[8]
call.i scr_monstersum(argc=0)
pop.v.v self.sum
push.v self.hd2
push.d 1.5
mul.d.v
pop.v.v self.hd2
push.v self.hd2
pushi.e 2
mul.i.v
pushi.e 3
conv.i.d
div.d.v
pop.v.v self.hd1
push.d 2.4
push.d 0.2
conv.d.v
call.i random(argc=1)
add.v.d
pop.v.v self.cs
push.v self.sum
pushi.e 1
cmp.i.v GT
bf [10]

:[9]
push.v self.hd2
push.d 1.6
mul.d.v
pop.v.v self.hd2
push.v self.hd1
push.d 1.6
mul.d.v
pop.v.v self.hd1
push.v self.cs
push.d 1.6
mul.d.v
pop.v.v self.cs

:[10]
push.v self.sum
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
push.v self.hd1
push.d 1.8
mul.d.v
pop.v.v self.hd1
push.v self.hd2
push.d 1.8
mul.d.v
pop.v.v self.hd2
push.v self.cs
push.d 2.2
mul.d.v
pop.v.v self.cs

:[12]
pushi.e 625
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cy
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cx
push.v self.hd2
sub.v.v
call.i instance_create(argc=3)
pop.v.v self.b
pushi.e 0
push.v self.b
conv.v.i
pop.v.i [stacktop]self.direction
push.v self.i
push.v self.b
conv.v.i
pop.v.v [stacktop]self.iteration
pushi.e 625
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cy
push.v self.hd1
sub.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cx
push.v self.hd1
sub.v.v
call.i instance_create(argc=3)
pop.v.v self.b
pushi.e 315
push.v self.b
conv.v.i
pop.v.i [stacktop]self.direction
push.v self.i
push.v self.b
conv.v.i
pop.v.v [stacktop]self.iteration
pushi.e 625
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cy
push.v self.hd2
sub.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cx
call.i instance_create(argc=3)
pop.v.v self.b
pushi.e 270
push.v self.b
conv.v.i
pop.v.i [stacktop]self.direction
push.v self.i
push.v self.b
conv.v.i
pop.v.v [stacktop]self.iteration
pushi.e 625
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cy
push.v self.hd1
sub.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cx
push.v self.hd1
add.v.v
call.i instance_create(argc=3)
pop.v.v self.b
pushi.e 225
push.v self.b
conv.v.i
pop.v.i [stacktop]self.direction
push.v self.i
push.v self.b
conv.v.i
pop.v.v [stacktop]self.iteration
pushi.e 625
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cy
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cx
push.v self.hd2
add.v.v
call.i instance_create(argc=3)
pop.v.v self.b
pushi.e 180
push.v self.b
conv.v.i
pop.v.i [stacktop]self.direction
push.v self.i
push.v self.b
conv.v.i
pop.v.v [stacktop]self.iteration
pushi.e 625
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cy
push.v self.hd1
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cx
push.v self.hd1
add.v.v
call.i instance_create(argc=3)
pop.v.v self.b
pushi.e 135
push.v self.b
conv.v.i
pop.v.i [stacktop]self.direction
push.v self.i
push.v self.b
conv.v.i
pop.v.v [stacktop]self.iteration
pushi.e 625
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cy
push.v self.hd2
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cx
call.i instance_create(argc=3)
pop.v.v self.b
pushi.e 90
push.v self.b
conv.v.i
pop.v.i [stacktop]self.direction
push.v self.i
push.v self.b
conv.v.i
pop.v.v [stacktop]self.iteration
pushi.e 625
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cy
push.v self.hd1
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cx
push.v self.hd1
sub.v.v
call.i instance_create(argc=3)
pop.v.v self.b
pushi.e 45
push.v self.b
conv.v.i
pop.v.i [stacktop]self.direction
push.v self.i
push.v self.b
conv.v.i
pop.v.v [stacktop]self.iteration
pushi.e 8
pop.v.i 625.dmg
push.v self.cs
pop.v.v 625.speed
push.v self.sum
pushi.e 1
cmp.i.v GT
bf [14]

:[13]
pushi.e 75
pop.v.i 625.sprite_index

:[14]
push.v self.sum
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
pushi.e 2
pop.v.i 625.image_xscale
pushi.e 2
pop.v.i 625.image_yscale

:[16]
pushi.e -1
pushi.e 2
push.v [array]self.alarm
pushi.e 1
cmp.i.v LT
bf [18]

:[17]
push.v self.i
pop.v.v self.a2i
push.v self.hd2
push.v self.cs
div.v.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.alarm
b [22]

:[18]
pushi.e -1
pushi.e 3
push.v [array]self.alarm
pushi.e 1
cmp.i.v LT
bf [20]

:[19]
push.v self.i
pop.v.v self.a3i
push.v self.hd2
push.v self.cs
div.v.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.alarm
b [22]

:[20]
pushi.e -1
pushi.e 4
push.v [array]self.alarm
pushi.e 1
cmp.i.v LT
bf [22]

:[21]
push.v self.i
pop.v.v self.a4i
push.v self.hd2
push.v self.cs
div.v.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[22]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [24]

:[23]
push.v self.rate
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[24]
push.v self.sum
pushi.e 1
cmp.i.v EQ
bf [end]

:[25]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [end]

:[26]
push.v self.rate
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]