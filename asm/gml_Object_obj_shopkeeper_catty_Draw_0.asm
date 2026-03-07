.localvar 0 arguments

:[0]
pushi.e 1414
pushenv [10]

:[1]
push.v self.cattywriter
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[2]
push.v 1410.face
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [9]

:[5]
push.v self.cattywriter
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
push.v 1410.banim
push.d 0.334
add.d.v
pop.v.v 1410.banim
b [8]

:[7]
pushi.e 0
pop.v.i 1410.banim

:[8]
b [10]

:[9]
pushi.e 0
pop.v.i 1410.banim

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
pushi.e 17
add.i.v
push.v self.byy
call.i floor(argc=1)
add.v.v
push.v self.x
pushi.e 34
add.i.v
push.v self.bxx
call.i floor(argc=1)
add.v.v
push.v self.face
pushi.e 934
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[12]
pushglb.v global.faceemotion
pop.v.v self.armexp
push.v self.armexp
pushi.e 0
cmp.i.v EQ
bf [26]

:[13]
pushi.e 0
pop.v.i self.face
push.v self.x
pushi.e 60
add.i.v
pop.v.v self.idealarmx1
pushi.e 130
pop.v.i self.idealarmy1
push.v self.x
pushi.e 40
add.i.v
pop.v.v self.idealarmx2
pushi.e 130
pop.v.i self.idealarmy2
pushi.e 10
pop.v.i self.yadjust
pushi.e 2
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
pushi.e 1
pop.v.i self.face
pushi.e 1
pop.v.i self.arm
push.v self.x
pushi.e 57
add.i.v
pop.v.v self.idealarmx1
push.v self.y
pushi.e 50
add.i.v
pop.v.v self.idealarmy1
push.v self.y
pushi.e 50
add.i.v
pop.v.v self.idealarmy2
push.v self.x
pushi.e 50
add.i.v
pop.v.v self.idealarmx2
push.v self.armsiner
pushi.e 1
add.i.v
pop.v.v self.armsiner
push.v self.armsiner
call.i sin(argc=1)
push.d 1.5
mul.d.v
pop.v.v self.byy
push.v self.armsiner
call.i cos(argc=1)
push.d 1.5
mul.d.v
pop.v.v self.yy

:[28]
push.v self.armexp
pushi.e 2
cmp.i.v EQ
bf [30]

:[29]
pushi.e 6
pop.v.i self.face
pushi.e 1
pop.v.i self.arm
push.v self.x
pushi.e 60
add.i.v
pop.v.v self.idealarmx1
push.v self.y
pushi.e 50
add.i.v
pop.v.v self.idealarmy1
push.v self.x
pushi.e 50
add.i.v
pop.v.v self.idealarmx2
push.v self.y
pushi.e 50
add.i.v
pop.v.v self.idealarmy2
push.v self.armsiner
pushi.e 1
add.i.v
pop.v.v self.armsiner
push.v self.armsiner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 5
mul.i.v
pop.v.v self.xx
push.v self.armsiner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
call.i abs(argc=1)
pop.v.v self.yy
push.v self.armsiner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
neg.v
pushi.e 3
mul.i.v
pop.v.v self.bxx

:[30]
push.v self.armexp
pushi.e 3
cmp.i.v EQ
bf [32]

:[31]
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
pushi.e 60
add.i.v
pop.v.v self.idealarmy1
push.v self.x
pushi.e 40
add.i.v
pop.v.v self.idealarmx2
push.v self.y
pushi.e 60
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

:[32]
push.v self.armexp
pushi.e 4
cmp.i.v EQ
bf [34]

:[33]
pushi.e 1
pop.v.i self.face
pushi.e 2
pop.v.i self.arm
push.v self.x
pushi.e 60
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
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
pop.v.v self.xx
push.v self.armsiner
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 4
mul.i.v
pop.v.v self.yy

:[34]
push.v self.armexp
pushi.e 5
cmp.i.v EQ
bf [43]

:[35]
pushi.e 3
pop.v.i self.face
pushi.e 1
pop.v.i self.arm
pushi.e 6
pop.v.i self.xadjust
push.v self.x
pushi.e 45
add.i.v
pop.v.v self.idealarmx1
push.v self.y
pushi.e 48
add.i.v
pop.v.v self.idealarmy1
push.v self.x
pushi.e 65
add.i.v
pop.v.v self.idealarmx2
pushi.e 130
pop.v.i self.idealarmy2
push.v self.xx
call.i abs(argc=1)
push.d 0.1
cmp.d.v GT
bf [37]

