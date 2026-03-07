.localvar 0 arguments

:[0]
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.skip
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [21]

:[4]
push.v self.x
push.v self.idealx
push.v self.x
sub.v.v
pushi.e 3
conv.i.d
div.d.v
call.i floor(argc=1)
add.v.v
pop.v.v self.x
push.v self.y
push.v self.idealy
push.v self.y
sub.v.v
pushi.e 3
conv.i.d
div.d.v
call.i floor(argc=1)
add.v.v
pop.v.v self.y
push.v self.x
push.v self.idealx
cmp.v.v LT
bf [6]

:[5]
push.v self.x
pushi.e 1
add.i.v
pop.v.v self.x

:[6]
push.v self.y
push.v self.idealy
cmp.v.v LT
bf [8]

:[7]
push.v self.y
pushi.e 1
add.i.v
pop.v.v self.y

:[8]
push.v self.x
push.v self.idealx
cmp.v.v GT
bf [10]

:[9]
push.v self.x
pushi.e 1
sub.i.v
pop.v.v self.x

:[10]
push.v self.y
push.v self.idealy
cmp.v.v GT
bf [12]

:[11]
push.v self.y
pushi.e 1
sub.i.v
pop.v.v self.y

:[12]
push.v self.x
push.v self.idealx
sub.v.v
call.i abs(argc=1)
pushi.e 3
cmp.i.v LT
bf [14]

:[13]
push.v self.idealx
pop.v.v self.x

:[14]
push.v self.y
push.v self.idealy
sub.v.v
call.i abs(argc=1)
pushi.e 3
cmp.i.v LT
bf [16]

:[15]
push.v self.idealy
pop.v.v self.y

:[16]
push.v self.x
push.v self.idealx
sub.v.v
call.i abs(argc=1)
push.d 0.1
cmp.d.v LT
bf [18]

:[17]
push.v self.y
push.v self.idealy
sub.v.v
call.i abs(argc=1)
push.d 0.1
cmp.d.v LT
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
pushi.e 2
pop.v.i self.con
pushi.e 2
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[21]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [23]

:[22]
push.v self.skip
pushi.e 1
cmp.i.v EQ
b [24]

:[23]
push.e 0

:[24]
bf [49]

:[25]
push.v self.x
push.v self.idealx
push.v self.x
sub.v.v
pushi.e 3
conv.i.d
div.d.v
call.i floor(argc=1)
add.v.v
pop.v.v self.x
push.v self.y
push.v self.idealy
push.v self.y
sub.v.v
pushi.e 3
conv.i.d
div.d.v
call.i floor(argc=1)
add.v.v
pop.v.v self.y
push.v self.x
push.v self.idealx
cmp.v.v LT
bf [27]

:[26]
push.v self.x
pushi.e 1
add.i.v
pop.v.v self.x

:[27]
push.v self.y
push.v self.idealy
cmp.v.v LT
bf [29]

:[28]
push.v self.y
pushi.e 1
add.i.v
pop.v.v self.y

:[29]
push.v self.x
push.v self.idealx
cmp.v.v GT
bf [31]

:[30]
push.v self.x
pushi.e 1
sub.i.v
pop.v.v self.x

:[31]
push.v self.y
push.v self.idealy
cmp.v.v GT
bf [33]

:[32]
push.v self.y
pushi.e 1
sub.i.v
pop.v.v self.y

:[33]
push.v self.x
push.v self.idealx
sub.v.v
call.i abs(argc=1)
pushi.e 3
cmp.i.v LT
bf [35]

:[34]
push.v self.idealx
pop.v.v self.x

:[35]
push.v self.y
push.v self.idealy
sub.v.v
call.i abs(argc=1)
pushi.e 3
cmp.i.v LT
bf [37]

:[36]
push.v self.idealy
pop.v.v self.y

:[37]
push.v self.image_angle
push.v self.idealrot
push.v self.image_angle
sub.v.v
pushi.e 3
conv.i.d
div.d.v
call.i floor(argc=1)
add.v.v
pop.v.v self.image_angle
push.v self.image_angle
push.v self.idealrot
cmp.v.v LT
bf [39]

:[38]
push.v self.image_angle
pushi.e 1
add.i.v
pop.v.v self.image_angle

:[39]
push.v self.image_angle
push.v self.idealrot
cmp.v.v GT
bf [41]

