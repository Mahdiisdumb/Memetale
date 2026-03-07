.localvar 0 arguments
.localvar 1 xx 3485
.localvar 2 slim 3487
.localvar 3 vpos 3488
.localvar 4 linespace 3489
.localvar 5 scale_x 3490
.localvar 6 swidth 3491
.localvar 7 spos 3492

:[0]
pushi.e 2
conv.i.v
call.i scr_setfont(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [20]

:[1]
push.v self.x
pushi.e 20
add.i.v
pop.v.v local.xx
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [3]

:[2]
push.v local.xx
pushi.e 30
sub.i.v
pop.v.v local.xx

:[3]
pushi.e 0
conv.i.v
pushi.e 2
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i cos(argc=1)
push.d 0.05
mul.d.v
sub.v.i
pushi.e 2
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.05
mul.d.v
sub.v.i
pushglb.v global.ratings
call.i string(argc=1)
push.s "mett_ratings"@32216
conv.s.v
call.i scr_gettext(argc=2)
push.v self.y
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i cos(argc=1)
add.v.v
pushloc.v local.xx
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.v
call.i draw_text_transformed(argc=6)
popz.v
pushi.e 0
pop.v.i self.i

:[4]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [17]

:[5]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.rq_v
pushi.e 0
cmp.i.v GTE
bf [7]

:[6]
push.s "+"@48708
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.rq_v
call.i string(argc=1)
add.v.s
pop.v.v self.thisv
push.i 65280
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [8]

:[7]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.rq_v
call.i string(argc=1)
pop.v.v self.thisv
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[8]
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.rq_s
pushi.e 1
push.v self.i
pushi.e 2
add.i.v
pushi.e 2
conv.i.d
div.d.v
mul.v.i
add.v.v
pop.i.v [array]self.rq_s
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.rq_s
pushi.e 120
cmp.i.v GT
bf [10]

:[9]
pushi.e 170
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.rq_s
sub.v.i
pushi.e 50
conv.i.d
div.d.v
call.i draw_set_alpha(argc=1)
popz.v

:[10]
pushi.e 60
pop.v.i local.slim
pushi.e 130
pop.v.i local.vpos
pushi.e 12
pop.v.i local.linespace
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [12]

:[11]
pushi.e 40
pop.v.i local.slim
pushi.e 150
pop.v.i local.vpos
pushi.e 15
pop.v.i local.linespace

:[12]
pushi.e 1
pop.v.i local.scale_x
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.rq
call.i string_width(argc=1)
pop.v.v local.swidth
pushloc.v local.swidth
pushloc.v local.vpos
pushloc.v local.slim
sub.v.v
cmp.v.v GT
bf [14]

:[13]
pushloc.v local.vpos
pushloc.v local.slim
sub.v.v
pushloc.v local.swidth
div.v.v
pop.v.v local.scale_x

:[14]
pushloc.v local.vpos
pushloc.v local.swidth
pushloc.v local.scale_x
mul.v.v
sub.v.v
call.i round(argc=1)
pop.v.v local.spos
pushi.e 0
pop.v.i local.xx
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.rq_s
pushi.e 10
cmp.i.v LT
bf [16]

:[15]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.rq_s
call.i cos(argc=1)
pushi.e 21
mul.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.rq_s
pushi.e 2
mul.i.v
pushi.e 1
add.i.v
div.v.v
pop.v.v local.xx

:[16]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local.scale_x
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.rq
push.v self.y
pushi.e 140
add.i.v
push.v self.i
pushloc.v local.linespace
mul.v.v
add.v.v
push.v self.x
pushloc.v local.spos
add.v.v
pushloc.v local.xx
add.v.v
call.i draw_text_transformed(argc=6)
popz.v
push.v self.thisv
push.v self.y
pushi.e 140
add.i.v
push.v self.i
pushloc.v local.linespace
mul.v.v
add.v.v
push.v self.x
pushloc.v local.vpos
add.v.v
pushloc.v local.xx
add.v.v
call.i draw_text(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [4]

:[17]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 3
conv.i.v
push.v self.y
pushi.e 130
add.i.v
push.v self.x
pushi.e 10
add.i.v
push.v self.y
pushi.e 40
add.i.v
push.v self.x
pushi.e 10
add.i.v
call.i draw_line_width(argc=5)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 3
conv.i.v
push.v self.y
pushi.e 130
add.i.v
push.v self.x
pushi.e 180
add.i.v
push.v self.y
pushi.e 130
add.i.v
push.v self.x
pushi.e 10
add.i.v
call.i draw_line_width(argc=5)
popz.v
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.y
pushi.e 55
add.i.v
push.v self.x
pushi.e 180
add.i.v
push.v self.y
pushi.e 55
add.i.v
push.v self.x
pushi.e 10
add.i.v
call.i draw_line(argc=4)
popz.v
pushglb.v global.ratings
push.d 0.0075
mul.d.v
pop.v.v self.ratingsy
push.i 16776960
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.y
pushi.e 130
add.i.v
push.v self.ratingsy
sub.v.v
push.v self.x
pushi.e 180
add.i.v
push.v self.y
pushi.e 130
add.i.v
push.v self.ratingsy
sub.v.v
push.v self.x
pushi.e 10
add.i.v
call.i draw_line(argc=4)
popz.v
pushi.e 0
pop.v.i self.i

:[18]
push.v self.i
pushi.e 9
cmp.i.v LT
bf [20]

:[19]
push.i 16711935
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.rp
push.d 0.0075
mul.d.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.rpy
pushi.e -1
push.v self.i
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.rp
push.d 0.0075
mul.d.v
pushi.e -1
push.v self.i
pushi.e 1
add.i.v
conv.v.i
pop.v.v [array]self.rpy
pushi.e 2
conv.i.v
push.v self.y
pushi.e 130
add.i.v
pushi.e -1
push.v self.i
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.rpy
sub.v.v
push.v self.x
pushi.e 30
add.i.v
push.v self.i
pushi.e 20
mul.i.v
add.v.v
push.v self.y
pushi.e 130
add.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.rpy
sub.v.v
push.v self.x
pushi.e 10
add.i.v
push.v self.i
pushi.e 20
mul.i.v
add.v.v
call.i draw_line_width(argc=5)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [18]

:[20]
push.v self.checkhp
pushglb.v global.hp
cmp.v.v GT
bf [26]

:[21]
pushi.e 1
pop.v.i self.curtype
push.v self.boastmode
pushi.e 1
cmp.i.v EQ
bf [23]

:[22]
pushi.e 2
pop.v.i self.curtype
pushi.e 0
pop.v.i self.boastmode

:[23]
push.v self.heel
pushi.e 1
cmp.i.v EQ
bf [25]

:[24]
pushi.e 3
pop.v.i self.curtype

:[25]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[26]
pushglb.v global.hp
pop.v.v self.checkhp
push.v self.boastmode
pushi.e 1
cmp.i.v EQ
bf [48]

:[27]
pushglb.v global.turntimer
pushi.e 0
cmp.i.v GT
bf [29]

:[28]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
b [30]

:[29]
push.e 0

:[30]
bf [41]

:[31]
push.v self.o_ob
pushi.e 0
cmp.i.v EQ
bf [33]

:[32]
pushi.e 1
pop.v.i self.o_ob
b [34]

:[33]
pushi.e 0
pop.v.i self.o_ob

:[34]
push.v self.o_ob
pushi.e 0
cmp.i.v EQ
bf [36]

:[35]
push.v global.ratings
pushi.e 1
add.i.v
pop.v.v global.ratings

:[36]
push.v self.o_ob
pushi.e 1
cmp.i.v EQ
bf [38]

:[37]
push.v global.ratings
pushi.e 2
add.i.v
pop.v.v global.ratings

:[38]
pushi.e 404
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [41]

:[39]
push.v 404.turns
pushi.e 20
cmp.i.v GTE
bf [41]

:[40]
push.v global.ratings
pushi.e 2
add.i.v
pop.v.v global.ratings

:[41]
pushglb.v global.myfight
pushi.e 0
cmp.i.v EQ
bf [43]

:[42]
pushglb.v global.mnfight
pushi.e 0
cmp.i.v EQ
b [44]

:[43]
push.e 0

:[44]
bf [46]

:[45]
pushi.e 0
pop.v.i self.boastmode

:[46]
pushi.e 410
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [48]

:[47]
pushi.e 0
pop.v.i self.boastmode

:[48]
push.v self.heel
pushi.e 1
cmp.i.v EQ
bf [54]

:[49]
pushglb.v global.myfight
pushi.e 0
cmp.i.v EQ
bf [51]

:[50]
pushglb.v global.mnfight
pushi.e 0
cmp.i.v EQ
b [52]

:[51]
push.e 0

:[52]
bf [54]

:[53]
pushi.e 0
pop.v.i self.heel

:[54]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.novel_armor
pushi.e 1
cmp.i.v EQ
bf [56]

:[55]
pushi.e 6
pop.v.i self.curtype
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 0
pop.v.i self.novel_armor

:[56]
pushglb.v global.mnfight
pushi.e 0
cmp.i.v EQ
bf [58]

:[57]
pushglb.v global.myfight
pushi.e 0
cmp.i.v EQ
b [59]

:[58]
push.e 0

:[59]
bf [end]

:[60]
push.v self.timeloss
pushi.e 1
add.i.v
pop.v.v self.timeloss
push.v self.o_o
pushi.e 1
add.i.v
pop.v.v self.o_o
push.v self.o_o
pushi.e 3
cmp.i.v GT
bf [62]

:[61]
pushi.e 0
pop.v.i self.o_o

:[62]
push.v self.timeloss
pushi.e 4000
cmp.i.v LT
bf [64]

:[63]
push.v self.o_o
pushi.e 0
cmp.i.v EQ
b [65]

:[64]
push.e 0

:[65]
bf [end]

:[66]
push.v global.ratings
pushi.e 1
sub.i.v
pop.v.v global.ratings

:[end]