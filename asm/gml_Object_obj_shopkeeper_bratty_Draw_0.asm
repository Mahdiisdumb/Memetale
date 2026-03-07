.localvar 0 arguments

:[0]
pushi.e 1414
pushenv [10]

:[1]
push.v self.brattywriter
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[2]
push.v 1411.face
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [9]

:[5]
push.v self.brattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
push.v 1411.banim
push.d 0.25
add.d.v
pop.v.v 1411.banim
b [8]

:[7]
pushi.e 0
pop.v.i 1411.banim

:[8]
b [10]

:[9]
pushi.e 0
pop.v.i 1411.banim

:[10]
popenv [1]
push.v self.y
push.v self.byy
call.i floor(argc=1)
add.v.v
push.v self.x
push.v self.bxx
call.i floor(argc=1)
add.v.v
push.v self.banim
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
push.v self.face
pushi.e 0
cmp.i.v GT
bf [12]

:[11]
push.v self.y
pushi.e 20
add.i.v
push.v self.byy
call.i floor(argc=1)
add.v.v
push.v self.x
pushi.e 30
add.i.v
push.v self.bxx
call.i floor(argc=1)
add.v.v
push.v self.face
pushi.e 930
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[12]
pushi.e -5
pushi.e 20
push.v [array]global.flag
pop.v.v self.armexp
push.v self.armexp
pushi.e 0
cmp.i.v EQ
bf [26]

:[13]
pushi.e 0
pop.v.i self.face
push.v self.x
pushi.e 35
add.i.v
pop.v.v self.idealarmx1
pushi.e 100
pop.v.i self.idealarmy1
push.v self.x
pushi.e 18
add.i.v
pop.v.v self.idealarmx2
pushi.e 102
pop.v.i self.idealarmy2
pushi.e 8
pop.v.i self.yadjust
pushi.e 6
pop.v.i self.xadjust
push.v self.xx
call.i abs(argc=1)
push.d 0.1
cmp.d.v GT
bf [15]

:[14]
push.v self.xx
push.d 1.5
div.d.v
pop.v.v self.xx

:[15]
push.v self.yy
call.i abs(argc=1)
push.d 0.1
cmp.d.v GT
bf [17]

:[16]
push.v self.yy
push.d 1.5
div.d.v
pop.v.v self.yy

:[17]
push.v self.xx
call.i abs(argc=1)
push.d 0.1
cmp.d.v LT
bf [19]

:[18]
push.v self.yy
call.i abs(argc=1)
push.d 0.1
cmp.d.v LT
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
pushi.e 0
pop.v.i self.armsiner

:[22]
push.v self.bxx
call.i abs(argc=1)
push.d 0.1
cmp.d.v GT
bf [24]

:[23]
push.v self.bxx
push.d 1.5
div.d.v
pop.v.v self.bxx

:[24]
push.v self.byy
call.i abs(argc=1)
push.d 0.1
cmp.d.v GT
bf [26]

:[25]
push.v self.byy
push.d 1.5
div.d.v
pop.v.v self.byy

:[26]
push.v self.armexp
pushi.e 1
cmp.i.v EQ
bf [28]

:[27]
pushi.e 4
pop.v.i self.face
pushi.e 2
pop.v.i self.arm
push.v self.x
pushi.e 80
add.i.v
pop.v.v self.idealarmx1
push.v self.y
pushi.e 50
add.i.v
pop.v.v self.idealarmy1
pushi.e 130
pop.v.i self.idealarmy2
push.v self.armsiner
pushi.e 1
add.i.v
pop.v.v self.armsiner
push.v self.armsiner
call.i cos(argc=1)
pushi.e 1
mul.i.v
pop.v.v self.yy
push.v self.armsiner
call.i sin(argc=1)
pushi.e 2
mul.i.v
pop.v.v self.byy

:[28]
push.v self.armexp
pushi.e 2
cmp.i.v EQ
bf [42]

:[29]
pushi.e 3
pop.v.i self.face
push.v self.x
pushi.e 35
add.i.v
pop.v.v self.idealarmx1
pushi.e 100
pop.v.i self.idealarmy1
push.v self.x
pushi.e 18
add.i.v
pop.v.v self.idealarmx2
pushi.e 102
pop.v.i self.idealarmy2
pushi.e 8
pop.v.i self.yadjust
pushi.e 6
pop.v.i self.xadjust
push.v self.xx
call.i abs(argc=1)
push.d 0.1
cmp.d.v GT
bf [31]

:[30]
push.v self.xx
push.d 1.5
div.d.v
pop.v.v self.xx

:[31]
push.v self.yy
call.i abs(argc=1)
push.d 0.1
cmp.d.v GT
bf [33]

:[32]
push.v self.yy
push.d 1.5
div.d.v
pop.v.v self.yy