:[40]
push.v self.image_angle
pushi.e 1
sub.i.v
pop.v.v self.image_angle

:[41]
push.v self.image_angle
push.v self.idealrot
sub.v.v
call.i abs(argc=1)
pushi.e 3
cmp.i.v LT
bf [43]

:[42]
push.v self.idealrot
pop.v.v self.image_angle

:[43]
push.v self.x
push.v self.idealx
sub.v.v
call.i abs(argc=1)
push.d 0.1
cmp.d.v LT
bf [46]

:[44]
push.v self.y
push.v self.idealy
sub.v.v
call.i abs(argc=1)
push.d 0.1
cmp.d.v LT
bf [46]

:[45]
push.v self.idealrot
push.v self.image_angle
sub.v.v
call.i abs(argc=1)
push.d 0.01
cmp.d.v LT
b [47]

:[46]
push.e 0

:[47]
bf [49]

:[48]
pushi.e 4
pop.v.i self.con
push.v self.pause
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[49]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [58]

:[50]
push.v self.image_angle
push.v self.idealrot
push.v self.image_angle
sub.v.v
pushi.e 3
conv.i.d
div.d.v
call.i floor(argc=1)
add.v.v
pop.v.v self.image_angle
push.v self.image_angle
push.v self.idealrot
cmp.v.v LT
bf [52]

:[51]
push.v self.image_angle
pushi.e 1
add.i.v
pop.v.v self.image_angle

:[52]
push.v self.image_angle
push.v self.idealrot
cmp.v.v GT
bf [54]

:[53]
push.v self.image_angle
pushi.e 1
sub.i.v
pop.v.v self.image_angle

:[54]
push.v self.image_angle
push.v self.idealrot
sub.v.v
call.i abs(argc=1)
pushi.e 3
cmp.i.v LT
bf [56]

:[55]
push.v self.idealrot
pop.v.v self.image_angle

:[56]
push.v self.idealrot
push.v self.image_angle
sub.v.v
call.i abs(argc=1)
push.d 0.01
cmp.d.v LT
bf [58]

:[57]
pushi.e 4
pop.v.i self.con
push.v self.pause
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[58]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [60]

:[59]
pushi.e 6
pop.v.i self.con
pushi.e 4
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[60]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [62]

:[61]
push.v self.image_index
pushi.e 1
add.i.v
pop.v.v self.image_index

:[62]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [end]

:[63]
push.v self.image_index
pushi.e 4
cmp.i.v EQ
bf [65]

:[64]
pushi.e 5
pop.v.i self.image_index
b [67]

:[65]
push.v self.image_index
pushi.e 5
cmp.i.v EQ
bf [67]

:[66]
pushi.e 4
pop.v.i self.image_index

:[67]
push.v self.idealrot
pushi.e 90
add.i.v
pop.v.v self.direction
push.v self.btimer
pushi.e 0
cmp.i.v EQ
bf [71]

:[68]
pushi.e 520
pushenv [70]

:[69]
pushi.e 1
pop.v.i self.p_beam

:[70]
popenv [69]

:[71]
push.v self.btimer
pushi.e 0
cmp.i.v EQ
bf [73]

:[72]
push.v self.image_xscale
pushi.e 2
cmp.i.v GTE
b [74]

:[73]
push.e 0

:[74]
bf [76]

:[75]
pushi.e 513
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.sh
pushi.e 5
push.v self.sh
conv.v.i
pop.v.i [stacktop]self.intensity

:[76]
push.v self.btimer
pushi.e 1
add.i.v
pop.v.v self.btimer
push.v self.btimer
pushi.e 5
cmp.i.v LT
bf [78]

:[77]
push.v self.speed
pushi.e 1
add.i.v
pop.v.v self.speed
push.v self.bt
pushi.e 35
push.v self.image_xscale
mul.v.i
pushi.e 4
conv.i.d
div.d.v
call.i floor(argc=1)
add.v.v
pop.v.v self.bt
b [79]

:[78]
push.v self.speed
pushi.e 4
add.i.v
pop.v.v self.speed

:[79]
push.v self.btimer
pushi.e 5
push.v self.terminal
add.v.i
cmp.v.v GT
bf [82]

:[80]
push.v self.bt
push.d 0.8
mul.d.v
pop.v.v self.bt
push.v self.fade
push.d 0.1
sub.d.v
pop.v.v self.fade
push.v self.fade
call.i draw_set_alpha(argc=1)
popz.v
push.v self.bt
pushi.e 2
cmp.i.v LTE
bf [82]

