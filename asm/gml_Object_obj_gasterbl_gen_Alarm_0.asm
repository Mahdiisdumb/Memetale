.localvar 0 arguments

:[0]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [13]

:[1]
pushi.e 13
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 499
conv.i.v
push.v 744.y
pushi.e 8
add.i.v
push.v 744.x
pushi.e 8
add.i.v
call.i instance_create(argc=3)
pushi.e -1
push.v self.num
conv.v.i
pop.v.v [array]self.gb
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
call.i instance_exists(argc=1)
conv.v.b
bf [13]

:[2]
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.dd
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
push.v [stacktop]self.x
push.v self.dd
pushi.e 200
conv.i.v
call.i lengthdir_x(argc=2)
add.v.v
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
pop.v.v [stacktop]self.idealx
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
push.v [stacktop]self.y
push.v self.dd
pushi.e 200
conv.i.v
call.i lengthdir_y(argc=2)
add.v.v
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
pop.v.v [stacktop]self.idealy
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
push.v [stacktop]self.idealy
pushi.e 440
cmp.i.v GT
bf [4]

:[3]
pushi.e 440
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
pop.v.i [stacktop]self.idealy

:[4]
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
push.v [stacktop]self.idealy
pushi.e 40
cmp.i.v LT
bf [6]

:[5]
pushi.e 40
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
pop.v.i [stacktop]self.idealy

:[6]
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
push.v [stacktop]self.idealx
pushi.e 50
cmp.i.v LT
bf [8]

:[7]
pushi.e 50
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
pop.v.i [stacktop]self.idealx

:[8]
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
push.v [stacktop]self.idealx
pushi.e 590
cmp.i.v GT
bf [10]

:[9]
pushi.e 590
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
pop.v.i [stacktop]self.idealx

:[10]
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
push.v [stacktop]self.x
push.v self.dd
pushi.e 400
conv.i.v
call.i lengthdir_x(argc=2)
add.v.v
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
pop.v.v [stacktop]self.x
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
push.v [stacktop]self.y
push.v self.dd
pushi.e 300
conv.i.v
call.i lengthdir_y(argc=2)
add.v.v
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
pop.v.v [stacktop]self.y
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
pushenv [12]

:[11]
push.v 744.y
pushi.e 8
add.i.v
push.v 744.x
pushi.e 8
add.i.v
push.v self.idealy
push.v self.idealx
call.i point_direction(argc=4)
pushi.e 90
add.i.v
pop.v.v self.idealrot

:[12]
popenv [11]
pushi.e 1
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 1
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
pop.v.i [stacktop]self.terminal
pushi.e 9
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
pop.v.i [stacktop]self.pause

:[13]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [26]

:[14]
pushi.e 16
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 499
conv.i.v
push.v 744.y
pushi.e 8
add.i.v
push.v 744.x
pushi.e 8
add.i.v
call.i instance_create(argc=3)
pushi.e -1
push.v self.num
conv.v.i
pop.v.v [array]self.gb
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.dd
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
call.i instance_exists(argc=1)
conv.v.b
bf [26]

:[15]
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
push.v [stacktop]self.x
push.v self.dd
pushi.e 200
conv.i.v
call.i lengthdir_x(argc=2)
add.v.v
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
pop.v.v [stacktop]self.idealx
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
push.v [stacktop]self.y
push.v self.dd
pushi.e 200
conv.i.v
call.i lengthdir_y(argc=2)
add.v.v
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
pop.v.v [stacktop]self.idealy
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
push.v [stacktop]self.idealy
pushi.e 440
cmp.i.v GT
bf [17]

:[16]
pushi.e 440
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
pop.v.i [stacktop]self.idealy

:[17]
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
push.v [stacktop]self.idealy
pushi.e 40
cmp.i.v LT
bf [19]

:[18]
pushi.e 40
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
pop.v.i [stacktop]self.idealy