:[36]
push.v self.xx
push.d 1.5
div.d.v
pop.v.v self.xx

:[37]
push.v self.yy
call.i abs(argc=1)
push.d 0.1
cmp.d.v GT
bf [39]

:[38]
push.v self.yy
push.d 1.5
div.d.v
pop.v.v self.yy

:[39]
push.v self.bxx
call.i abs(argc=1)
push.d 0.1
cmp.d.v GT
bf [41]

:[40]
push.v self.bxx
push.d 1.5
div.d.v
pop.v.v self.bxx

:[41]
push.v self.byy
call.i abs(argc=1)
push.d 0.1
cmp.d.v GT
bf [43]

:[42]
push.v self.byy
push.d 1.5
div.d.v
pop.v.v self.byy

:[43]
push.v self.armexp
pushi.e 6
cmp.i.v EQ
bf [45]

:[44]
pushi.e 7
pop.v.i self.face
pushi.e 2
pop.v.i self.arm
push.v self.x
pushi.e 48
add.i.v
pop.v.v self.idealarmx1
push.v self.y
pushi.e 56
add.i.v
pop.v.v self.idealarmy1
push.v self.x
pushi.e 62
add.i.v
pop.v.v self.idealarmx2
push.v self.y
pushi.e 50
add.i.v
pop.v.v self.idealarmy2
push.v self.armsiner
pushi.e 1
add.i.v
pop.v.v self.armsiner
push.v self.armsiner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
pop.v.v self.xx
push.v self.armsiner
pushi.e 3
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 1
mul.i.v
pop.v.v self.yy

:[45]
push.v self.armexp
pushi.e 7
cmp.i.v EQ
bf [59]

:[46]
pushi.e 5
pop.v.i self.face
push.v self.x
pushi.e 60
add.i.v
pop.v.v self.idealarmx1
pushi.e 130
pop.v.i self.idealarmy1
push.v self.x
pushi.e 40
add.i.v
pop.v.v self.idealarmx2
pushi.e 130
pop.v.i self.idealarmy2
pushi.e 10
pop.v.i self.yadjust
pushi.e 2
pop.v.i self.xadjust
push.v self.xx
call.i abs(argc=1)
push.d 0.1
cmp.d.v GT
bf [48]

:[47]
push.v self.xx
push.d 1.5
div.d.v
pop.v.v self.xx

:[48]
push.v self.yy
call.i abs(argc=1)
push.d 0.1
cmp.d.v GT
bf [50]

:[49]
push.v self.yy
push.d 1.5
div.d.v
pop.v.v self.yy

:[50]
push.v self.xx
call.i abs(argc=1)
push.d 0.1
cmp.d.v LT
bf [52]

:[51]
push.v self.yy
call.i abs(argc=1)
push.d 0.1
cmp.d.v LT
b [53]

:[52]
push.e 0

:[53]
bf [55]

:[54]
pushi.e 0
pop.v.i self.armsiner

:[55]
push.v self.bxx
call.i abs(argc=1)
push.d 0.1
cmp.d.v GT
bf [57]

:[56]
push.v self.bxx
push.d 1.5
div.d.v
pop.v.v self.bxx

:[57]
push.v self.byy
call.i abs(argc=1)
push.d 0.1
cmp.d.v GT
bf [59]

:[58]
push.v self.byy
push.d 1.5
div.d.v
pop.v.v self.byy

:[59]
push.v self.armexp
pushi.e 8
cmp.i.v EQ
bf [73]

:[60]
pushi.e 2
pop.v.i self.face
push.v self.x
pushi.e 60
add.i.v
pop.v.v self.idealarmx1
pushi.e 130
pop.v.i self.idealarmy1
push.v self.x
pushi.e 40
add.i.v
pop.v.v self.idealarmx2
pushi.e 130
pop.v.i self.idealarmy2
pushi.e 10
pop.v.i self.yadjust
pushi.e 2
pop.v.i self.xadjust
push.v self.xx
call.i abs(argc=1)
push.d 0.1
cmp.d.v GT
bf [62]

:[61]
push.v self.xx
push.d 1.5
div.d.v
pop.v.v self.xx