:[81]
call.i instance_destroy(argc=0)
popz.v

:[82]
push.v self.x
push.v self.sprite_width
neg.v
cmp.v.v LT
bf [84]

:[83]
pushi.e 0
pop.v.i self.speed

:[84]
push.v self.x
pushbltn.v self.room_width
push.v self.sprite_width
add.v.v
cmp.v.v GT
bf [86]

:[85]
pushi.e 0
pop.v.i self.speed

:[86]
push.v self.y
pushbltn.v self.room_height
push.v self.sprite_height
add.v.v
cmp.v.v GT
bf [88]

:[87]
pushi.e 0
pop.v.i self.speed

:[88]
push.v self.x
push.v self.sprite_height
neg.v
cmp.v.v LT
bf [90]

:[89]
pushi.e 0
pop.v.i self.speed

:[90]
push.v self.bbsiner
pushi.e 1
add.i.v
pop.v.v self.bbsiner
push.v self.bbsiner
push.d 1.5
div.d.v
call.i sin(argc=1)
push.v self.bt
mul.v.v
pushi.e 4
conv.i.d
div.d.v
pop.v.v self.bb
push.v self.image_angle
pushi.e 90
sub.i.v
pushi.e 70
conv.i.v
call.i lengthdir_x(argc=2)
push.v self.image_xscale
pushi.e 2
conv.i.d
div.d.v
mul.v.v
pop.v.v self.xx
push.v self.image_angle
pushi.e 90
sub.i.v
pushi.e 70
conv.i.v
call.i lengthdir_y(argc=2)
push.v self.image_xscale
pushi.e 2
conv.i.d
div.d.v
mul.v.v
pop.v.v self.yy
pushi.e 2
conv.i.v
call.i random(argc=1)
pushi.e 2
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.rr
pushi.e 2
conv.i.v
call.i random(argc=1)
pushi.e 2
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.rr2
push.v self.image_angle
pushi.e 90
sub.i.v
pushi.e 1000
conv.i.v
call.i lengthdir_x(argc=2)
pop.v.v self.xxx
push.v self.image_angle
pushi.e 90
sub.i.v
pushi.e 1000
conv.i.v
call.i lengthdir_y(argc=2)
pop.v.v self.yyy
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.bt
push.v self.bb
add.v.v
push.v self.y
push.v self.yyy
add.v.v
push.v self.rr2
add.v.v
push.v self.x
push.v self.xxx
add.v.v
push.v self.rr
add.v.v
push.v self.y
push.v self.yy
add.v.v
push.v self.rr2
add.v.v
push.v self.x
push.v self.xx
add.v.v
push.v self.rr
add.v.v
call.i draw_line_width(argc=5)
popz.v
push.v self.image_angle
pushi.e 90
sub.i.v
pushi.e 50
conv.i.v
call.i lengthdir_x(argc=2)
push.v self.image_xscale
pushi.e 2
conv.i.d
div.d.v
mul.v.v
pop.v.v self.xxa
push.v self.image_angle
pushi.e 90
sub.i.v
pushi.e 50
conv.i.v
call.i lengthdir_y(argc=2)
push.v self.image_xscale
pushi.e 2
conv.i.d
div.d.v
mul.v.v
pop.v.v self.yya
push.v self.image_angle
pushi.e 90
sub.i.v
pushi.e 60
conv.i.v
call.i lengthdir_x(argc=2)
push.v self.image_xscale
pushi.e 2
conv.i.d
div.d.v
mul.v.v
pop.v.v self.xxb
push.v self.image_angle
pushi.e 90
sub.i.v
pushi.e 60
conv.i.v
call.i lengthdir_y(argc=2)
push.v self.image_xscale
pushi.e 2
conv.i.d
div.d.v
mul.v.v
pop.v.v self.yyb
push.v self.bt
pushi.e 2
conv.i.d
div.d.v
push.v self.bb
add.v.v
push.v self.y
push.v self.yya
add.v.v
push.v self.rr2
add.v.v
push.v self.x
push.v self.xxa
add.v.v
push.v self.rr
add.v.v
push.v self.y
push.v self.yy
add.v.v
push.v self.rr2
add.v.v
push.v self.x
push.v self.xx
add.v.v
push.v self.rr
add.v.v
call.i draw_line_width(argc=5)
popz.v
push.v self.bt
push.d 1.25
div.d.v
push.v self.bb
add.v.v
push.v self.y
push.v self.yyb
add.v.v
push.v self.rr2
add.v.v
push.v self.x
push.v self.xxb
add.v.v
push.v self.rr
add.v.v
push.v self.y
push.v self.yy
add.v.v
push.v self.rr2
add.v.v
push.v self.x
push.v self.xx
add.v.v
push.v self.rr
add.v.v
call.i draw_line_width(argc=5)
popz.v
push.v self.image_angle
pushi.e 1
conv.i.v
call.i lengthdir_x(argc=2)
pop.v.v self.nx_factor
push.v self.image_angle
pushi.e 1
conv.i.v
call.i lengthdir_y(argc=2)
pop.v.v self.ny_factor
push.v self.col_o
pushi.e 1
cmp.i.v EQ
bf [92]