:[33]
push.v self.xx
call.i abs(argc=1)
push.d 0.1
cmp.d.v LT
bf [35]

:[34]
push.v self.yy
call.i abs(argc=1)
push.d 0.1
cmp.d.v LT
b [36]

:[35]
push.e 0

:[36]
bf [38]

:[37]
pushi.e 0
pop.v.i self.armsiner

:[38]
push.v self.bxx
call.i abs(argc=1)
push.d 0.1
cmp.d.v GT
bf [40]

:[39]
push.v self.bxx
push.d 1.5
div.d.v
pop.v.v self.bxx

:[40]
push.v self.byy
call.i abs(argc=1)
push.d 0.1
cmp.d.v GT
bf [42]

:[41]
push.v self.byy
push.d 1.5
div.d.v
pop.v.v self.byy

:[42]
push.v self.armexp
pushi.e 3
cmp.i.v EQ
bf [44]

:[43]
pushi.e 0
pop.v.i self.face
pushi.e 0
pop.v.i self.arm
pushi.e 5
pop.v.i self.yadjust
push.v self.x
pushi.e 70
add.i.v
pop.v.v self.idealarmx1
push.v self.y
pushi.e 70
add.i.v
pop.v.v self.idealarmy1
push.v self.x
pushi.e 47
add.i.v
pop.v.v self.idealarmx2
push.v self.y
pushi.e 73
add.i.v
pop.v.v self.idealarmy2
push.v self.armsiner
pushi.e 1
add.i.v
pop.v.v self.armsiner
push.v self.armsiner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 1
mul.i.v
pop.v.v self.xx
push.v self.armsiner
pushi.e 4
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 1
mul.i.v
pop.v.v self.yy

:[44]
push.v self.armexp
pushi.e 4
cmp.i.v EQ
bf [58]

:[45]
pushi.e 5
pop.v.i self.face
push.v self.x
pushi.e 35
add.i.v
pop.v.v self.idealarmx1
pushi.e 100
pop.v.i self.idealarmy1
push.v self.x
pushi.e 18
add.i.v
pop.v.v self.idealarmx2
pushi.e 102
pop.v.i self.idealarmy2
pushi.e 8
pop.v.i self.yadjust
pushi.e 6
pop.v.i self.xadjust
push.v self.xx
call.i abs(argc=1)
push.d 0.1
cmp.d.v GT
bf [47]

:[46]
push.v self.xx
push.d 1.5
div.d.v
pop.v.v self.xx

:[47]
push.v self.yy
call.i abs(argc=1)
push.d 0.1
cmp.d.v GT
bf [49]

:[48]
push.v self.yy
push.d 1.5
div.d.v
pop.v.v self.yy

:[49]
push.v self.xx
call.i abs(argc=1)
push.d 0.1
cmp.d.v LT
bf [51]

:[50]
push.v self.yy
call.i abs(argc=1)
push.d 0.1
cmp.d.v LT
b [52]

:[51]
push.e 0

:[52]
bf [54]

:[53]
pushi.e 0
pop.v.i self.armsiner

:[54]
push.v self.bxx
call.i abs(argc=1)
push.d 0.1
cmp.d.v GT
bf [56]

:[55]
push.v self.bxx
push.d 1.5
div.d.v
pop.v.v self.bxx

:[56]
push.v self.byy
call.i abs(argc=1)
push.d 0.1
cmp.d.v GT
bf [58]

:[57]
push.v self.byy
push.d 1.5
div.d.v
pop.v.v self.byy

:[58]
push.v self.armexp
pushi.e 5
cmp.i.v EQ
bf [72]

:[59]
pushi.e 1
pop.v.i self.face
push.v self.x
pushi.e 35
add.i.v
pop.v.v self.idealarmx1
pushi.e 90
pop.v.i self.idealarmy1
push.v self.x
pushi.e 18
add.i.v
pop.v.v self.idealarmx2
pushi.e 92
pop.v.i self.idealarmy2
pushi.e 8
pop.v.i self.yadjust
pushi.e 6
pop.v.i self.xadjust
push.v self.xx
call.i abs(argc=1)
push.d 0.1
cmp.d.v GT
bf [61]

:[60]
push.v self.xx
push.d 1.5
div.d.v
pop.v.v self.xx

:[61]
push.v self.yy
call.i abs(argc=1)
push.d 0.1
cmp.d.v GT
bf [63]

:[62]
push.v self.yy
push.d 1.5
div.d.v
pop.v.v self.yy

:[63]
push.v self.xx
call.i abs(argc=1)
push.d 0.1
cmp.d.v LT
bf [65]

:[64]
push.v self.yy
call.i abs(argc=1)
push.d 0.1
cmp.d.v LT
b [66]

