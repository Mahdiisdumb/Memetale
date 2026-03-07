.localvar 0 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [13]

:[1]
push.v self.warning
pushi.e 1
sub.i.v
pop.v.v self.warning
push.v self.warning
pushi.e 0
cmp.i.v GT
bf [11]

:[2]
push.v self.dir
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 8
add.i.v
pop.v.v self.wx
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 3
sub.i.v
pop.v.v self.wx2
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 3
sub.i.v
pop.v.v self.wy
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
push.v self.height
sub.v.v
pop.v.v self.wy2

:[4]
push.v self.dir
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
push.v self.height
sub.v.v
pop.v.v self.wx
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 3
sub.i.v
pop.v.v self.wx2
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 8
add.i.v
pop.v.v self.wy
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 3
sub.i.v
pop.v.v self.wy2

:[6]
push.v self.dir
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 8
add.i.v
pop.v.v self.wx
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 3
sub.i.v
pop.v.v self.wx2
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 6
add.i.v
pop.v.v self.wy
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 5
add.i.v
push.v self.height
add.v.v
pop.v.v self.wy2

:[8]
push.v self.dir
pushi.e 3
cmp.i.v EQ
bf [10]

:[9]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 5
add.i.v
push.v self.height
add.v.v
pop.v.v self.wx
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 8
add.i.v
pop.v.v self.wx2
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 8
add.i.v
pop.v.v self.wy
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 3
sub.i.v
pop.v.v self.wy2

:[10]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
push.v self.wy2
push.v self.wx2
push.v self.wy
push.v self.wx
call.i draw_rectangle(argc=5)
popz.v
b [13]

:[11]
call.i draw_self_border(argc=0)
popz.v
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
pushi.e 2
pop.v.i self.con

:[13]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [end]

:[14]
push.v self.timer
pushi.e 0
cmp.i.v EQ
bf [16]

:[15]
pushi.e 14
conv.i.v
call.i snd_play(argc=1)
popz.v

:[16]
push.v self.timer
pushi.e 0
cmp.i.v GTE
bf [18]

:[17]
push.v self.timer
pushi.e 2
cmp.i.v LTE
b [19]

:[18]
push.e 0

:[19]
bf [28]

:[20]
push.v self.dir
pushi.e 0
cmp.i.v EQ
bf [22]

:[21]
push.v self.y
push.v self.height
pushi.e 3
conv.i.d
div.d.v
call.i floor(argc=1)
sub.v.v
pop.v.v self.y

:[22]
push.v self.dir
pushi.e 1
cmp.i.v EQ
bf [24]

:[23]
push.v self.x
push.v self.height
pushi.e 3
conv.i.d
div.d.v
call.i floor(argc=1)
sub.v.v
pop.v.v self.x

:[24]
push.v self.dir
pushi.e 2
cmp.i.v EQ
bf [26]

:[25]
push.v self.y
push.v self.height
pushi.e 3
conv.i.d
div.d.v
call.i floor(argc=1)
add.v.v
pop.v.v self.y

:[26]
push.v self.dir
pushi.e 3
cmp.i.v EQ
bf [28]

:[27]
push.v self.x
push.v self.height
pushi.e 3
conv.i.d
div.d.v
call.i floor(argc=1)
add.v.v
pop.v.v self.x

:[28]
push.v self.timer
pushi.e 3
cmp.i.v EQ
bf [37]

:[29]
push.v self.dir
pushi.e 0
cmp.i.v EQ
bf [31]

:[30]
push.v self.cosm_y
push.v self.height
pushi.e 5
conv.i.d
div.d.v
call.i floor(argc=1)
sub.v.v
pop.v.v self.cosm_y

:[31]
push.v self.dir
pushi.e 1
cmp.i.v EQ
bf [33]

:[32]
push.v self.cosm_x
push.v self.height
pushi.e 5
conv.i.d
div.d.v
call.i floor(argc=1)
sub.v.v
pop.v.v self.cosm_x

:[33]
push.v self.dir
pushi.e 2
cmp.i.v EQ
bf [35]

:[34]
push.v self.cosm_y
push.v self.height
pushi.e 5
conv.i.d
div.d.v
call.i floor(argc=1)
add.v.v
pop.v.v self.cosm_y

:[35]
push.v self.dir
pushi.e 3
cmp.i.v EQ
bf [37]

:[36]
push.v self.cosm_x
push.v self.height
pushi.e 5
conv.i.d
div.d.v
call.i floor(argc=1)
add.v.v
pop.v.v self.cosm_x