:[19]
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
push.v [stacktop]self.idealx
pushi.e 50
cmp.i.v LT
bf [21]

:[20]
pushi.e 50
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
pop.v.i [stacktop]self.idealx

:[21]
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
push.v [stacktop]self.idealx
pushi.e 590
cmp.i.v GT
bf [23]

:[22]
pushi.e 590
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
pop.v.i [stacktop]self.idealx

:[23]
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
push.v [stacktop]self.x
push.v self.dd
pushi.e 400
conv.i.v
call.i lengthdir_x(argc=2)
add.v.v
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
pop.v.v [stacktop]self.x
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
push.v [stacktop]self.y
push.v self.dd
pushi.e 300
conv.i.v
call.i lengthdir_y(argc=2)
add.v.v
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
pop.v.v [stacktop]self.y
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
pushenv [25]

:[24]
push.v 744.y
pushi.e 8
add.i.v
push.v 744.x
pushi.e 8
add.i.v
push.v self.idealy
push.v self.idealx
call.i point_direction(argc=4)
pushi.e 90
add.i.v
pop.v.v self.idealrot

:[25]
popenv [24]
pushi.e 1
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 1
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
pop.v.i [stacktop]self.terminal
pushi.e 14
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
pop.v.i [stacktop]self.pause

:[26]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [39]

:[27]
pushi.e 20
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 499
conv.i.v
push.v 744.y
pushi.e 8
add.i.v
push.v 744.x
pushi.e 8
add.i.v
call.i instance_create(argc=3)
pushi.e -1
push.v self.num
conv.v.i
pop.v.v [array]self.gb
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.dd
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
call.i instance_exists(argc=1)
conv.v.b
bf [39]

:[28]
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
push.v [stacktop]self.x
push.v self.dd
pushi.e 200
conv.i.v
call.i lengthdir_x(argc=2)
add.v.v
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
pop.v.v [stacktop]self.idealx
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
push.v [stacktop]self.y
push.v self.dd
pushi.e 200
conv.i.v
call.i lengthdir_y(argc=2)
add.v.v
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
pop.v.v [stacktop]self.idealy
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
push.v [stacktop]self.idealy
pushi.e 440
cmp.i.v GT
bf [30]

:[29]
pushi.e 440
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
pop.v.i [stacktop]self.idealy

:[30]
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
push.v [stacktop]self.idealy
pushi.e 40
cmp.i.v LT
bf [32]

:[31]
pushi.e 40
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
pop.v.i [stacktop]self.idealy

:[32]
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
push.v [stacktop]self.idealx
pushi.e 50
cmp.i.v LT
bf [34]

:[33]
pushi.e 50
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
pop.v.i [stacktop]self.idealx

:[34]
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
push.v [stacktop]self.idealx
pushi.e 590
cmp.i.v GT
bf [36]

:[35]
pushi.e 590
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
pop.v.i [stacktop]self.idealx

:[36]
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
push.v [stacktop]self.x
push.v self.dd
pushi.e 400
conv.i.v
call.i lengthdir_x(argc=2)
add.v.v
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
pop.v.v [stacktop]self.x
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
push.v [stacktop]self.y
push.v self.dd
pushi.e 300
conv.i.v
call.i lengthdir_y(argc=2)
add.v.v
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
pop.v.v [stacktop]self.y
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
pushenv [38]

:[37]
push.v 744.y
pushi.e 8
add.i.v
push.v 744.x
pushi.e 8
add.i.v
push.v self.idealy
push.v self.idealx
call.i point_direction(argc=4)
pushi.e 90
add.i.v
pop.v.v self.idealrot

:[38]
popenv [37]
pushi.e 2
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 1
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
pop.v.i [stacktop]self.terminal
pushi.e 20
pushi.e -1
push.v self.num
conv.v.i
push.v [array]self.gb
conv.v.i
pop.v.i [stacktop]self.pause

:[39]
push.v self.num
pushi.e 1
add.i.v
pop.v.v self.num

:[end]