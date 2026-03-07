.localvar 0 arguments

:[0]
pushglb.v global.faceemotion
push.v self.head
conv.v.i
pop.v.v [stacktop]self.image_index
push.v self.movetype
pushi.e 0
cmp.i.v EQ
bf [19]

:[1]
push.v self.siner
push.d 1.2
add.d.v
pop.v.v self.siner
push.v 273.order
pushi.e -39
cmp.i.v EQ
bf [3]

:[2]
push.v self.siner
push.d 0.2
sub.d.v
pop.v.v self.siner

:[3]
push.v 273.order
pushi.e -38
cmp.i.v EQ
bf [5]

:[4]
push.v self.siner
push.d 0.4
sub.d.v
pop.v.v self.siner

:[5]
push.v 273.order
pushi.e -37
cmp.i.v EQ
bf [7]

:[6]
push.v self.siner
push.d 0.6
sub.d.v
pop.v.v self.siner

:[7]
push.v 273.order
pushi.e -36
cmp.i.v EQ
bf [9]

:[8]
push.v self.siner
push.d 0.8
sub.d.v
pop.v.v self.siner

:[9]
push.v 273.order
pushi.e -35
cmp.i.v EQ
bt [11]

:[10]
push.v 273.order
pushi.e -35
cmp.i.v EQ
b [12]

:[11]
push.e 1

:[12]
bf [14]

:[13]
push.v self.siner
pushi.e 1
sub.i.v
pop.v.v self.siner

:[14]
pushi.e 0
push.v self.legs
conv.v.i
pop.v.i [stacktop]self.image_index
push.v self.y
push.v self.ystart
sub.v.v
pop.v.v self.ydiff
push.v self.x
push.v self.xstart
sub.v.v
pop.v.v self.xdiff
push.v self.depth
pushi.e 5
add.i.v
push.v self.larm
conv.v.i
pop.v.v [stacktop]self.depth
push.v self.hair
conv.v.i
push.v [stacktop]self.ystart
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
add.v.v
push.v self.ydiff
add.v.v
push.v self.hair
conv.v.i
pop.v.v [stacktop]self.y
push.v self.head
conv.v.i
push.v [stacktop]self.ystart
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.ydiff
add.v.v
push.v self.head
conv.v.i
pop.v.v [stacktop]self.y
push.v self.armor
conv.v.i
push.v [stacktop]self.ystart
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
add.v.v
push.v self.ydiff
add.v.v
push.v self.armor
conv.v.i
pop.v.v [stacktop]self.y
push.v self.pants
conv.v.i
push.v [stacktop]self.ystart
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.ydiff
add.v.v
push.v self.pants
conv.v.i
pop.v.v [stacktop]self.y
push.v self.larm
conv.v.i
push.v [stacktop]self.ystart
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 5
mul.i.v
add.v.v
push.v self.ydiff
add.v.v
push.v self.larm
conv.v.i
pop.v.v [stacktop]self.y
push.v self.larm
conv.v.i
push.v [stacktop]self.xstart
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 5
mul.i.v
add.v.v
push.v self.xdiff
add.v.v
push.v self.larm
conv.v.i
pop.v.v [stacktop]self.x
push.v self.rarm
conv.v.i
push.v [stacktop]self.ystart
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 6
mul.i.v
add.v.v
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.ydiff
add.v.v
push.v self.rarm
conv.v.i
pop.v.v [stacktop]self.y
push.v self.rarm
conv.v.i
push.v [stacktop]self.xstart
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
sub.v.v
push.v self.xdiff
add.v.v
push.v self.rarm
conv.v.i
pop.v.v [stacktop]self.x
push.v self.legs
conv.v.i
push.v [stacktop]self.ystart
push.v self.ydiff
add.v.v
push.v self.legs
conv.v.i
pop.v.v [stacktop]self.y
push.v self.rarm
conv.v.i
push.v [stacktop]self.image_angle
pushi.e 0
cmp.i.v GT
bf [16]

:[15]
push.v self.rarm
conv.v.i
dup.i 0
push.v [stacktop]self.image_angle
pushi.e 15
sub.i.v
pop.i.v [stacktop]self.image_angle

:[16]
push.v self.larm
conv.v.i
push.v [stacktop]self.image_angle
pushi.e 0
cmp.i.v LT
bf [18]