:[37]
push.v self.timer
pushi.e 4
cmp.i.v EQ
bf [39]

:[38]
pushi.e 0
pop.v.i self.cosm_x
pushi.e 0
pop.v.i self.cosm_y

:[39]
push.v self.retain
pushi.e 0
cmp.i.v GTE
bf [58]

:[40]
push.v self.timer
pushi.e 4
cmp.i.v GTE
bf [42]

:[41]
push.v self.timer
pushi.e 8
cmp.i.v LTE
b [43]

:[42]
push.e 0

:[43]
bf [58]

:[44]
push.v self.racket
call.i random(argc=1)
push.v self.racket
call.i random(argc=1)
sub.v.v
pop.v.v self.rr
push.v self.racket
call.i random(argc=1)
push.v self.racket
call.i random(argc=1)
sub.v.v
pop.v.v self.rr2
push.v self.racket
pushi.e 1
cmp.i.v GT
bf [46]

:[45]
push.v self.racket
pushi.e 1
sub.i.v
pop.v.v self.racket

:[46]
push.v self.timer
pushi.e 9
cmp.i.v EQ
bf [48]

:[47]
pushi.e 0
pop.v.i self.rr

:[48]
push.v self.timer
pushi.e 9
cmp.i.v EQ
bf [50]

:[49]
pushi.e 0
pop.v.i self.rr2

:[50]
push.v self.dir
pushi.e 0
cmp.i.v EQ
bf [52]

:[51]
push.v self.ideal_y
push.v self.height
sub.v.v
push.v self.rr
add.v.v
pop.v.v self.y
push.v self.ideal_x
push.v self.rr2
add.v.v
pop.v.v self.x

:[52]
push.v self.dir
pushi.e 1
cmp.i.v EQ
bf [54]

:[53]
push.v self.ideal_y
push.v self.rr
add.v.v
pop.v.v self.y
push.v self.ideal_x
push.v self.height
sub.v.v
push.v self.rr2
add.v.v
pop.v.v self.x

:[54]
push.v self.dir
pushi.e 2
cmp.i.v EQ
bf [56]

:[55]
push.v self.ideal_y
push.v self.height
add.v.v
push.v self.rr
add.v.v
pop.v.v self.y
push.v self.ideal_x
push.v self.rr2
add.v.v
pop.v.v self.x

:[56]
push.v self.dir
pushi.e 3
cmp.i.v EQ
bf [58]

:[57]
push.v self.ideal_y
push.v self.rr
add.v.v
pop.v.v self.y
push.v self.ideal_x
push.v self.height
add.v.v
push.v self.rr2
add.v.v
pop.v.v self.x

:[58]
push.v self.timer
pushi.e 9
push.v self.retain
add.v.i
cmp.v.v GTE
bf [71]

:[59]
push.v self.dir
pushi.e 0
cmp.i.v EQ
bf [62]

:[60]
push.v self.y
push.v self.height
pushi.e 4
conv.i.d
div.d.v
call.i floor(argc=1)
add.v.v
pop.v.v self.y
push.v self.y
push.v self.ideal_y
cmp.v.v GT
bf [62]

:[61]
call.i instance_destroy(argc=0)
popz.v

:[62]
push.v self.dir
pushi.e 1
cmp.i.v EQ
bf [65]

:[63]
push.v self.x
push.v self.height
pushi.e 4
conv.i.d
div.d.v
call.i floor(argc=1)
add.v.v
pop.v.v self.x
push.v self.x
push.v self.ideal_x
cmp.v.v GT
bf [65]

:[64]
call.i instance_destroy(argc=0)
popz.v

:[65]
push.v self.dir
pushi.e 2
cmp.i.v EQ
bf [68]

:[66]
push.v self.y
push.v self.height
pushi.e 4
conv.i.d
div.d.v
call.i floor(argc=1)
sub.v.v
pop.v.v self.y
push.v self.y
push.v self.ideal_y
cmp.v.v LT
bf [68]

:[67]
call.i instance_destroy(argc=0)
popz.v

:[68]
push.v self.dir
pushi.e 3
cmp.i.v EQ
bf [71]

:[69]
push.v self.x
push.v self.height
pushi.e 4
conv.i.d
div.d.v
call.i floor(argc=1)
sub.v.v
pop.v.v self.x
push.v self.x
push.v self.ideal_x
cmp.v.v LT
bf [71]

:[70]
call.i instance_destroy(argc=0)
popz.v

:[71]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer

:[end]