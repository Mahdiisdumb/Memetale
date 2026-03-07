.localvar 0 arguments

:[0]
pushi.e 12
conv.i.v
call.i draw_set_circle_precision(argc=1)
popz.v
push.v self.flash
pushi.e 2
cmp.i.v LT
bf [2]

:[1]
push.v self.x_blue
call.i draw_set_color(argc=1)
popz.v
b [3]

:[2]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[3]
push.v self.flash
pushi.e 1
sub.i.v
pop.v.v self.flash
push.v self.dir
call.i degtorad(argc=1)
pop.v.v self.t
pushi.e 30
pop.v.i self.r
pushi.e 3
conv.i.v
push.v self.y
push.v self.t
call.i sin(argc=1)
push.v self.r
mul.v.v
add.v.v
push.v self.t
call.i cos(argc=1)
push.v self.r
mul.v.v
add.v.v
push.v self.x
push.v self.t
call.i cos(argc=1)
neg.v
push.v self.r
mul.v.v
add.v.v
push.v self.t
call.i sin(argc=1)
push.v self.r
mul.v.v
add.v.v
push.v self.y
push.v self.t
call.i sin(argc=1)
push.v self.r
mul.v.v
add.v.v
push.v self.t
call.i cos(argc=1)
neg.v
push.v self.r
mul.v.v
add.v.v
push.v self.x
push.v self.t
call.i cos(argc=1)
push.v self.r
mul.v.v
sub.v.v
push.v self.t
call.i sin(argc=1)
neg.v
push.v self.r
mul.v.v
add.v.v
call.i draw_line_width(argc=5)
popz.v
push.v self.x_blue
call.i draw_set_color(argc=1)
popz.v
pushi.e 3
conv.i.v
push.v self.y
push.v self.t
push.d 0.2
sub.d.v
call.i sin(argc=1)
push.v self.r
mul.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.t
push.d 0.2
sub.d.v
call.i cos(argc=1)
push.v self.r
mul.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x
push.v self.t
push.d 0.2
sub.d.v
call.i cos(argc=1)
neg.v
push.v self.r
mul.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.t
push.d 0.2
sub.d.v
call.i sin(argc=1)
push.v self.r
mul.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.y
push.v self.t
call.i sin(argc=1)
push.v self.r
mul.v.v
add.v.v
push.v self.t
call.i cos(argc=1)
neg.v
push.v self.r
mul.v.v
add.v.v
push.v self.x
push.v self.t
call.i cos(argc=1)
push.v self.r
mul.v.v
sub.v.v
push.v self.t
call.i sin(argc=1)
neg.v
push.v self.r
mul.v.v
add.v.v
call.i draw_line_width(argc=5)
popz.v
push.i 32768
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
push.v self.r
push.v self.y
push.v self.x
call.i draw_circle(argc=4)
popz.v
push.v 1575.down
conv.v.b
bf [5]

:[4]
pushi.e 90
pop.v.i self.idealdir

:[5]
push.v 1575.up
conv.v.b
bf [7]

:[6]
pushi.e 270
pop.v.i self.idealdir

:[7]
push.v 1575.left
conv.v.b
bf [9]

:[8]
pushi.e 0
pop.v.i self.idealdir

:[9]
push.v 1575.right
conv.v.b
bf [11]

:[10]
pushi.e 180
pop.v.i self.idealdir

:[11]
push.v self.dir
push.v self.idealdir
cmp.v.v NEQ
bf [34]

:[12]
push.v self.idealdir
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
push.v self.dir
pushi.e 180
cmp.i.v GT
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
pushi.e 1
pop.v.i self.neg
push.v self.dir
pushi.e 360
sub.i.v
pop.v.v self.dir

:[17]
push.v self.dir
pushi.e 0
cmp.i.v GTE
bf [20]

:[18]
push.v self.dir
pushi.e 90
cmp.i.v LT
bf [20]

:[19]
push.v self.idealdir
pushi.e 270
cmp.i.v EQ
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
pushi.e 2
pop.v.i self.neg
pushi.e 360
pop.v.i self.dir