:[65]
push.e 0

:[66]
bf [68]

:[67]
pushi.e 0
pop.v.i self.armsiner

:[68]
push.v self.bxx
call.i abs(argc=1)
push.d 0.1
cmp.d.v GT
bf [70]

:[69]
push.v self.bxx
push.d 1.5
div.d.v
pop.v.v self.bxx

:[70]
push.v self.byy
call.i abs(argc=1)
push.d 0.1
cmp.d.v GT
bf [72]

:[71]
push.v self.byy
push.d 1.5
div.d.v
pop.v.v self.byy

:[72]
push.v self.armexp
pushi.e 6
cmp.i.v EQ
bf [74]

:[73]
pushi.e 2
pop.v.i self.face
push.v self.x
pushi.e 35
add.i.v
pop.v.v self.idealarmx1
pushi.e 80
pop.v.i self.idealarmy1
push.v self.x
pushi.e 18
add.i.v
pop.v.v self.idealarmx2
pushi.e 82
pop.v.i self.idealarmy2
pushi.e 8
pop.v.i self.yadjust
pushi.e 6
pop.v.i self.xadjust
push.v self.armsiner
pushi.e 1
add.i.v
pop.v.v self.armsiner
push.v self.armsiner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
pop.v.v self.xx
push.v self.armsiner
pushi.e 4
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
pop.v.v self.yy

:[74]
push.v self.army2
push.v self.yy
add.v.v
push.v self.armx2
push.v self.xx
add.v.v
push.v self.arm
pushi.e 931
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.army1
push.v self.yy
add.v.v
push.v self.armx1
push.v self.xx
add.v.v
push.v self.arm
pushi.e 932
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.armx1
push.v self.idealarmx1
cmp.v.v LT
bf [76]

:[75]
push.v self.armx1
push.v self.xadjust
add.v.v
pop.v.v self.armx1

:[76]
push.v self.armx1
push.v self.idealarmx1
cmp.v.v GT
bf [78]

:[77]
push.v self.armx1
push.v self.xadjust
sub.v.v
pop.v.v self.armx1

:[78]
push.v self.armx2
push.v self.idealarmx2
cmp.v.v LT
bf [80]

:[79]
push.v self.armx2
push.v self.xadjust
add.v.v
pop.v.v self.armx2

:[80]
push.v self.armx2
push.v self.idealarmx2
cmp.v.v GT
bf [82]

:[81]
push.v self.armx2
push.v self.xadjust
sub.v.v
pop.v.v self.armx2

:[82]
push.v self.army1
push.v self.idealarmy1
cmp.v.v LT
bf [84]

:[83]
push.v self.army1
push.v self.yadjust
add.v.v
pop.v.v self.army1

:[84]
push.v self.army2
push.v self.idealarmy2
cmp.v.v LT
bf [86]

:[85]
push.v self.army2
push.v self.yadjust
add.v.v
pop.v.v self.army2

:[86]
push.v self.army1
push.v self.idealarmy1
cmp.v.v GT
bf [88]

:[87]
push.v self.army1
push.v self.yadjust
sub.v.v
pop.v.v self.army1

:[88]
push.v self.army2
push.v self.idealarmy2
cmp.v.v GT
bf [90]

:[89]
push.v self.army2
push.v self.yadjust
sub.v.v
pop.v.v self.army2

:[90]
push.v self.armx1
push.v self.idealarmx1
sub.v.v
call.i abs(argc=1)
push.v self.xadjust
cmp.v.v LT
bf [92]

:[91]
push.v self.idealarmx1
pop.v.v self.armx1

:[92]
push.v self.armx2
push.v self.idealarmx2
sub.v.v
call.i abs(argc=1)
push.v self.xadjust
cmp.v.v LT
bf [94]

:[93]
push.v self.idealarmx2
pop.v.v self.armx2

:[94]
push.v self.army1
push.v self.idealarmy1
sub.v.v
call.i abs(argc=1)
push.v self.yadjust
cmp.v.v LT
bf [96]

:[95]
push.v self.idealarmy1
pop.v.v self.army1

:[96]
push.v self.army2
push.v self.idealarmy2
sub.v.v
call.i abs(argc=1)
push.v self.yadjust
cmp.v.v LT
bf [98]

:[97]
push.v self.idealarmy2
pop.v.v self.army2

:[98]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [102]

:[99]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [102]

:[100]
push.v self.armexp
pushi.e 1
add.i.v
pop.v.v self.armexp
push.v self.armexp
pushi.e 7
cmp.i.v EQ
bf [102]

:[101]
pushi.e 0
pop.v.i self.armexp

:[102]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [end]

:[103]
pushi.e 66
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [end]

:[104]
pushi.e -5
pushi.e 437
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag

:[end]