:[91]
push.v self.fade
push.d 0.8
cmp.d.v GTE
b [93]

:[92]
push.e 0

:[93]
bf [104]

:[94]
pushi.e 0
pop.v.i self.cl

:[95]
push.v self.cl
pushi.e 4
cmp.i.v LT
bf [99]

:[96]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 744
conv.i.v
push.v self.y
push.v self.yyy
add.v.v
push.v self.ny_factor
push.v self.bt
mul.v.v
pushi.e 2
conv.i.d
div.d.v
push.v self.cl
pushi.e 4
conv.i.d
div.d.v
mul.v.v
sub.v.v
push.v self.x
push.v self.xxx
add.v.v
push.v self.nx_factor
push.v self.bt
mul.v.v
pushi.e 2
conv.i.d
div.d.v
push.v self.cl
pushi.e 4
conv.i.d
div.d.v
mul.v.v
sub.v.v
push.v self.y
push.v self.yy
add.v.v
push.v self.ny_factor
push.v self.bt
mul.v.v
pushi.e 2
conv.i.d
div.d.v
push.v self.cl
pushi.e 4
conv.i.d
div.d.v
mul.v.v
sub.v.v
push.v self.x
push.v self.xx
add.v.v
push.v self.nx_factor
push.v self.bt
mul.v.v
pushi.e 2
conv.i.d
div.d.v
push.v self.cl
pushi.e 4
conv.i.d
div.d.v
mul.v.v
sub.v.v
call.i collision_line(argc=7)
conv.v.b
bf [98]

:[97]
pushi.e 7
conv.i.v
call.i event_user(argc=1)
popz.v

:[98]
push.v self.cl
pushi.e 1
add.i.v
pop.v.v self.cl
b [95]

:[99]
pushi.e 0
pop.v.i self.cl

:[100]
push.v self.cl
pushi.e 4
cmp.i.v LT
bf [104]

:[101]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 744
conv.i.v
push.v self.y
push.v self.yyy
add.v.v
push.v self.ny_factor
push.v self.bt
mul.v.v
pushi.e 2
conv.i.d
div.d.v
push.v self.cl
pushi.e 4
conv.i.d
div.d.v
mul.v.v
add.v.v
push.v self.x
push.v self.xxx
add.v.v
push.v self.nx_factor
push.v self.bt
mul.v.v
pushi.e 2
conv.i.d
div.d.v
push.v self.cl
pushi.e 4
conv.i.d
div.d.v
mul.v.v
add.v.v
push.v self.y
push.v self.yy
add.v.v
push.v self.ny_factor
push.v self.bt
mul.v.v
pushi.e 2
conv.i.d
div.d.v
push.v self.cl
pushi.e 4
conv.i.d
div.d.v
mul.v.v
add.v.v
push.v self.x
push.v self.xx
add.v.v
push.v self.nx_factor
push.v self.bt
mul.v.v
pushi.e 2
conv.i.d
div.d.v
push.v self.cl
pushi.e 4
conv.i.d
div.d.v
mul.v.v
add.v.v
call.i collision_line(argc=7)
conv.v.b
bf [103]

:[102]
pushi.e 7
conv.i.v
call.i event_user(argc=1)
popz.v

:[103]
push.v self.cl
pushi.e 1
add.i.v
pop.v.v self.cl
b [100]

:[104]
push.v self.col_o
pushi.e 0
cmp.i.v EQ
bf [106]

:[105]
pushi.e 1
pop.v.i self.col_o

:[106]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]