:[17]
push.v self.larm
conv.v.i
dup.i 0
push.v [stacktop]self.image_angle
pushi.e 15
add.i.v
pop.i.v [stacktop]self.image_angle

:[18]
b [25]

:[19]
push.v self.y
push.v self.ystart
sub.v.v
pop.v.v self.ydiff
push.v self.x
push.v self.xstart
sub.v.v
pop.v.v self.xdiff
pushi.e 0
pop.v.i self.i

:[20]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [22]

:[21]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.part
conv.v.i
push.v [stacktop]self.xstart
push.v self.xdiff
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.part
conv.v.i
pop.v.v [stacktop]self.x
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.part
conv.v.i
push.v [stacktop]self.ystart
push.v self.ydiff
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.part
conv.v.i
pop.v.v [stacktop]self.y
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [20]

:[22]
pushi.e -1
pushi.e 4
push.v [array]self.part
conv.v.i
push.v [stacktop]self.xstart
push.v self.xdiff
add.v.v
pushi.e -1
pushi.e 4
push.v [array]self.part
conv.v.i
pop.v.v [stacktop]self.x
pushi.e -1
pushi.e 4
push.v [array]self.part
conv.v.i
push.v [stacktop]self.ystart
push.v self.ydiff
add.v.v
pushi.e -1
pushi.e 4
push.v [array]self.part
conv.v.i
pop.v.v [stacktop]self.y
push.v self.y
push.v self.ystart
cmp.v.v LTE
bf [24]

:[23]
push.v self.air
pushi.e 1
add.i.v
pop.v.v self.air

:[24]
push.v self.larm
conv.v.i
dup.i 0
push.v [stacktop]self.image_angle
push.v self.larm
conv.v.i
push.v [stacktop]self.vspeed
add.v.v
pop.i.v [stacktop]self.image_angle
push.v self.rarm
conv.v.i
dup.i 0
push.v [stacktop]self.image_angle
push.v self.rarm
conv.v.i
push.v [stacktop]self.vspeed
sub.v.v
pop.i.v [stacktop]self.image_angle

:[25]
push.v self.movetype
pushi.e 1
cmp.i.v EQ
bf [28]

:[26]
push.v self.vspeed
pushi.e 0
cmp.i.v GT
bf [28]

:[27]
push.v self.y
push.v self.ystart
pushi.e 8
sub.i.v
cmp.v.v GT
b [29]

:[28]
push.e 0

:[29]
bf [36]

:[30]
push.v self.ystart
pop.v.v self.y
pushi.e 0
pop.v.i self.i

:[31]
push.v self.i
pushi.e 7
cmp.i.v LT
bf [33]

:[32]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.part
conv.v.i
push.v [stacktop]self.xstart
push.v self.xdiff
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.part
conv.v.i
pop.v.v [stacktop]self.x
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.part
conv.v.i
push.v [stacktop]self.ystart
push.v self.ydiff
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.part
conv.v.i
pop.v.v [stacktop]self.y
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [31]

:[33]
pushi.e 0
push.v self.legs
conv.v.i
pop.v.i [stacktop]self.gravity
pushi.e 0
push.v self.legs
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 0
push.v self.legs
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.legs
conv.v.i
pop.v.i [stacktop]self.gravity
pushi.e 0
push.v self.legs
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.larm
conv.v.i
pop.v.i [stacktop]self.gravity
pushi.e 0
push.v self.larm
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 0
push.v self.larm
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.larm
conv.v.i
pop.v.i [stacktop]self.gravity
pushi.e 0
push.v self.larm
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.rarm
conv.v.i
pop.v.i [stacktop]self.gravity
pushi.e 0
push.v self.rarm
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 0
push.v self.rarm
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.rarm
conv.v.i
pop.v.i [stacktop]self.gravity
pushi.e 0
push.v self.rarm
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.gravity
push.v self.jumpno
pushi.e 2
cmp.i.v LTE
bf [35]

:[34]
pushi.e 4
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
b [36]

:[35]
pushi.e 0
pop.v.i self.movetype

:[36]
push.v self.movetype
pushi.e 2
cmp.i.v EQ
bf [61]

:[37]
push.v self.slashno
pushi.e 0
cmp.i.v EQ
bf [39]

:[38]
push.v self.larm
conv.v.i
push.v [stacktop]self.image_angle
pushi.e -84
cmp.i.v GT
b [40]