:[23]
push.v self.neg
pushi.e 0
cmp.i.v EQ
bf [28]

:[24]
push.v self.dir
pushi.e 360
mod.i.v
pop.v.v self.dir
push.v self.idealdir
push.v self.dir
sub.v.v
pop.v.v self.dif
push.v self.dir
push.v self.dif
push.d 0.6666666666666666
mul.d.v
add.v.v
pop.v.v self.dir
push.v self.dir
pushi.e 0
cmp.i.v LT
bf [26]

:[25]
push.v self.dir
pushi.e 360
add.i.v
pop.v.v self.dir

:[26]
push.v self.dif
call.i abs(argc=1)
pushi.e 15
cmp.i.v LT
bf [28]

:[27]
push.v self.idealdir
pop.v.v self.dir
pushi.e 0
pop.v.i self.neg

:[28]
push.v self.neg
pushi.e 1
cmp.i.v EQ
bf [31]

:[29]
push.v self.dir
pushi.e 360
mod.i.v
pop.v.v self.dir
push.v self.idealdir
push.v self.dir
sub.v.v
call.i abs(argc=1)
pop.v.v self.dif
push.v self.dir
push.v self.dif
push.d 0.6666666666666666
mul.d.v
add.v.v
pop.v.v self.dir
push.v self.idealdir
call.i abs(argc=1)
push.v self.dir
call.i abs(argc=1)
sub.v.v
call.i abs(argc=1)
pushi.e 15
cmp.i.v LT
bf [31]

:[30]
push.v self.idealdir
pop.v.v self.dir
pushi.e 0
pop.v.i self.neg

:[31]
push.v self.neg
pushi.e 2
cmp.i.v EQ
bf [34]

:[32]
push.v self.idealdir
push.v self.dir
sub.v.v
pop.v.v self.dif
push.v self.dir
push.v self.dif
push.d 0.6666666666666666
mul.d.v
add.v.v
pop.v.v self.dir
push.v self.idealdir
call.i abs(argc=1)
push.v self.dir
call.i abs(argc=1)
sub.v.v
call.i abs(argc=1)
pushi.e 15
cmp.i.v LT
bf [34]

:[33]
push.v self.idealdir
pop.v.v self.dir
pushi.e 0
pop.v.i self.neg

:[34]
push.v self.old
pushi.e 1
cmp.i.v EQ
bf [85]

:[35]
push.v self.dir
push.v self.idealdir
cmp.v.v NEQ
bf [85]

:[36]
push.v self.dir
push.v self.idealdir
sub.v.v
pushi.e 180
cmp.i.v EQ
bf [57]

:[37]
push.v self.dir
pushi.e 0
cmp.i.v EQ
bf [39]

:[38]
push.v self.idealdir
pushi.e 180
cmp.i.v EQ
b [40]

:[39]
push.e 0

:[40]
bf [42]

:[41]
push.v self.dir
pushi.e 90
sub.i.v
pop.v.v self.dir

:[42]
push.v self.dir
pushi.e 90
cmp.i.v EQ
bf [44]

:[43]
push.v self.idealdir
pushi.e 270
cmp.i.v EQ
b [45]

:[44]
push.e 0

:[45]
bf [47]

:[46]
push.v self.dir
pushi.e 90
sub.i.v
pop.v.v self.dir

:[47]
push.v self.dir
pushi.e 180
cmp.i.v EQ
bf [49]

:[48]
push.v self.idealdir
pushi.e 0
cmp.i.v EQ
b [50]

:[49]
push.e 0

:[50]
bf [52]

:[51]
push.v self.dir
pushi.e 90
sub.i.v
pop.v.v self.dir

:[52]
push.v self.dir
pushi.e 270
cmp.i.v EQ
bf [54]

:[53]
push.v self.idealdir
pushi.e 90
cmp.i.v EQ
b [55]

:[54]
push.e 0

:[55]
bf [57]