:[62]
push.v self.yy
call.i abs(argc=1)
push.d 0.1
cmp.d.v GT
bf [64]

:[63]
push.v self.yy
push.d 1.5
div.d.v
pop.v.v self.yy

:[64]
push.v self.xx
call.i abs(argc=1)
push.d 0.1
cmp.d.v LT
bf [66]

:[65]
push.v self.yy
call.i abs(argc=1)
push.d 0.1
cmp.d.v LT
b [67]

:[66]
push.e 0

:[67]
bf [69]

:[68]
pushi.e 0
pop.v.i self.armsiner

:[69]
push.v self.bxx
call.i abs(argc=1)
push.d 0.1
cmp.d.v GT
bf [71]

:[70]
push.v self.bxx
push.d 1.5
div.d.v
pop.v.v self.bxx

:[71]
push.v self.byy
call.i abs(argc=1)
push.d 0.1
cmp.d.v GT
bf [73]

:[72]
push.v self.byy
push.d 1.5
div.d.v
pop.v.v self.byy

:[73]
push.v self.army1
push.v self.yy
add.v.v
push.v self.armx1
push.v self.xx
add.v.v
push.v self.arm
pushi.e 935
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
push.v self.army2
push.v self.yy
add.v.v
push.v self.armx2
push.v self.xx
add.v.v
push.v self.arm
pushi.e 935
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.armx1
push.v self.idealarmx1
cmp.v.v LT
bf [75]

:[74]
push.v self.armx1
push.v self.xadjust
add.v.v
pop.v.v self.armx1

:[75]
push.v self.armx1
push.v self.idealarmx1
cmp.v.v GT
bf [77]

:[76]
push.v self.armx1
push.v self.xadjust
sub.v.v
pop.v.v self.armx1

:[77]
push.v self.armx2
push.v self.idealarmx2
cmp.v.v LT
bf [79]

:[78]
push.v self.armx2
push.v self.xadjust
add.v.v
pop.v.v self.armx2

:[79]
push.v self.armx2
push.v self.idealarmx2
cmp.v.v GT
bf [81]

:[80]
push.v self.armx2
push.v self.xadjust
sub.v.v
pop.v.v self.armx2

:[81]
push.v self.army1
push.v self.idealarmy1
cmp.v.v LT
bf [83]

:[82]
push.v self.army1
push.v self.yadjust
add.v.v
pop.v.v self.army1

:[83]
push.v self.army2
push.v self.idealarmy2
cmp.v.v LT
bf [85]

:[84]
push.v self.army2
push.v self.yadjust
add.v.v
pop.v.v self.army2

:[85]
push.v self.army1
push.v self.idealarmy1
cmp.v.v GT
bf [87]

:[86]
push.v self.army1
push.v self.yadjust
sub.v.v
pop.v.v self.army1

:[87]
push.v self.army2
push.v self.idealarmy2
cmp.v.v GT
bf [89]

:[88]
push.v self.army2
push.v self.yadjust
sub.v.v
pop.v.v self.army2

:[89]
push.v self.armx1
push.v self.idealarmx1
sub.v.v
call.i abs(argc=1)
push.v self.xadjust
cmp.v.v LT
bf [91]

:[90]
push.v self.idealarmx1
pop.v.v self.armx1

:[91]
push.v self.armx2
push.v self.idealarmx2
sub.v.v
call.i abs(argc=1)
push.v self.xadjust
cmp.v.v LT
bf [93]

:[92]
push.v self.idealarmx2
pop.v.v self.armx2

:[93]
push.v self.army1
push.v self.idealarmy1
sub.v.v
call.i abs(argc=1)
push.v self.yadjust
cmp.v.v LT
bf [95]

:[94]
push.v self.idealarmy1
pop.v.v self.army1

:[95]
push.v self.army2
push.v self.idealarmy2
sub.v.v
call.i abs(argc=1)
push.v self.yadjust
cmp.v.v LT
bf [97]

:[96]
push.v self.idealarmy2
pop.v.v self.army2

:[97]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [end]

:[98]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [end]

:[99]
push.v self.armexp
pushi.e 1
add.i.v
pop.v.v self.armexp
push.v self.armexp
pushi.e 9
cmp.i.v EQ
bf [end]

:[100]
pushi.e 0
pop.v.i self.armexp

:[end]