:[39]
push.e 0

:[40]
bf [42]

:[41]
push.v self.larm
conv.v.i
dup.i 0
push.v [stacktop]self.image_angle
pushi.e 25
sub.i.v
pop.i.v [stacktop]self.image_angle

:[42]
push.v self.slashno
pushi.e 0
cmp.i.v EQ
bf [44]

:[43]
push.v self.larm
conv.v.i
push.v [stacktop]self.image_angle
pushi.e -84
cmp.i.v LTE
b [45]

:[44]
push.e 0

:[45]
bf [47]

:[46]
pushi.e -84
push.v self.larm
conv.v.i
pop.v.i [stacktop]self.image_angle
pushi.e 5
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
push.d 0.1
pop.v.d self.slashno

:[47]
push.v self.slashno
push.d 1.1
cmp.d.v EQ
bf [49]

:[48]
pushi.e 1
pop.v.i self.slashno
pushi.e 2
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[49]
push.v self.slashno
pushi.e 1
cmp.i.v EQ
bf [51]

:[50]
pushi.e 4
push.v self.larm
conv.v.i
pop.v.i [stacktop]self.depth
push.v self.larm
conv.v.i
dup.i 0
push.v [stacktop]self.image_angle
pushi.e 55
add.i.v
pop.i.v [stacktop]self.image_angle

:[51]
push.v self.slashno
pushi.e 2
cmp.i.v EQ
bf [53]

:[52]
pushi.e 66
push.v self.larm
conv.v.i
pop.v.i [stacktop]self.image_angle
pushi.e 1365
conv.i.v
push.v self.larm
conv.v.i
push.v [stacktop]self.y
pushi.e 20
add.i.v
push.v self.larm
conv.v.i
push.v [stacktop]self.x
pushi.e 180
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.slash
pushi.e 299
push.v self.slash
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1
push.v self.slash
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 1
push.v self.slash
conv.v.i
pop.v.i [stacktop]self.image_alpha
pushi.e 3
pop.v.i self.slashno

:[53]
push.v self.slashno
pushi.e 3
cmp.i.v EQ
bf [58]

:[54]
push.v self.slash
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.1
sub.d.v
pop.i.v [stacktop]self.image_alpha
push.v self.larm
conv.v.i
dup.i 0
push.v [stacktop]self.image_angle
push.d 0.5
add.d.v
pop.i.v [stacktop]self.image_angle
push.v self.larm
conv.v.i
push.v [stacktop]self.image_angle
pushi.e 70
cmp.i.v GT
bf [58]

:[55]
push.v self.slash
conv.v.i
pushenv [57]

:[56]
call.i instance_destroy(argc=0)
popz.v

:[57]
popenv [56]
pushi.e 4
pop.v.i self.slashno
pushi.e 3
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[58]
push.v self.slashno
pushi.e 5
cmp.i.v EQ
bf [61]

:[59]
push.v self.larm
conv.v.i
dup.i 0
push.v [stacktop]self.image_angle
pushi.e 15
sub.i.v
pop.i.v [stacktop]self.image_angle
push.v self.larm
conv.v.i
push.v [stacktop]self.image_angle
pushi.e 6
cmp.i.v LTE
bf [61]

:[60]
pushi.e 0
push.v self.larm
conv.v.i
pop.v.i [stacktop]self.image_angle
pushi.e 0
pop.v.i self.slashno
pushi.e 0
pop.v.i self.movetype

:[61]
push.v self.fadeout
pushi.e 1
cmp.i.v EQ
bf [end]

:[62]
pushi.e 0
push.v self.melter
conv.v.i
pop.v.i [stacktop]self.image_index
push.v self.image_alpha
push.d 0.05
sub.d.v
pop.v.v self.image_alpha
pushi.e 0
pop.v.i self.i

:[63]
push.v self.i
pushi.e 7
cmp.i.v LT
bf [65]

:[64]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.part
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.2
sub.d.v
pop.i.v [stacktop]self.image_alpha
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [63]

:[65]
push.v self.melter
conv.v.i
pushenv [67]

:[66]
push.v self.image_alpha
push.d 0.2
add.d.v
pop.v.v self.image_alpha

:[67]
popenv [66]
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [end]

:[68]
call.i instance_destroy(argc=0)
popz.v

:[end]