:[56]
push.v self.dir
pushi.e 90
sub.i.v
pop.v.v self.dir

:[57]
push.v self.dir
pushi.e 0
cmp.i.v GT
bf [60]

:[58]
push.v self.dir
pushi.e 180
cmp.i.v LT
bf [60]

:[59]
push.v self.idealdir
pushi.e 0
cmp.i.v EQ
b [61]

:[60]
push.e 0

:[61]
bf [63]

:[62]
push.v self.dir
pushi.e 60
sub.i.v
pop.v.v self.dir

:[63]
push.v self.dir
pushi.e 180
cmp.i.v GT
bf [66]

:[64]
push.v self.dir
pushi.e 360
cmp.i.v LT
bf [66]

:[65]
push.v self.idealdir
pushi.e 180
cmp.i.v EQ
b [67]

:[66]
push.e 0

:[67]
bf [69]

:[68]
push.v self.dir
pushi.e 60
sub.i.v
pop.v.v self.dir

:[69]
push.v self.dir
pushi.e 90
cmp.i.v GT
bf [72]

:[70]
push.v self.dir
pushi.e 270
cmp.i.v LT
bf [72]

:[71]
push.v self.idealdir
pushi.e 90
cmp.i.v EQ
b [73]

:[72]
push.e 0

:[73]
bf [75]

:[74]
push.v self.dir
pushi.e 60
sub.i.v
pop.v.v self.dir

:[75]
push.v self.dir
pushi.e 270
cmp.i.v GT
bt [80]

:[76]
push.v self.dir
pushi.e 0
cmp.i.v LTE
bf [78]

:[77]
push.v self.idealdir
pushi.e 270
cmp.i.v EQ
b [79]

:[78]
push.e 0

:[79]
b [81]

:[80]
push.e 1

:[81]
bf [83]

:[82]
push.v self.dir
pushi.e 60
sub.i.v
pop.v.v self.dir

:[83]
push.v self.dir
pushi.e 30
add.i.v
pop.v.v self.dir
push.v self.dir
pushi.e 360
mod.i.v
pop.v.v self.dir
push.v self.dir
pushi.e 0
cmp.i.v LT
bf [85]

:[84]
push.v self.dir
pushi.e 360
add.i.v
pop.v.v self.dir

:[85]
push.v self.idealdir
call.i degtorad(argc=1)
pop.v.v self.tideal
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 266
conv.i.v
push.v self.y
push.v self.tideal
call.i sin(argc=1)
push.v self.r
mul.v.v
add.v.v
push.v self.tideal
call.i cos(argc=1)
push.v self.r
mul.v.v
add.v.v
push.v self.x
push.v self.tideal
call.i cos(argc=1)
neg.v
push.v self.r
mul.v.v
add.v.v
push.v self.tideal
call.i sin(argc=1)
push.v self.r
mul.v.v
add.v.v
push.v self.y
push.v self.tideal
call.i sin(argc=1)
push.v self.r
mul.v.v
add.v.v
push.v self.tideal
call.i cos(argc=1)
neg.v
push.v self.r
mul.v.v
add.v.v
push.v self.x
push.v self.tideal
call.i cos(argc=1)
push.v self.r
mul.v.v
sub.v.v
push.v self.tideal
call.i sin(argc=1)
neg.v
push.v self.r
mul.v.v
add.v.v
call.i collision_line(argc=7)
pop.v.v self.col
push.v self.col
pushi.e -4
cmp.i.v NEQ
bf [87]

:[86]
pushi.e 4
conv.i.v
call.i event_user(argc=1)
popz.v

:[87]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 266
conv.i.v
push.v self.y
pushi.e 5
add.i.v
push.v self.x
pushi.e 5
add.i.v
push.v self.y
pushi.e 5
sub.i.v
push.v self.x
pushi.e 5
sub.i.v
call.i collision_rectangle(argc=7)
pop.v.v self.col2
push.v self.col2
pushi.e -4
cmp.i.v NEQ
bf [end]

:[88]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]