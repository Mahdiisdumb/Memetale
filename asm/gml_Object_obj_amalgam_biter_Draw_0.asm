.localvar 0 arguments

:[0]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i 760.instant
pushi.e 1
pop.v.i self.eye
pushi.e 2
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 4
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[2]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [4]

:[3]
push.v self.mcornerx
pushi.e 2
sub.i.v
pop.v.v self.mcornerx
push.v self.mcornery
pushi.e 3
sub.i.v
pop.v.v self.mcornery
push.v self.mcornerx2
pushi.e 2
add.i.v
pop.v.v self.mcornerx2
push.v self.mcornery2
pushi.e 3
sub.i.v
pop.v.v self.mcornery2

:[4]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [6]

:[5]
push.d 5.1
pop.v.d self.con
pushi.e 8
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[6]
push.v self.con
push.d 6.1
cmp.d.v EQ
bf [8]

:[7]
pushi.e 6
pop.v.i self.con
pushi.e 8
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[8]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [10]

:[9]
push.v self.mcornery
pushi.e 1
sub.i.v
pop.v.v self.mcornery
push.v self.mcornery2
pushi.e 1
sub.i.v
pop.v.v self.mcornery2
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]global.idealborder
pushi.e 2
sub.i.v
pop.i.v [array]global.idealborder

:[10]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [12]

:[11]
pushi.e 8
pop.v.i self.con
pushi.e 8
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[12]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [18]

:[13]
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 330
cmp.i.v LT
bf [17]

:[14]
push.v self.mcornery
pushi.e 8
add.i.v
pop.v.v self.mcornery
push.v self.mcornery2
pushi.e 8
add.i.v
pop.v.v self.mcornery2
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]global.idealborder
pushi.e 20
add.i.v
pop.i.v [array]global.idealborder
push.v 744.y
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 4
add.i.v
cmp.v.v LT
bf [16]

:[15]
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 4
add.i.v
pop.v.v 744.y

:[16]
b [18]

:[17]
pushi.e 340
pushi.e -5
pushi.e 2
pop.v.i [array]global.idealborder
pushi.e 10
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pop.v.v self.yy
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pop.v.v self.yy2
push.v self.mcornerx
pop.v.v self.xx
push.v self.mcornerx2
pop.v.v self.xx2

:[18]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [21]

:[19]
push.v self.xx
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 2
sub.i.v
pop.v.v self.mcornerx
push.v self.xx2
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 2
sub.i.v
pop.v.v self.mcornerx2
push.v self.yy
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 2
sub.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]global.idealborder
push.v 744.y
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 4
add.i.v
cmp.v.v LT
bf [21]

:[20]
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 4
add.i.v
pop.v.v 744.y

:[21]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [26]

:[22]
push.v self.times
push.v self.maxtimes
cmp.v.v GTE
bf [24]

:[23]
pushi.e 50
pop.v.i self.con

:[24]
push.v self.times
push.v self.maxtimes
cmp.v.v LT
bf [26]

:[25]
pushi.e 12
pop.v.i self.con
pushi.e 10
pop.v.i 547.con
pushi.e 1
pushi.e 547
pushi.e 2
pop.v.i [array]self.alarm

:[26]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [37]

:[27]
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 260
cmp.i.v GT
bf [31]

:[28]
push.v self.mcornery
pushi.e 8
sub.i.v
pop.v.v self.mcornery
push.v self.mcornery2
pushi.e 8
sub.i.v
pop.v.v self.mcornery2
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]global.idealborder
pushi.e 20
sub.i.v
pop.i.v [array]global.idealborder
push.v 744.y
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 4
add.i.v
cmp.v.v LT
bf [30]

:[29]
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 4
add.i.v
pop.v.v 744.y

:[30]
b [37]

:[31]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.times
pushi.e 1
add.i.v
pop.v.v self.times
pushi.e 250
pushi.e -5
pushi.e 2
pop.v.i [array]global.idealborder
push.d 5.1
pop.v.d self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.v self.miss
pushi.e 10
cmp.i.v EQ
bt [33]

:[32]
push.v self.miss
pushi.e 0
cmp.i.v EQ
b [34]

:[33]
push.e 1

:[34]
bf [36]

:[35]
pushi.e 26
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[36]
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pop.v.v self.yy
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pop.v.v self.yy2
push.v self.mcornerx
pop.v.v self.xx
push.v self.mcornerx2
pop.v.v self.xx2

:[37]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [39]

:[38]
pushi.e 0
pop.v.i self.eye
pushi.e 10
pop.v.i 547.con
pushi.e 1
pushi.e 547
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 51
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[39]
pushi.e 9999
pop.v.i global.border
push.v self.con
pushi.e 51
cmp.i.v EQ
bf [55]

:[40]
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 260
cmp.i.v GT
bf [42]

:[41]
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]global.idealborder
pushi.e 10
sub.i.v
pop.i.v [array]global.idealborder
b [43]

:[42]
pushi.e 250
pushi.e -5
pushi.e 2
pop.v.i [array]global.idealborder
pushi.e 0
pop.v.i 760.instant

:[43]
push.v self.mcornerx
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 5
sub.i.v
cmp.v.v LT
bf [45]

:[44]
push.v self.mcornerx
pushi.e 4
add.i.v
pop.v.v self.mcornerx
b [46]

:[45]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pop.v.v self.mcornerx

:[46]
push.v self.mcornery
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 5
sub.i.v
cmp.v.v LT
bf [48]

:[47]
push.v self.mcornery
pushi.e 4
add.i.v
pop.v.v self.mcornery
b [49]

:[48]
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pop.v.v self.mcornery

:[49]
push.v self.mcornerx2
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 5
add.i.v
cmp.v.v GT
bf [51]

:[50]
push.v self.mcornerx2
pushi.e 4
sub.i.v
pop.v.v self.mcornerx2
b [52]

:[51]
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pop.v.v self.mcornerx2

:[52]
push.v self.mcornery2
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 5
sub.i.v
cmp.v.v LT
bf [54]

:[53]
push.v self.mcornery2
pushi.e 4
add.i.v
pop.v.v self.mcornery2
b [55]

:[54]
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pop.v.v self.mcornery2

:[55]
push.v self.eye
pushi.e 1
cmp.i.v EQ
bf [59]

:[56]
push.v self.eyestretch
pushi.e 1
cmp.i.v LT
bf [58]

:[57]
push.v self.eyestretch
push.d 0.05
add.d.v
pop.v.v self.eyestretch
b [59]

:[58]
pushi.e 1
pop.v.i self.eyestretch

:[59]
push.v self.eye
pushi.e 0
cmp.i.v EQ
bf [63]

:[60]
push.v self.eyestretch
pushi.e 0
cmp.i.v GT
bf [62]

:[61]
push.v self.eyestretch
push.d 0.1
sub.d.v
pop.v.v self.eyestretch
b [63]

:[62]
pushi.e 0
pop.v.i self.eyestretch

:[63]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.eyestretch
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 80
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 120
add.i.v
pushi.e 0
conv.i.v
pushi.e 730
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 3
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
push.v self.mcornery
push.v self.mcornerx
call.i draw_line_width(argc=5)
popz.v
pushi.e 3
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
push.v self.mcornery
push.v self.mcornerx
call.i draw_line_width(argc=5)
popz.v
pushi.e 3
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
push.v self.mcornery2
push.v self.mcornerx2
call.i draw_line_width(argc=5)
popz.v
pushi.e 3
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
push.v self.mcornery2
push.v self.mcornerx2
call.i draw_line_width(argc=5)
popz.v

:[end]