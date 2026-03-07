.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.inv_check
push.v self.inv_timer
pushi.e 1
add.i.v
pop.v.v self.inv_timer
pushglb.v global.inv
pushi.e 45
cmp.i.v GTE
bf [2]

:[1]
push.v self.inv_timer
pushi.e 5
cmp.i.v GTE
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.i self.inv_check
pushi.e 0
pop.v.i self.inv_timer

:[5]
pushglb.v global.inv
pushi.e 60
cmp.i.v GTE
bf [7]

:[6]
push.v self.inv_timer
pushi.e 4
cmp.i.v GTE
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 1
pop.v.i self.inv_check
pushi.e 0
pop.v.i self.inv_timer

:[10]
pushglb.v global.inv
pushi.e 75
cmp.i.v GTE
bf [12]

:[11]
push.v self.inv_timer
pushi.e 3
cmp.i.v GTE
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
pushi.e 1
pop.v.i self.inv_check
pushi.e 0
pop.v.i self.inv_timer

:[15]
push.v self.lac
pushi.e 4
cmp.i.v GTE
bf [18]

:[16]
pushglb.v global.hp
pushi.e 10
cmp.i.v LTE
bf [18]

:[17]
push.v self.inv_timer
pushi.e 2
cmp.i.v GTE
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
pushi.e 1
pop.v.i self.inv_check
pushi.e 0
pop.v.i self.inv_timer

:[21]
push.v self.inv_check
pushi.e 0
cmp.i.v EQ
bf [23]

:[22]
pushi.e 0
pop.v.i self.damageturn

:[23]
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 130
sub.i.v
pop.v.v self.y
push.v self.bounce
pushi.e 3
cmp.i.v EQ
bf [25]

:[24]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.siner
pushi.e 18
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
pop.v.v self.yoff

:[25]
push.v self.bounce
pushi.e 2
cmp.i.v EQ
bf [27]

:[26]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.siner
pushi.e 15
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
pop.v.v self.yoff

:[27]
push.v self.bounce
pushi.e 1
cmp.i.v EQ
bf [29]

:[28]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pop.v.v self.yoff
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i cos(argc=1)
pop.v.v self.xoff

:[29]
push.v self.bounce
pushi.e 0
cmp.i.v EQ
bf [31]

:[30]
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.yoff
pushi.e 0
pop.v.i self.xoff

:[31]
push.v self.deadtest
pushi.e 0
cmp.i.v EQ
bf [104]

:[32]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 90
add.i.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 699
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.movearm
pushi.e 0
cmp.i.v EQ
bf [34]

:[33]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 42
add.i.v
push.v self.yoff
push.d 1.5
div.d.v
add.v.v
push.v self.x
push.v self.xoff
add.v.v
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 701
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[34]
push.v self.movearm
pushi.e 1
cmp.i.v EQ
bf [48]

:[35]
push.v self.arm_i
pushi.e 11
cmp.i.v GTE
bf [37]

:[36]
pushi.e 11
pop.v.i self.arm_i

:[37]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 42
add.i.v
push.v self.x
push.v self.arm_i
pushi.e 2
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 705
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.arm_i
pushi.e 2
cmp.i.v EQ
bf [39]

:[38]
pushi.e -4
pop.v.i self.headx

:[39]
push.v self.arm_i
pushi.e 4
cmp.i.v EQ
bf [41]

:[40]
pushi.e -8
pop.v.i self.headx

:[41]
push.v self.arm_i
pushi.e 6
cmp.i.v EQ
bf [43]

:[42]
pushi.e 10
pop.v.i self.headx

:[43]
push.v self.arm_i
pushi.e 8
cmp.i.v EQ
bf [45]

:[44]
pushi.e 4
pop.v.i self.headx

:[45]
push.v self.arm_i
pushi.e 11
cmp.i.v LT
bf [47]

:[46]
push.v self.arm_i
push.v self.aspeed
add.v.v
pop.v.v self.arm_i
b [48]

:[47]
pushi.e 11
pop.v.i self.arm_i

:[48]
push.v self.movearm
pushi.e 2
cmp.i.v EQ
bf [64]

:[49]
push.v self.arm_i
pushi.e 11
cmp.i.v GTE
bf [51]

:[50]
pushi.e 11
pop.v.i self.arm_i

:[51]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 42
add.i.v
push.v self.x
push.v self.arm_i
pushi.e 2
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 707
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.arm_i
pushi.e 0
cmp.i.v EQ
bf [53]

:[52]
pushi.e 4
pop.v.i self.heady

:[53]
push.v self.arm_i
pushi.e 2
cmp.i.v EQ
bf [55]

:[54]
pushi.e 10
pop.v.i self.heady

:[55]
push.v self.arm_i
pushi.e 4
cmp.i.v EQ
bf [57]

:[56]
pushi.e 4
pop.v.i self.heady

:[57]
push.v self.arm_i
pushi.e 6
cmp.i.v EQ
bf [59]

:[58]
pushi.e -4
pop.v.i self.heady

:[59]
push.v self.arm_i
pushi.e 8
cmp.i.v EQ
bf [61]

:[60]
pushi.e 0
pop.v.i self.heady

:[61]
push.v self.arm_i
pushi.e 11
cmp.i.v LT
bf [63]

:[62]
push.v self.arm_i
push.v self.aspeed
add.v.v
pop.v.v self.arm_i
b [64]

:[63]
pushi.e 11
pop.v.i self.arm_i

:[64]
push.v self.movearm
pushi.e 3
cmp.i.v EQ
bf [78]

:[65]
push.v self.arm_i
pushi.e 9
cmp.i.v GTE
bf [67]

:[66]
pushi.e 9
pop.v.i self.arm_i

:[67]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 42
add.i.v
push.v self.x
push.v self.arm_i
pushi.e 2
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 706
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.arm_i
pushi.e 0
cmp.i.v EQ
bf [69]

:[68]
pushi.e 0
pop.v.i self.heady

:[69]
push.v self.arm_i
pushi.e 2
cmp.i.v EQ
bf [71]

:[70]
pushi.e 0
pop.v.i self.heady

:[71]
push.v self.arm_i
pushi.e 4
cmp.i.v EQ
bf [73]

:[72]
pushi.e 6
pop.v.i self.heady

:[73]
push.v self.arm_i
pushi.e 6
cmp.i.v EQ
bf [75]

:[74]
pushi.e 10
pop.v.i self.heady

:[75]
push.v self.arm_i
pushi.e 9
cmp.i.v LT
bf [77]

:[76]
push.v self.arm_i
push.v self.aspeed
add.v.v
pop.v.v self.arm_i
b [78]

:[77]
pushi.e 9
pop.v.i self.arm_i

:[78]
push.v self.movearm
pushi.e 4
cmp.i.v EQ
bf [94]

:[79]
push.v self.arm_i
pushi.e 10
cmp.i.v GTE
bf [81]

:[80]
pushi.e 10
pop.v.i self.arm_i

:[81]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 42
add.i.v
push.v self.x
pushi.e 5
push.v self.arm_i
pushi.e 2
conv.i.d
div.d.v
sub.v.i
call.i floor(argc=1)
pushi.e 705
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.arm_i
pushi.e 10
cmp.i.v GTE
bf [83]

:[82]
pushi.e 0
pop.v.i self.headx

:[83]
push.v self.arm_i
pushi.e 8
cmp.i.v EQ
bf [85]

:[84]
pushi.e -4
pop.v.i self.headx

:[85]
push.v self.arm_i
pushi.e 6
cmp.i.v EQ
bf [87]

:[86]
pushi.e -8
pop.v.i self.headx

:[87]
push.v self.arm_i
pushi.e 4
cmp.i.v EQ
bf [89]

:[88]
pushi.e 10
pop.v.i self.headx

:[89]
push.v self.arm_i
pushi.e 2
cmp.i.v EQ
bf [91]

:[90]
pushi.e 4
pop.v.i self.headx

:[91]
push.v self.arm_i
pushi.e 10
cmp.i.v LT
bf [93]

:[92]
push.v self.arm_i
push.v self.aspeed
add.v.v
pop.v.v self.arm_i
b [94]

:[93]
pushi.e 10
pop.v.i self.arm_i

:[94]
push.v self.facetype
pushi.e 0
cmp.i.v EQ
bf [96]

:[95]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.yoff
add.v.v
push.v self.heady
add.v.v
push.v self.x
push.v self.xoff
add.v.v
push.v self.headx
add.v.v
pushglb.v global.faceemotion
pushi.e 703
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[96]
push.v self.sweat
pushi.e 1
cmp.i.v EQ
bf [98]

:[97]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.yoff
add.v.v
push.v self.heady
add.v.v
push.v self.x
push.v self.xoff
add.v.v
push.v self.headx
add.v.v
pushi.e 0
conv.i.v
pushi.e 704
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[98]
push.v self.sweat
pushi.e 2
cmp.i.v EQ
bf [100]

:[99]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.yoff
add.v.v
push.v self.heady
add.v.v
push.v self.x
push.v self.xoff
add.v.v
push.v self.headx
add.v.v
pushi.e 1
conv.i.v
pushi.e 704
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[100]
push.v self.sweat
pushi.e 3
cmp.i.v EQ
bf [102]

:[101]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.yoff
add.v.v
push.v self.heady
add.v.v
push.v self.x
push.v self.xoff
add.v.v
push.v self.headx
add.v.v
pushi.e 2
conv.i.v
pushi.e 704
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[102]
push.v self.facetype
pushi.e 1
cmp.i.v EQ
bf [104]

:[103]
push.v self.f_i
pushi.e 1
add.i.v
pop.v.v self.f_i
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.yoff
add.v.v
push.v self.heady
add.v.v
push.v self.x
push.v self.xoff
add.v.v
push.v self.headx
add.v.v
push.v self.f_i
pushi.e 2
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 702
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[104]
push.v self.deadtest
pushi.e 1
cmp.i.v EQ
bf [106]

:[105]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 100
add.i.v
push.v self.legy
add.v.v
push.v self.x
push.v self.legx
add.v.v
pushi.e 0
conv.i.v
pushi.e 700
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 62
add.i.v
push.v self.yoff
push.d 1.5
div.d.v
add.v.v
push.v self.x
push.v self.xoff
add.v.v
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 701
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.yoff
add.v.v
pushi.e 30
add.i.v
push.v self.x
push.v self.xoff
add.v.v
pushglb.v global.faceemotion
pushi.e 703
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[106]
push.v self.drawborder
pushi.e 1
cmp.i.v EQ
bf [110]

:[107]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[108]
push.v self.i
pushi.e 5
cmp.i.v LT
bf [110]

:[109]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
push.v self.i
add.v.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
push.v self.i
add.v.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
push.v self.i
add.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
push.v self.i
add.v.v
call.i draw_rectangle(argc=5)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [108]

:[110]
push.v self.fac
pushi.e 1
cmp.i.v EQ
bf [114]

:[111]
pushi.e 25
pop.v.i self.intensity
pushi.e 240
pushi.e -5
pushi.e 0
pop.v.i [array]global.idealborder
pushi.e 400
pushi.e -5
pushi.e 1
pop.v.i [array]global.idealborder
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 160
sub.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]global.idealborder
pushi.e 0
pop.v.i self.bounce
pushi.e 1
pop.v.i self.facetype
pushi.e 3
pop.v.i self.movearm
pushi.e 0
pop.v.i self.arm_i
pushi.e 0
pop.v.i self.heady
pushi.e 0
pop.v.i self.headx
pushi.e 520
pushenv [113]

:[112]
pushi.e 1
pop.v.i self.p_cut

:[113]
popenv [112]
pushi.e 2
pop.v.i self.fac
pushi.e 7
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm

:[114]
push.v self.fac
pushi.e 3
cmp.i.v EQ
bf [116]

:[115]
pushi.e 10
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 4
pop.v.i self.fac
pushi.e 14
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm

:[116]
push.v self.fac
pushi.e 5
cmp.i.v EQ
bf [120]

:[117]
pushi.e 6
pop.v.i self.fac
pushi.e 10
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm
pushi.e 2
pop.v.i self.movearm
pushi.e 0
pop.v.i self.arm_i
pushi.e 0
pop.v.i self.heady
pushi.e 0
pop.v.i self.headx
pushi.e 0
pop.v.i self.facetype
pushi.e 503
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.bs
pushi.e 0
push.v self.bs
conv.v.i
pop.v.i [stacktop]self.dir
pushi.e 55
push.v self.bs
conv.v.i
pop.v.i [stacktop]self.height
pushi.e 6
push.v self.bs
conv.v.i
pop.v.i [stacktop]self.warning
pushi.e 30
push.v self.bs
conv.v.i
pop.v.i [stacktop]self.retain
pushi.e 0
pop.v.i self.i

:[118]
push.v self.i
pushi.e 20
cmp.i.v LT
bf [120]

:[119]
pushi.e 2
conv.i.v
pushi.e 40
push.v self.i
pushi.e 2
mul.i.v
add.v.i
pushi.e 12
conv.i.v
pushi.e 135
push.v self.i
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 28
mul.i.v
sub.v.i
call.i scr_sbo(argc=4)
popz.v
push.v self.i
pushi.e 3
mul.i.v
push.v self.bone
conv.v.i
pop.v.v [stacktop]self.siner
pushi.e 0
conv.i.v
pushi.e 40
push.v self.i
pushi.e 2
mul.i.v
add.v.i
pushi.e 12
conv.i.v
pushi.e 90
push.v self.i
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 28
mul.i.v
sub.v.i
call.i scr_sbo(argc=4)
popz.v
push.v self.i
pushi.e 3
mul.i.v
push.v self.bone
conv.v.i
pop.v.v [stacktop]self.siner
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [118]

:[120]
push.v self.fac
pushi.e 7
cmp.i.v EQ
bf [122]

:[121]
pushi.e 15
pop.v.i self.intensity
pushi.e 8
pop.v.i self.fac
pushi.e 10
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm

:[122]
push.v self.fac
pushi.e 9
cmp.i.v EQ
bf [124]

:[123]
pushi.e 1
pop.v.i self.movearm
pushi.e 0
pop.v.i self.arm_i
pushi.e 0
pop.v.i self.heady
pushi.e 0
pop.v.i self.headx
push.d 9.1
pop.v.d self.fac
pushi.e 8
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i 744.movement
pushi.e 0
pop.v.i 744.speed
pushi.e 698
pop.v.i 744.sprite_index
pushi.e 28
conv.i.v
call.i snd_play(argc=1)
popz.v

:[124]
push.v self.fac
push.d 10.1
cmp.d.v EQ
bf [128]

:[125]
pushi.e 520
pushenv [127]

:[126]
pushi.e 1
pop.v.i self.p_cut

:[127]
popenv [126]
pushi.e 10
pop.v.i self.fac
pushi.e 37
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm

:[128]
push.v self.fac
pushi.e 11
cmp.i.v EQ
bf [130]

:[129]
pushi.e 0
pop.v.i self.movearm
pushi.e 0
pop.v.i self.arm_i
pushi.e 0
pop.v.i self.heady
pushi.e 0
pop.v.i self.headx
pushi.e 499
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gb
pushi.e 90
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.idealrot
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 50
sub.i.v
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealx
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 20
add.i.v
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealy
pushi.e 2
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 499
conv.i.v
pushi.e 480
conv.i.v
pushi.e 640
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gb
pushi.e -90
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.idealrot
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 50
add.i.v
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealx
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 20
sub.i.v
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealy
pushi.e 2
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 499
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gb
pushi.e 0
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.idealrot
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 20
add.i.v
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealx
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 60
sub.i.v
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealy
pushi.e 2
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 499
conv.i.v
pushi.e 480
conv.i.v
pushi.e 640
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gb
pushi.e 180
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.idealrot
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 20
sub.i.v
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealx
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 60
add.i.v
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealy
pushi.e 2
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 10
pop.v.i 499.pause
pushi.e 8
pop.v.i 499.terminal
pushi.e 12
pop.v.i self.fac
pushi.e 25
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm

:[130]
push.v self.fac
pushi.e 13
cmp.i.v EQ
bf [132]

:[131]
pushi.e 0
pop.v.i self.movearm
pushi.e 0
pop.v.i self.arm_i
pushi.e 0
pop.v.i self.heady
pushi.e 0
pop.v.i self.headx
pushi.e 499
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gb
pushi.e 45
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.idealrot
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 50
sub.i.v
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealx
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 50
sub.i.v
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealy
pushi.e 2
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 499
conv.i.v
pushi.e 0
conv.i.v
pushi.e 640
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gb
pushi.e -45
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.idealrot
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 50
add.i.v
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealx
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 50
sub.i.v
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealy
pushi.e 2
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 499
conv.i.v
pushi.e 480
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gb
pushi.e 135
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.idealrot
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 50
sub.i.v
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealx
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 50
add.i.v
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealy
pushi.e 2
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 499
conv.i.v
pushi.e 480
conv.i.v
pushi.e 640
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gb
pushi.e -135
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.idealrot
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 50
add.i.v
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealx
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 50
add.i.v
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealy
pushi.e 2
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 10
pop.v.i 499.pause
pushi.e 8
pop.v.i 499.terminal
pushi.e 14
pop.v.i self.fac
pushi.e 25
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm

:[132]
push.v self.fac
pushi.e 15
cmp.i.v EQ
bf [134]

:[133]
pushi.e 0
pop.v.i self.movearm
pushi.e 0
pop.v.i self.arm_i
pushi.e 0
pop.v.i self.heady
pushi.e 0
pop.v.i self.headx
pushi.e 499
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gb
pushi.e 90
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.idealrot
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 50
sub.i.v
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealx
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 20
add.i.v
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealy
pushi.e 2
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 499
conv.i.v
pushi.e 480
conv.i.v
pushi.e 640
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gb
pushi.e -90
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.idealrot
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 50
add.i.v
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealx
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 20
sub.i.v
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealy
pushi.e 2
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 499
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gb
pushi.e 0
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.idealrot
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 20
add.i.v
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealx
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 60
sub.i.v
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealy
pushi.e 2
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 499
conv.i.v
pushi.e 480
conv.i.v
pushi.e 640
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gb
pushi.e 180
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.idealrot
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 20
sub.i.v
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealx
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 60
add.i.v
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealy
pushi.e 2
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 10
pop.v.i 499.pause
pushi.e 8
pop.v.i 499.terminal
pushi.e 16
pop.v.i self.fac
pushi.e 20
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm

:[134]
push.v self.fac
pushi.e 17
cmp.i.v EQ
bf [136]

:[135]
pushi.e 499
conv.i.v
pushi.e 240
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gb
pushi.e 90
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.idealrot
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 100
sub.i.v
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealx
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 80
add.i.v
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealy
pushi.e 3
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 3
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 20
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.pause
pushi.e 15
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.terminal
pushi.e 499
conv.i.v
pushi.e 240
conv.i.v
pushi.e 640
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gb
pushi.e -90
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.idealrot
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 100
add.i.v
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealx
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 80
add.i.v
push.v self.gb
conv.v.i
pop.v.v [stacktop]self.idealy
pushi.e 3
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 3
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 20
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.pause
pushi.e 15
push.v self.gb
conv.v.i
pop.v.i [stacktop]self.terminal
pushi.e 18
pop.v.i self.fac
pushi.e 90
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm

:[136]
push.v self.fac
pushi.e 19
cmp.i.v EQ
bf [142]

:[137]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "Intro"@47598
conv.s.v
push.s "Sans"@6900
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.intr
push.v self.intr
pushi.e 1
add.i.v
push.s "Intro"@47598
conv.s.v
push.s "Sans"@6900
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.msc
pushi.e 109
pop.v.i global.typer
push.s "obj_sansb_body_1446"@24001
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sansb_body_1447"@24003
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.intr
pushi.e 1
cmp.i.v EQ
bf [139]

:[138]
push.s "obj_sansb_body_1450"@24005
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sansb_body_1451"@24007
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[139]
push.v self.intr
pushi.e 2
cmp.i.v GTE
bf [141]

:[140]
push.s "obj_sansb_body_1455"@24009
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[141]
push.v self.y
pushi.e 10
sub.i.v
push.v 520.x
pushi.e 120
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 20
pop.v.i self.fac

:[142]
push.v self.fac
pushi.e 20
cmp.i.v EQ
bf [144]

:[143]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [145]

:[144]
push.e 0

:[145]
bf [149]

:[146]
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 1
pop.v.i self.bounce
pushi.e 758
pushenv [148]

:[147]
pushi.e 0
pop.v.i self.instaborder

:[148]
popenv [147]
push.s "obj_sansb_body_1468"@24011
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
pop.v.i global.border
pushi.e 21
pop.v.i self.fac
pushi.e 5
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm

:[149]
push.v self.fac
pushi.e 22
cmp.i.v EQ
bf [153]

:[150]
pushi.e 0
pop.v.i global.bmenuno
pushi.e 520
pushenv [152]

:[151]
pushi.e 1
pop.v.i self.normalfight

:[152]
popenv [151]
pushi.e 1
conv.i.v
push.d 0.9
conv.d.v
pushglb.v global.batmusic
call.i caster_loop(argc=3)
popz.v
pushi.e 3
pop.v.i global.mnfight
pushi.e 0
pop.v.i global.myfight
pushi.e -1
pop.v.i self.fac

:[153]
push.v self.smasher
pushi.e 1
cmp.i.v EQ
bf [228]

:[154]
push.v self.smashcon
pushi.e 0
cmp.i.v EQ
bf [174]

:[155]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
sub.v.v
call.i floor(argc=1)
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v 744.x
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
sub.v.v
call.i floor(argc=1)
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v 744.y
pushi.e 0
pop.v.i 744.speed
pushi.e 1
pop.v.i 744.movement
pushi.e 698
pop.v.i 744.sprite_index
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.smashdir
pushi.e 10
dup.i 0
push.i 0
cmp.i.i LTE
bt [159]

:[156]
push.v self.prevsmash
push.v self.smashdir
cmp.v.v EQ
bf [158]

:[157]
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.smashdir

:[158]
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [156]

:[159]
popz.i
push.v self.smashdir
push.v self.prevsmash
cmp.v.v EQ
bf [162]

:[160]
push.v self.smashdir
pushi.e 1
add.i.v
pop.v.v self.smashdir
push.v self.smashdir
pushi.e 3
cmp.i.v GT
bf [162]

:[161]
pushi.e 0
pop.v.i self.smashdir

:[162]
push.v self.smashdir
pop.v.v self.prevsmash
pushi.e 1
pop.v.i self.smashcon
pushi.e 1
pop.v.i self.aspeed
push.v self.smashlv
pushi.e 2
cmp.i.v EQ
bf [164]

:[163]
pushi.e 2
pop.v.i self.aspeed

:[164]
push.v self.smashdir
pushi.e 0
cmp.i.v EQ
bf [166]

:[165]
pushi.e 3
pop.v.i self.movearm
pushi.e 0
pop.v.i self.arm_i
pushi.e 0
pop.v.i self.heady
pushi.e 0
pop.v.i self.headx

:[166]
push.v self.smashdir
pushi.e 1
cmp.i.v EQ
bf [168]

:[167]
pushi.e 1
pop.v.i self.movearm
pushi.e 0
pop.v.i self.arm_i
pushi.e 0
pop.v.i self.heady
pushi.e 0
pop.v.i self.headx

:[168]
push.v self.smashdir
pushi.e 2
cmp.i.v EQ
bf [170]

:[169]
pushi.e 2
pop.v.i self.movearm
pushi.e 0
pop.v.i self.arm_i
pushi.e 0
pop.v.i self.heady
pushi.e 0
pop.v.i self.headx

:[170]
push.v self.smashdir
pushi.e 3
cmp.i.v EQ
bf [172]

:[171]
pushi.e 4
pop.v.i self.movearm
pushi.e 0
pop.v.i self.arm_i
pushi.e 0
pop.v.i self.heady
pushi.e 0
pop.v.i self.headx

:[172]
pushi.e 8
pushi.e -1
pushi.e 8
pop.v.i [array]self.alarm
push.v self.smashlv
pushi.e 2
cmp.i.v EQ
bf [174]

:[173]
pushi.e 4
pushi.e -1
pushi.e 8
pop.v.i [array]self.alarm

:[174]
push.v self.smashcon
pushi.e 2
cmp.i.v EQ
bf [184]

:[175]
pushi.e 0
pop.v.i self.xtimer
pushi.e 16
pop.v.i self.intensity
push.v self.smashdir
pushi.e 0
cmp.i.v EQ
bf [177]

:[176]
pushi.e 10
conv.i.v
call.i event_user(argc=1)
popz.v

:[177]
push.v self.smashdir
pushi.e 1
cmp.i.v EQ
bf [179]

:[178]
pushi.e 11
conv.i.v
call.i event_user(argc=1)
popz.v

:[179]
push.v self.smashdir
pushi.e 2
cmp.i.v EQ
bf [181]

:[180]
pushi.e 12
conv.i.v
call.i event_user(argc=1)
popz.v

:[181]
push.v self.smashdir
pushi.e 3
cmp.i.v EQ
bf [183]

:[182]
pushi.e 13
conv.i.v
call.i event_user(argc=1)
popz.v

:[183]
pushi.e 3
pop.v.i self.smashcon

:[184]
push.v self.smashcon
pushi.e 3
cmp.i.v EQ
bf [203]

:[185]
push.v self.xtimer
pushi.e 1
add.i.v
pop.v.v self.xtimer
push.v 744.speed
push.v self.intensity
cmp.v.v LT
bf [187]

:[186]
push.v self.xtimer
pushi.e 5
cmp.i.v GTE
b [188]

:[187]
push.e 0

:[188]
bf [203]

:[189]
pushi.e 0
pop.v.i self.xtimer
pushi.e 503
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.bs
pushi.e 12
push.v self.bs
conv.v.i
pop.v.i [stacktop]self.warning
pushi.e 25
push.v self.bs
conv.v.i
pop.v.i [stacktop]self.height
pushi.e 4
push.v self.bs
conv.v.i
pop.v.i [stacktop]self.retain
push.v self.smashdir
push.v self.bs
conv.v.i
pop.v.v [stacktop]self.dir
pushi.e 4
pop.v.i self.smashcon
pushi.e 18
pushi.e -1
pushi.e 8
pop.v.i [array]self.alarm
push.v self.smashlv
pushi.e 1
cmp.i.v EQ
bf [191]

:[190]
pushi.e 12
pushi.e -1
pushi.e 8
pop.v.i [array]self.alarm

:[191]
push.v self.smashlv
pushi.e 1
cmp.i.v EQ
bf [193]

:[192]
pushi.e 9
push.v self.bs
conv.v.i
pop.v.i [stacktop]self.warning

:[193]
push.v self.smashlv
pushi.e 1
cmp.i.v EQ
bf [195]

:[194]
pushi.e -2
push.v self.bs
conv.v.i
pop.v.i [stacktop]self.retain

:[195]
push.v self.smashlv
pushi.e 2
cmp.i.v EQ
bf [197]

:[196]
pushi.e 7
pushi.e -1
pushi.e 8
pop.v.i [array]self.alarm

:[197]
push.v self.smashlv
pushi.e 2
cmp.i.v EQ
bf [199]

:[198]
pushi.e -7
push.v self.bs
conv.v.i
pop.v.i [stacktop]self.retain

:[199]
push.v self.smashlv
pushi.e 2
cmp.i.v EQ
bf [201]

:[200]
pushi.e 40
push.v self.bs
conv.v.i
pop.v.i [stacktop]self.height

:[201]
push.v self.smashlv
pushi.e 2
cmp.i.v EQ
bf [203]

:[202]
pushi.e 11
pop.v.i self.warning

:[203]
push.v self.smashcon
pushi.e 5
cmp.i.v EQ
bf [228]

:[204]
push.v self.smashlv
pushi.e 2
cmp.i.v EQ
bf [206]

:[205]
pushi.e 2
pop.v.i self.aspeed

:[206]
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.smashdir
pushi.e 1
pop.v.i self.smashcon
push.v self.smashdir
pushi.e 0
cmp.i.v EQ
bf [208]

:[207]
pushi.e 3
pop.v.i self.movearm
pushi.e 0
pop.v.i self.arm_i
pushi.e 0
pop.v.i self.heady
pushi.e 0
pop.v.i self.headx

:[208]
push.v self.smashdir
pushi.e 1
cmp.i.v EQ
bf [210]

:[209]
pushi.e 1
pop.v.i self.movearm
pushi.e 0
pop.v.i self.arm_i
pushi.e 0
pop.v.i self.heady
pushi.e 0
pop.v.i self.headx

:[210]
push.v self.smashdir
pushi.e 2
cmp.i.v EQ
bf [212]

:[211]
pushi.e 2
pop.v.i self.movearm
pushi.e 0
pop.v.i self.arm_i
pushi.e 0
pop.v.i self.heady
pushi.e 0
pop.v.i self.headx

:[212]
push.v self.smashdir
pushi.e 3
cmp.i.v EQ
bf [214]

:[213]
pushi.e 4
pop.v.i self.movearm
pushi.e 0
pop.v.i self.arm_i
pushi.e 0
pop.v.i self.heady
pushi.e 0
pop.v.i self.headx

:[214]
pushi.e 1
pop.v.i self.smashcon
push.v self.smashamt
pushi.e 1
add.i.v
pop.v.v self.smashamt
pushi.e 8
pushi.e -1
pushi.e 8
pop.v.i [array]self.alarm
push.v self.smashlv
pushi.e 2
cmp.i.v EQ
bf [216]

:[215]
pushi.e 7
pushi.e -1
pushi.e 8
pop.v.i [array]self.alarm

:[216]
push.v self.smashamt
push.v self.smashmax
cmp.v.v GT
bf [228]

:[217]
pushi.e 511
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [219]

:[218]
pushi.e 511
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[219]
pushi.e -1
pop.v.i self.smashcon
pushi.e 0
pop.v.i self.smashamt
pushi.e 0
pop.v.i self.smasher
pushi.e 744
pushenv [221]

:[220]
pushi.e 1
pop.v.i self.movement

:[221]
popenv [220]
pushi.e 744
pushenv [223]

:[222]
pushi.e 46
pop.v.i self.sprite_index

:[223]
popenv [222]
pushi.e 744
pushenv [225]

:[224]
pushi.e 0
pop.v.i self.speed

:[225]
popenv [224]
pushi.e 0
pop.v.i self.movearm
pushi.e 0
pop.v.i self.arm_i
pushi.e 0
pop.v.i self.heady
pushi.e 0
pop.v.i self.headx
pushi.e -1
pushi.e -1
pushi.e 8
pop.v.i [array]self.alarm
pushi.e 520
pushenv [227]

:[226]
pushi.e 0
pop.v.i self.attacked

:[227]
popenv [226]
pushi.e 3
pop.v.i global.mnfight

:[228]
push.v self.lac
pushi.e 4
cmp.i.v EQ
bf [230]

:[229]
pushi.e 0
pop.v.i 744.speed
pushi.e 240
pushi.e -5
pushi.e 0
pop.v.i [array]global.idealborder
pushi.e 400
pushi.e -5
pushi.e 1
pop.v.i [array]global.idealborder
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 160
sub.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]global.idealborder
pushi.e 1
pop.v.i 744.movement
pushi.e 698
pop.v.i 744.sprite_index
pushi.e 1
pop.v.i self.smasher
pushi.e 0
pop.v.i self.smashcon
pushi.e 0
pop.v.i self.smashamt
pushi.e 2
pop.v.i self.smashlv
pushi.e 0
pop.v.i self.xtimer
pushi.e 5
pop.v.i self.lac

:[230]
push.v self.lac
pushi.e 5
cmp.i.v EQ
bf [243]

:[231]
push.v self.smashamt
pushi.e 3
cmp.i.v EQ
bf [234]

:[232]
push.v self.smashcon
pushi.e 3
cmp.i.v EQ
bf [234]

:[233]
push.v self.xtimer
pushi.e 3
cmp.i.v EQ
b [235]

:[234]
push.e 0

:[235]
bf [237]

:[236]
pushi.e 501
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 300
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 110
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.b1
pushi.e 691
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 11
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 501
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 300
add.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 70
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.b1
pushi.e 691
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e -11
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 501
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 525
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 110
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.b1
pushi.e 691
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 11
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 501
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 525
add.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 70
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.b1
pushi.e 691
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e -11
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 501
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 750
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 110
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.b1
pushi.e 691
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 11
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 501
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 750
add.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 70
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.b1
pushi.e 691
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e -11
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.vspeed

:[237]
push.v self.smashamt
pushi.e 4
cmp.i.v EQ
bf [240]

:[238]
push.v self.smashcon
pushi.e 3
cmp.i.v EQ
bf [240]

:[239]
push.v self.xtimer
pushi.e 0
cmp.i.v GTE
b [241]

:[240]
push.e 0

:[241]
bf [243]

:[242]
pushi.e -1
pop.v.i self.smashcon
pushi.e -1
pop.v.i self.smasher
pushi.e 0
pop.v.i 744.speed
pushi.e 6
pop.v.i self.lac
pushi.e 60
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i 744.movement
pushi.e 698
pop.v.i 744.sprite_index

:[243]
push.v self.lac
pushi.e 7
cmp.i.v EQ
bf [245]

:[244]
pushi.e 25
pop.v.i self.intensity
pushi.e 2
pop.v.i self.aspeed
pushi.e 4
pop.v.i self.movearm
pushi.e 0
pop.v.i self.arm_i
pushi.e 0
pop.v.i self.heady
pushi.e 0
pop.v.i self.headx
pushi.e 8
pop.v.i self.lac
pushi.e 6
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[245]
push.v self.lac
pushi.e 9
cmp.i.v EQ
bf [247]

:[246]
pushi.e 13
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 10
pop.v.i self.lac
pushi.e 8
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[247]
push.v self.lac
pushi.e 11
cmp.i.v EQ
bf [249]

:[248]
pushi.e 1
pop.v.i self.movearm
pushi.e 0
pop.v.i self.arm_i
pushi.e 0
pop.v.i self.heady
pushi.e 0
pop.v.i self.headx
pushi.e 12
pop.v.i self.lac
pushi.e 6
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[249]
push.v self.lac
pushi.e 13
cmp.i.v EQ
bf [251]

:[250]
pushi.e 15
pop.v.i self.intensity
pushi.e 11
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 14
pop.v.i self.lac
pushi.e 10
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[251]
push.v self.lac
pushi.e 14
cmp.i.v EQ
bf [253]

:[252]
pushi.e 0
pop.v.i 744.jumpstage
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]global.idealborder
pushi.e 15
add.i.v
pop.i.v [array]global.idealborder

:[253]
push.v self.lac
pushi.e 15
cmp.i.v EQ
bf [255]

:[254]
pushi.e 16
pop.v.i self.lac
pushi.e 40
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[255]
push.v self.lac
pushi.e 16
cmp.i.v EQ
bf [259]

:[256]
pushi.e -5
pushi.e 0
dup.i 1
push.v [array]global.idealborder
pushi.e 30
sub.i.v
pop.i.v [array]global.idealborder
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]global.idealborder
pushi.e 10
add.i.v
pop.i.v [array]global.idealborder
pushi.e 1
pop.v.i self.repeater
pushi.e 0
pop.v.i self.rp_x
pushi.e 0
pop.v.i 744.speed
push.v 744.x
pushi.e 40
cmp.i.v GT
bf [258]

:[257]
push.v 744.x
pushi.e 10
sub.i.v
pop.v.v 744.x

:[258]
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]global.idealborder
pushi.e 1
add.i.v
pop.i.v [array]global.idealborder
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]global.idealborder
push.d 0.5
sub.d.v
pop.i.v [array]global.idealborder

:[259]
push.v self.lac
pushi.e 17
cmp.i.v EQ
bf [264]

:[260]
pushi.e 0
pop.v.i self.i

:[261]
push.v self.i
pushi.e 45
cmp.i.v LT
bf [263]

:[262]
pushi.e 2
conv.i.v
pushi.e 10
push.v self.i
pushi.e 2
mul.i.v
add.v.i
pushi.e -30
conv.i.v
pushi.e 70
push.v self.i
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 25
mul.i.v
sub.v.i
call.i scr_sbo(argc=4)
popz.v
push.v self.i
pushi.e 3
mul.i.v
push.v self.bone
conv.v.i
pop.v.v [stacktop]self.siner
push.v self.bone
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 15
add.i.v
pop.i.v [stacktop]self.x
pushi.e 0
conv.i.v
pushi.e 10
push.v self.i
pushi.e 2
mul.i.v
add.v.i
pushi.e -30
conv.i.v
pushi.e 30
push.v self.i
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 25
mul.i.v
sub.v.i
call.i scr_sbo(argc=4)
popz.v
push.v self.i
pushi.e 3
mul.i.v
push.v self.bone
conv.v.i
pop.v.v [stacktop]self.siner
push.v self.bone
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 15
add.i.v
pop.i.v [stacktop]self.x
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [261]

:[263]
pushi.e 18
pop.v.i self.lac
pushi.e 100
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[264]
push.v self.lac
pushi.e 19
cmp.i.v EQ
bf [269]

:[265]
pushi.e 2
conv.i.v
pushi.e 10
conv.i.v
pushi.e -30
conv.i.v
pushi.e 50
conv.i.v
call.i scr_sbo(argc=4)
popz.v
push.v self.bone
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 15
add.i.v
pop.i.v [stacktop]self.x
pushi.e 2
conv.i.v
pushi.e 10
conv.i.v
pushi.e -30
conv.i.v
pushi.e 50
conv.i.v
call.i scr_sbo(argc=4)
popz.v
push.v self.bone
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 30
add.i.v
pop.i.v [stacktop]self.x
pushi.e 2
conv.i.v
pushi.e 10
conv.i.v
pushi.e -30
conv.i.v
pushi.e 50
conv.i.v
call.i scr_sbo(argc=4)
popz.v
push.v self.bone
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 45
add.i.v
pop.i.v [stacktop]self.x
pushi.e 0
conv.i.v
pushi.e 21
conv.i.v
pushi.e -30
conv.i.v
pushi.e 50
conv.i.v
call.i scr_sbo(argc=4)
popz.v
push.v self.bone
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 15
add.i.v
pop.i.v [stacktop]self.x
pushi.e 0
conv.i.v
pushi.e 21
conv.i.v
pushi.e -30
conv.i.v
pushi.e 50
conv.i.v
call.i scr_sbo(argc=4)
popz.v
push.v self.bone
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 30
add.i.v
pop.i.v [stacktop]self.x
pushi.e 0
conv.i.v
pushi.e 21
conv.i.v
pushi.e -30
conv.i.v
pushi.e 50
conv.i.v
call.i scr_sbo(argc=4)
popz.v
push.v self.bone
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 45
add.i.v
pop.i.v [stacktop]self.x
pushi.e 2
conv.i.v
pushi.e 31
conv.i.v
pushi.e -30
conv.i.v
pushi.e 50
conv.i.v
call.i scr_sbo(argc=4)
popz.v
push.v self.bone
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 15
add.i.v
pop.i.v [stacktop]self.x
pushi.e 2
conv.i.v
pushi.e 31
conv.i.v
pushi.e -30
conv.i.v
pushi.e 50
conv.i.v
call.i scr_sbo(argc=4)
popz.v
push.v self.bone
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 30
add.i.v
pop.i.v [stacktop]self.x
pushi.e 2
conv.i.v
pushi.e 31
conv.i.v
pushi.e -30
conv.i.v
pushi.e 50
conv.i.v
call.i scr_sbo(argc=4)
popz.v
push.v self.bone
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 45
add.i.v
pop.i.v [stacktop]self.x
pushi.e 0
conv.i.v
pushi.e 41
conv.i.v
pushi.e -30
conv.i.v
pushi.e 50
conv.i.v
call.i scr_sbo(argc=4)
popz.v
push.v self.bone
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 15
add.i.v
pop.i.v [stacktop]self.x
pushi.e 0
conv.i.v
pushi.e 41
conv.i.v
pushi.e -30
conv.i.v
pushi.e 50
conv.i.v
call.i scr_sbo(argc=4)
popz.v
push.v self.bone
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 30
add.i.v
pop.i.v [stacktop]self.x
pushi.e 0
conv.i.v
pushi.e 41
conv.i.v
pushi.e -30
conv.i.v
pushi.e 50
conv.i.v
call.i scr_sbo(argc=4)
popz.v
push.v self.bone
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 45
add.i.v
pop.i.v [stacktop]self.x
pushi.e 2
conv.i.v
pushi.e 50
conv.i.v
pushi.e -30
conv.i.v
pushi.e 50
conv.i.v
call.i scr_sbo(argc=4)
popz.v
push.v self.bone
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 15
add.i.v
pop.i.v [stacktop]self.x
pushi.e 2
conv.i.v
pushi.e 50
conv.i.v
pushi.e -30
conv.i.v
pushi.e 50
conv.i.v
call.i scr_sbo(argc=4)
popz.v
push.v self.bone
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 30
add.i.v
pop.i.v [stacktop]self.x
pushi.e 2
conv.i.v
pushi.e 50
conv.i.v
pushi.e -30
conv.i.v
pushi.e 50
conv.i.v
call.i scr_sbo(argc=4)
popz.v
push.v self.bone
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 45
add.i.v
pop.i.v [stacktop]self.x
pushi.e 0
conv.i.v
pushi.e 59
conv.i.v
pushi.e -30
conv.i.v
pushi.e 50
conv.i.v
call.i scr_sbo(argc=4)
popz.v
push.v self.bone
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 15
add.i.v
pop.i.v [stacktop]self.x
pushi.e 0
conv.i.v
pushi.e 59
conv.i.v
pushi.e -30
conv.i.v
pushi.e 50
conv.i.v
call.i scr_sbo(argc=4)
popz.v
push.v self.bone
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 30
add.i.v
pop.i.v [stacktop]self.x
pushi.e 0
conv.i.v
pushi.e 59
conv.i.v
pushi.e -30
conv.i.v
pushi.e 50
conv.i.v
call.i scr_sbo(argc=4)
popz.v
push.v self.bone
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 45
add.i.v
pop.i.v [stacktop]self.x
pushi.e 2
conv.i.v
pushi.e 67
conv.i.v
pushi.e -30
conv.i.v
pushi.e 50
conv.i.v
call.i scr_sbo(argc=4)
popz.v
push.v self.bone
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 15
add.i.v
pop.i.v [stacktop]self.x
pushi.e 2
conv.i.v
pushi.e 67
conv.i.v
pushi.e -30
conv.i.v
pushi.e 50
conv.i.v
call.i scr_sbo(argc=4)
popz.v
push.v self.bone
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 30
add.i.v
pop.i.v [stacktop]self.x
pushi.e 2
conv.i.v
pushi.e 67
conv.i.v
pushi.e -30
conv.i.v
pushi.e 50
conv.i.v
call.i scr_sbo(argc=4)
popz.v
push.v self.bone
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 45
add.i.v
pop.i.v [stacktop]self.x
pushi.e 0
conv.i.v
pushi.e 78
conv.i.v
pushi.e -30
conv.i.v
pushi.e 50
conv.i.v
call.i scr_sbo(argc=4)
popz.v
push.v self.bone
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 15
add.i.v
pop.i.v [stacktop]self.x
pushi.e 0
conv.i.v
pushi.e 78
conv.i.v
pushi.e -30
conv.i.v
pushi.e 50
conv.i.v
call.i scr_sbo(argc=4)
popz.v
push.v self.bone
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 30
add.i.v
pop.i.v [stacktop]self.x
pushi.e 0
conv.i.v
pushi.e 78
conv.i.v
pushi.e -30
conv.i.v
pushi.e 50
conv.i.v
call.i scr_sbo(argc=4)
popz.v
push.v self.bone
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 45
add.i.v
pop.i.v [stacktop]self.x
pushi.e 2
conv.i.v
pushi.e 87
conv.i.v
pushi.e -30
conv.i.v
pushi.e 50
conv.i.v
call.i scr_sbo(argc=4)
popz.v
push.v self.bone
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 15
add.i.v
pop.i.v [stacktop]self.x
pushi.e 2
conv.i.v
pushi.e 87
conv.i.v
pushi.e -30
conv.i.v
pushi.e 50
conv.i.v
call.i scr_sbo(argc=4)
popz.v
push.v self.bone
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 30
add.i.v
pop.i.v [stacktop]self.x
pushi.e 2
conv.i.v
pushi.e 87
conv.i.v
pushi.e -30
conv.i.v
pushi.e 50
conv.i.v
call.i scr_sbo(argc=4)
popz.v
push.v self.bone
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 45
add.i.v
pop.i.v [stacktop]self.x
pushi.e 0
pop.v.i self.i

:[266]
push.v self.i
pushi.e 24
cmp.i.v LT
bf [268]

:[267]
pushi.e 2
conv.i.v
pushi.e 100
push.v self.i
add.v.i
pushi.e -30
conv.i.v
pushi.e 90
push.v self.i
sub.v.i
call.i scr_sbo(argc=4)
popz.v
push.v self.bone
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 15
add.i.v
pop.i.v [stacktop]self.x
pushi.e 0
conv.i.v
pushi.e 100
push.v self.i
add.v.i
pushi.e -30
conv.i.v
pushi.e 10
push.v self.i
add.v.i
call.i scr_sbo(argc=4)
popz.v
push.v self.bone
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 15
add.i.v
pop.i.v [stacktop]self.x
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [266]

:[268]
pushi.e 20
pop.v.i self.lac
pushi.e 134
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[269]
push.v self.lac
pushi.e 21
cmp.i.v EQ
bf [271]

:[270]
pushi.e 23
pop.v.i self.lac
pushi.e 640
pushi.e -5
pushi.e 1
pop.v.i [array]global.idealborder
pushi.e 11
pop.v.i 744.hspeed

:[271]
push.v self.lac
pushi.e 23
cmp.i.v EQ
bf [276]

:[272]
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 420
cmp.i.v GT
bf [274]

:[273]
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]global.idealborder
pushi.e 18
sub.i.v
pop.i.v [array]global.idealborder

:[274]
push.v 744.hspeed
pushi.e 0
cmp.i.v LTE
bf [276]

:[275]
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 0
pop.v.i self.repeater
pushi.e 24
pop.v.i self.lac
pushi.e 5
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[276]
push.v self.lac
pushi.e 25
cmp.i.v EQ
bf [278]

:[277]
pushi.e 503
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.bs
pushi.e 15
push.v self.bs
conv.v.i
pop.v.i [stacktop]self.retain
pushi.e 12
push.v self.bs
conv.v.i
pop.v.i [stacktop]self.warning
pushi.e 50
push.v self.bs
conv.v.i
pop.v.i [stacktop]self.height
pushi.e 1
push.v self.bs
conv.v.i
pop.v.i [stacktop]self.dir
pushi.e 1
pop.v.i self.aspeed
pushi.e 4
pop.v.i self.movearm
pushi.e 0
pop.v.i self.arm_i
pushi.e 0
pop.v.i self.heady
pushi.e 0
pop.v.i self.headx
pushi.e 26
pop.v.i self.lac
pushi.e 28
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[278]
push.v self.lac
pushi.e 27
cmp.i.v EQ
bf [282]

:[279]
pushi.e 744
pushenv [281]

:[280]
pushi.e 0
pop.v.i self.speed

:[281]
popenv [280]
pushi.e 512
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.sh
pushi.e 3
push.v self.sh
conv.v.i
pop.v.i [stacktop]self.level
pushi.e 28
pop.v.i self.lac

:[282]
push.v self.repeater
pushi.e 1
cmp.i.v EQ
bf [285]

:[283]
pushi.e 0
pop.v.i self.movearm
push.v self.rp_x
push.d 0.05
add.d.v
pop.v.v self.rp_x
push.v self.x
pushi.e 30
push.v self.rp_x
add.v.i
call.i floor(argc=1)
sub.v.v
pop.v.v self.x
push.v self.x
pushi.e -100
cmp.i.v LT
bf [285]

:[284]
pushi.e 5
conv.i.v
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=5)
pop.v.v global.faceemotion
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pushi.e -5
pushi.e 20
pop.v.v [array]global.flag
pushi.e 740
pop.v.i self.x

:[285]
push.v self.lac
pushi.e 50
cmp.i.v EQ
bf [287]

:[286]
pushi.e 0
pop.v.i 744.speed
pushi.e 1
pop.v.i 744.movement
pushi.e 698
pop.v.i 744.sprite_index
pushi.e 0
pop.v.i self.gt
pushi.e 1
pop.v.i self.gin
pushi.e 51
pop.v.i self.lac
pushi.e 0
pop.v.i self.o_o
pushi.e 0
pop.v.i self.gnum

:[287]
push.v self.lac
pushi.e 51
cmp.i.v EQ
bf [299]

:[288]
push.v self.o_o
pushi.e 1
cmp.i.v EQ
bf [294]

:[289]
push.v self.gt
pushi.e 10
mul.i.v
pushi.e 150
conv.i.v
call.i lengthdir_x(argc=2)
pop.v.v self.disx
push.v self.gt
pushi.e 10
mul.i.v
pushi.e 150
conv.i.v
call.i lengthdir_y(argc=2)
pop.v.v self.disy
pushi.e 499
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pushi.e -1
push.v self.gnum
conv.v.i
pop.v.v [array]self.gb
pushi.e -1
push.v self.gnum
conv.v.i
push.v [array]self.gb
call.i instance_exists(argc=1)
conv.v.b
bf [291]

:[290]
pushi.e -90
push.v self.gt
pushi.e 10
mul.i.v
add.v.i
pushi.e -1
push.v self.gnum
conv.v.i
push.v [array]self.gb
conv.v.i
pop.v.v [stacktop]self.idealrot
push.v self.disx
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
add.v.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
sub.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e -1
push.v self.gnum
conv.v.i
push.v [array]self.gb
conv.v.i
pop.v.v [stacktop]self.idealx
push.v self.disy
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
add.v.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
sub.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e -1
push.v self.gnum
conv.v.i
push.v [array]self.gb
conv.v.i
pop.v.v [stacktop]self.idealy
push.v self.disx
pushi.e 3
mul.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
add.v.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
sub.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e -1
push.v self.gnum
conv.v.i
push.v [array]self.gb
conv.v.i
pop.v.v [stacktop]self.x
push.v self.disy
pushi.e 3
mul.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
add.v.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
sub.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e -1
push.v self.gnum
conv.v.i
push.v [array]self.gb
conv.v.i
pop.v.v [stacktop]self.y
pushi.e 0
pushi.e -1
push.v self.gnum
conv.v.i
push.v [array]self.gb
conv.v.i
pop.v.i [stacktop]self.terminal
pushi.e 15
pushi.e -1
push.v self.gnum
conv.v.i
push.v [array]self.gb
conv.v.i
pop.v.i [stacktop]self.pause
pushi.e 2
pushi.e -1
push.v self.gnum
conv.v.i
push.v [array]self.gb
conv.v.i
pop.v.i [stacktop]self.image_yscale

:[291]
push.v self.gt
push.v self.gin
add.v.v
pop.v.v self.gt
push.v self.gin
push.d 1.7
cmp.d.v LT
bf [293]

:[292]
push.v self.gin
push.d 0.015
add.d.v
pop.v.v self.gin

:[293]
push.v self.gnum
pushi.e 1
add.i.v
pop.v.v self.gnum
pushi.e 0
pop.v.i self.o_o
b [295]

:[294]
pushi.e 1
pop.v.i self.o_o

:[295]
push.v self.gt
pushi.e 190
cmp.i.v GTE
bf [299]

:[296]
pushi.e 744
pushenv [298]

:[297]
pushi.e 1
pop.v.i self.slam_pain

:[298]
popenv [297]
pushi.e -1
pop.v.i self.pdd
pushi.e 0
pop.v.i self.bounce
pushi.e 30
pop.v.i self.intensity
pushi.e 2
pop.v.i self.aspeed
pushi.e 0
pop.v.i self.lc_t
pushi.e 0
pop.v.i self.lc_c
pushi.e 0
pop.v.i self.lc_a
pushi.e 52
pop.v.i self.lac
pushi.e 30
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[299]
push.v self.lac
pushi.e 53
cmp.i.v EQ
bf [367]

:[300]
push.v self.lc_t
pushi.e 0
cmp.i.v EQ
bf [310]

:[301]
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=4)
pop.v.v self.dd
pushi.e 8
dup.i 0
push.i 0
cmp.i.i LTE
bt [305]

:[302]
push.v self.dd
push.v self.pdd
cmp.v.v EQ
bf [304]

:[303]
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=4)
pop.v.v self.dd

:[304]
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [302]

:[305]
popz.i
push.v self.lc_c
pushi.e 0
cmp.i.v EQ
bf [307]

:[306]
pushi.e 1
pop.v.i self.dd
pushi.e 1
pop.v.i self.facetype

:[307]
push.v self.lc_c
pushi.e 18
cmp.i.v EQ
bf [309]

:[308]
pushi.e 2
pop.v.i self.dd

:[309]
push.v self.dd
pop.v.v self.movearm
pushi.e 0
pop.v.i self.arm_i
pushi.e 0
pop.v.i self.heady
pushi.e 0
pop.v.i self.headx

:[310]
push.v self.lc_t
pushi.e 8
conv.i.d
push.v self.aspeed
div.v.d
cmp.v.v EQ
bf [323]

:[311]
push.v self.lc_c
pushi.e 18
cmp.i.v EQ
bf [313]

:[312]
pushi.e 21
pop.v.i self.lc_a

:[313]
push.v self.lc_c
pushi.e 17
cmp.i.v EQ
bf [315]

:[314]
pushi.e 12
pop.v.i self.lc_a

:[315]
push.v self.dd
pushi.e 1
cmp.i.v EQ
bf [317]

:[316]
pushi.e 11
conv.i.v
call.i event_user(argc=1)
popz.v

:[317]
push.v self.dd
pushi.e 3
cmp.i.v EQ
bf [319]

:[318]
pushi.e 10
conv.i.v
call.i event_user(argc=1)
popz.v

:[319]
push.v self.dd
pushi.e 2
cmp.i.v EQ
bf [321]

:[320]
pushi.e 12
conv.i.v
call.i event_user(argc=1)
popz.v

:[321]
push.v self.dd
pushi.e 4
cmp.i.v EQ
bf [323]

:[322]
pushi.e 13
conv.i.v
call.i event_user(argc=1)
popz.v

:[323]
push.v self.lc_t
push.v self.lc_a
pushi.e 2
mul.i.v
pushi.e 8
conv.i.d
push.v self.aspeed
div.v.d
add.v.v
pushi.e 4
add.i.v
cmp.v.v EQ
bf [337]

:[324]
push.v self.lc_c
pushi.e 18
cmp.i.v EQ
bf [326]

:[325]
pushi.e 2
pop.v.i self.intensity

:[326]
push.v self.dd
pushi.e 3
cmp.i.v EQ
bf [328]

:[327]
pushi.e 2
pop.v.i self.dd
b [334]

:[328]
push.v self.dd
pushi.e 1
cmp.i.v EQ
bf [330]

:[329]
pushi.e 4
pop.v.i self.dd
b [334]

:[330]
push.v self.dd
pushi.e 4
cmp.i.v EQ
bf [332]

:[331]
pushi.e 1
pop.v.i self.dd
b [334]

:[332]
push.v self.dd
pushi.e 2
cmp.i.v EQ
bf [334]

:[333]
pushi.e 3
pop.v.i self.dd

:[334]
push.v self.dd
pop.v.v self.pdd
push.v self.lc_c
pushi.e 18
cmp.i.v EQ
bf [336]

:[335]
pushi.e 3
pop.v.i self.dd
pushi.e 3
pop.v.i self.sweat
pushi.e 9
pop.v.i global.faceemotion

:[336]
push.v self.dd
pop.v.v self.movearm
pushi.e 0
pop.v.i self.arm_i
pushi.e 0
pop.v.i self.heady
pushi.e 0
pop.v.i self.headx

:[337]
push.v self.lc_t
push.v self.lc_a
pushi.e 2
mul.i.v
pushi.e 8
conv.i.d
push.v self.aspeed
div.v.d
pushi.e 2
mul.i.v
add.v.v
pushi.e 4
add.i.v
cmp.v.v EQ
bf [348]

:[338]
push.v self.dd
pushi.e 1
cmp.i.v EQ
bf [340]

:[339]
pushi.e 11
conv.i.v
call.i event_user(argc=1)
popz.v

:[340]
push.v self.dd
pushi.e 3
cmp.i.v EQ
bf [342]

:[341]
pushi.e 10
conv.i.v
call.i event_user(argc=1)
popz.v

:[342]
push.v self.dd
pushi.e 2
cmp.i.v EQ
bf [344]

:[343]
pushi.e 12
conv.i.v
call.i event_user(argc=1)
popz.v

:[344]
push.v self.dd
pushi.e 4
cmp.i.v EQ
bf [346]

:[345]
pushi.e 13
conv.i.v
call.i event_user(argc=1)
popz.v

:[346]
push.v self.lc_c
pushi.e 18
cmp.i.v EQ
bf [348]

:[347]
pushi.e 21
pop.v.i self.lc_a

:[348]
push.v self.lc_t
pushi.e 1
add.i.v
pop.v.v self.lc_t
push.v self.lc_t
push.v self.lc_a
pushi.e 4
mul.i.v
pushi.e 8
conv.i.d
push.v self.aspeed
div.v.d
pushi.e 2
mul.i.v
add.v.v
pushi.e 7
add.i.v
cmp.v.v EQ
bf [367]

:[349]
pushi.e 0
pop.v.i self.lc_t
push.v self.lc_c
pushi.e 1
add.i.v
pop.v.v self.lc_c
push.v self.lc_c
pushi.e 11
cmp.i.v EQ
bf [351]

:[350]
pushi.e 1
pop.v.i self.lc_a
push.d 0.8
conv.d.v
pushglb.v global.batmusic
call.i caster_set_volume(argc=2)
popz.v
pushi.e 20
pop.v.i self.intensity

:[351]
push.v self.lc_c
pushi.e 12
cmp.i.v EQ
bf [353]

:[352]
pushi.e 2
pop.v.i self.lc_a
pushi.e 20
pop.v.i self.intensity

:[353]
push.v self.lc_c
pushi.e 13
cmp.i.v EQ
bf [355]

:[354]
pushi.e 0
pop.v.i self.lc_a
pushi.e 1
pop.v.i self.aspeed
pushi.e 16
pop.v.i self.intensity
pushi.e 1
pop.v.i self.sweat
pushi.e 0
pop.v.i self.facetype
pushi.e 0
pop.v.i global.faceemotion

:[355]
push.v self.lc_c
pushi.e 14
cmp.i.v EQ
bf [357]

:[356]
pushi.e 2
pop.v.i self.lc_a
push.d 0.7
conv.d.v
pushglb.v global.batmusic
call.i caster_set_volume(argc=2)
popz.v
pushi.e 14
pop.v.i self.intensity

:[357]
push.v self.lc_c
pushi.e 15
cmp.i.v EQ
bf [359]

:[358]
pushi.e 4
pop.v.i self.lc_a
push.d 0.5
conv.d.v
pushglb.v global.batmusic
call.i caster_set_volume(argc=2)
popz.v
pushi.e 12
pop.v.i self.intensity

:[359]
push.v self.lc_c
pushi.e 16
cmp.i.v EQ
bf [361]

:[360]
pushi.e 6
pop.v.i self.lc_a
push.d 0.25
conv.d.v
pushglb.v global.batmusic
call.i caster_set_volume(argc=2)
popz.v
pushi.e 12
pop.v.i self.intensity

:[361]
push.v self.lc_c
pushi.e 17
cmp.i.v EQ
bf [363]

:[362]
pushi.e 8
pop.v.i self.lc_a
push.d 0.15
conv.d.v
pushglb.v global.batmusic
call.i caster_set_volume(argc=2)
popz.v
push.d 0.5
pop.v.d self.aspeed
pushi.e 11
pop.v.i self.intensity
pushi.e 2
pop.v.i self.sweat
pushi.e 2
pop.v.i global.faceemotion

:[363]
push.v self.lc_c
pushi.e 18
cmp.i.v EQ
bf [365]

:[364]
pushi.e 15
pop.v.i self.lc_a
push.d 0.07
conv.d.v
pushglb.v global.batmusic
call.i caster_set_volume(argc=2)
popz.v
pushi.e 8
pop.v.i self.intensity

:[365]
push.v self.lc_c
pushi.e 19
cmp.i.v EQ
bf [367]

:[366]
pushi.e 60
pop.v.i self.lac
pushi.e 0
conv.i.v
pushglb.v global.batmusic
call.i caster_set_volume(argc=2)
popz.v
pushi.e 0
pop.v.i self.movearm
pushi.e 0
pop.v.i self.headx
pushi.e 0
pop.v.i self.heady
pushi.e 2
pop.v.i self.bounce
pushi.e 0
pop.v.i self.test_timer_on

:[367]
push.v self.lac
pushi.e 60
cmp.i.v EQ
bf [369]

:[368]
pushi.e 61
pop.v.i self.lac
pushi.e 80
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[369]
push.v self.lac
pushi.e 62
cmp.i.v EQ
bf [371]

:[370]
pushi.e 9
pop.v.i self.sleep_c
pushi.e 1
pop.v.i 744.movement
pushi.e 0
pop.v.i 744.speed
pushi.e 46
pop.v.i 744.sprite_index
pushi.e 3
pop.v.i self.sweat
pushi.e 9
pop.v.i global.faceemotion
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.msc
pushi.e 109
pop.v.i global.typer
push.s "obj_sansb_body_2091"@24013
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sansb_body_2092"@24015
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_sansb_body_2093"@24017
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_sansb_body_2094"@24018
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_sansb_body_2095"@24020
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.v self.y
pushi.e 10
sub.i.v
push.v 520.x
pushi.e 120
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 63
pop.v.i self.lac

:[371]
push.v self.lac
pushi.e 63
cmp.i.v EQ
bf [373]

:[372]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [374]

:[373]
push.e 0

:[374]
bf [376]

:[375]
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 64
pop.v.i self.lac
pushi.e 300
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[376]
push.v self.lac
pushi.e 65
cmp.i.v EQ
bf [378]

:[377]
pushi.e 0
pop.v.i global.msc
pushi.e 109
pop.v.i global.typer
push.s "obj_sansb_body_2111"@24022
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sansb_body_2112"@24024
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_sansb_body_2113"@24026
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_sansb_body_2114"@24028
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_sansb_body_2115"@24030
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_sansb_body_2116"@24032
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_sansb_body_2117"@24034
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_sansb_body_2118"@24036
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_sansb_body_2119"@24038
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_sansb_body_2120"@24040
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_sansb_body_2121"@24042
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_sansb_body_2122"@24044
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_sansb_body_2123"@24046
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_sansb_body_2124"@24048
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.v self.y
pushi.e 10
sub.i.v
push.v 520.x
pushi.e 120
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 66
pop.v.i self.lac

:[378]
push.v self.lac
pushi.e 66
cmp.i.v EQ
bf [380]

:[379]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [381]

:[380]
push.e 0

:[381]
bf [383]

:[382]
pushi.e 0
pop.v.i global.faceemotion
pushi.e 67
pop.v.i self.lac
pushi.e 300
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[383]
push.v self.lac
pushi.e 68
cmp.i.v EQ
bf [385]

:[384]
pushi.e 0
pop.v.i global.msc
pushi.e 109
pop.v.i global.typer
push.s "obj_sansb_body_2141"@24050
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sansb_body_2142"@24052
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_sansb_body_2143"@24054
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.y
pushi.e 10
sub.i.v
push.v 520.x
pushi.e 120
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 69
pop.v.i self.lac

:[385]
push.v self.lac
pushi.e 69
cmp.i.v EQ
bf [387]

:[386]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [388]

:[387]
push.e 0

:[388]
bf [390]

:[389]
pushi.e 0
pop.v.i global.faceemotion
pushi.e 70
pop.v.i self.lac
pushi.e 300
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[390]
push.v self.lac
pushi.e 71
cmp.i.v EQ
bf [392]

:[391]
pushi.e 0
pop.v.i global.msc
pushi.e 109
pop.v.i global.typer
push.s "obj_sansb_body_2161"@24056
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sansb_body_2162"@24058
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_sansb_body_2163"@24060
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_sansb_body_2164"@24062
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_sansb_body_2165"@24064
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_sansb_body_2166"@24066
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_sansb_body_2167"@24068
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_sansb_body_2168"@24070
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_sansb_body_2169"@24072
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_sansb_body_2170"@24074
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.v self.y
pushi.e 10
sub.i.v
push.v 520.x
pushi.e 120
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 72
pop.v.i self.lac

:[392]
push.v self.lac
pushi.e 72
cmp.i.v EQ
bf [394]

:[393]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [395]

:[394]
push.e 0

:[395]
bf [397]

:[396]
pushi.e 0
pop.v.i global.faceemotion
pushi.e 73
pop.v.i self.lac
pushi.e 300
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[397]
push.v self.lac
pushi.e 74
cmp.i.v EQ
bf [399]

:[398]
pushi.e 0
pop.v.i global.msc
pushi.e 109
pop.v.i global.typer
push.s "obj_sansb_body_2188"@24076
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sansb_body_2189"@24078
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_sansb_body_2190"@24080
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_sansb_body_2191"@24082
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_sansb_body_2192"@24084
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_sansb_body_2193"@24086
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.v self.y
pushi.e 10
sub.i.v
push.v 520.x
pushi.e 120
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 75
pop.v.i self.lac

:[399]
push.v self.lac
pushi.e 75
cmp.i.v EQ
bf [401]

:[400]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [402]

:[401]
push.e 0

:[402]
bf [404]

:[403]
pushi.e 0
pop.v.i global.faceemotion
pushi.e -1
pop.v.i self.lac

:[404]
push.v self.lac
pushi.e 999
cmp.i.v EQ
bf [406]

:[405]
pushi.e 0
pop.v.i 744.speed
pushi.e 6
pop.v.i self.lac
pushi.e 1
pop.v.i 744.movement
pushi.e 501
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 120
sub.i.v
pushi.e -40
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.b1
pushi.e 684
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 7
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 501
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 80
sub.i.v
pushi.e 720
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.b1
pushi.e 684
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e -8
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 501
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 150
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 110
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.b1
pushi.e 691
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 6
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 501
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 150
add.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 70
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.b1
pushi.e 691
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e -6
push.v self.b1
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 10
pop.v.i self.lac

:[406]
push.v self.test_timer_on
pushi.e 1
cmp.i.v EQ
bf [408]

:[407]
push.v self.test_timer
pushi.e 1
add.i.v
pop.v.v self.test_timer

:[408]
push.v self.mk_c
pushi.e 1
cmp.i.v EQ
bf [411]

:[409]
push.v self.mk_c_timer
pushi.e 1
add.i.v
pop.v.v self.mk_c_timer
push.v self.mk_c_timer
pushi.e 15
cmp.i.v GTE
bf [411]

:[410]
pushi.e 1
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 3
pop.v.i global.faceemotion
pushi.e 2
pop.v.i self.mk_c
pushi.e 503
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.bs
pushi.e 300
push.v self.bs
conv.v.i
pop.v.i [stacktop]self.retain
pushi.e 100
push.v self.bs
conv.v.i
pop.v.i [stacktop]self.height
pushi.e 0
push.v self.bs
conv.v.i
pop.v.i [stacktop]self.dir
pushi.e 0
push.v self.bs
conv.v.i
pop.v.i [stacktop]self.warning

:[411]
pushglb.v global.damagetimer
pushi.e 0
cmp.i.v GT
bf [413]

:[412]
push.v self.dodge
pushi.e 0
cmp.i.v EQ
b [414]

:[413]
push.e 0

:[414]
bf [416]

:[415]
pushi.e 1
pop.v.i self.dodge

:[416]
push.v self.dodge
pushi.e 1
cmp.i.v EQ
bf [418]

:[417]
pushglb.v global.damagetimer
pop.v.v self.timerbonus
pushi.e 0
pop.v.i self.dg_t
push.v self.x
pop.v.v self.dg_x
pushi.e -12
pop.v.i self.hspeed
pushi.e 2
pop.v.i self.dodge

:[418]
push.v self.dodge
pushi.e 2
cmp.i.v EQ
bf [431]

:[419]
push.v self.x
push.v self.dg_x
pushi.e 60
sub.i.v
cmp.v.v LT
bf [421]

:[420]
push.v self.dg_t
pushi.e 20
cmp.i.v LT
b [422]

:[421]
push.e 0

:[422]
bf [426]

:[423]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
bf [425]

:[424]
push.v self.hspeed
pushi.e 2
add.i.v
pop.v.v self.hspeed
b [426]

:[425]
pushi.e 0
pop.v.i self.hspeed

:[426]
push.v self.dg_t
pushi.e 1
add.i.v
pop.v.v self.dg_t
push.v self.dg_t
pushi.e 20
push.v self.timerbonus
add.v.i
cmp.v.v GTE
bf [431]

:[427]
push.v self.hspeed
pushi.e 12
cmp.i.v LT
bf [429]

:[428]
push.v self.hspeed
pushi.e 2
add.i.v
pop.v.v self.hspeed

:[429]
push.v self.x
push.v self.dg_x
pushi.e 13
sub.i.v
cmp.v.v GTE
bf [431]

:[430]
pushi.e 0
pop.v.i self.hspeed
push.v self.dg_x
pop.v.v self.x
pushi.e 0
pop.v.i self.dodge
pushi.e -1
pop.v.i global.damagetimer

:[431]
push.v self.death_c
pushi.e 1
cmp.i.v EQ
bf [433]

:[432]
pushi.e 44
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i self.asleep
pushi.e 0
pop.v.i self.sweat
pushi.e 0
pop.v.i self.bounce
pushi.e 0
pop.v.i self.dg_t
push.v self.x
pop.v.v self.dg_x
pushi.e 510
conv.i.v
push.v self.y
pushi.e 30
sub.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.st
push.d 1.5
push.v self.st
conv.v.i
pop.v.d [stacktop]self.image_xscale
push.d 1.5
push.v self.st
conv.v.i
pop.v.d [stacktop]self.image_yscale
push.d 0.334
push.v self.st
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e -12
pop.v.i self.hspeed
pushi.e 2
pop.v.i self.death_c

:[433]
push.v self.death_c
pushi.e 2
cmp.i.v EQ
bf [441]

:[434]
push.v self.x
push.v self.dg_x
pushi.e 60
sub.i.v
cmp.v.v LT
bf [436]

:[435]
push.v self.dg_t
pushi.e 50
cmp.i.v LT
b [437]

:[436]
push.e 0

:[437]
bf [441]

:[438]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
bf [440]

:[439]
push.v self.hspeed
pushi.e 2
add.i.v
pop.v.v self.hspeed
b [441]

:[440]
pushi.e 0
pop.v.i self.hspeed
pushi.e 3
pop.v.i self.death_c
pushi.e 0
pop.v.i global.msc
pushi.e 109
pop.v.i global.typer
push.s "obj_sansb_body_2344"@24088
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.y
pushi.e 10
sub.i.v
push.v self.x
pushi.e 80
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 50
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm

:[441]
push.v self.death_c
pushi.e 3
cmp.i.v EQ
bf [443]

:[442]
pushi.e 3
pop.v.i global.faceemotion
pushi.e 1
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 0
pop.v.i self.bof_d

:[443]
push.v self.death_c
pushi.e 4
cmp.i.v EQ
bf [449]

:[444]
pushi.e 784
pushenv [446]

:[445]
call.i instance_destroy(argc=0)
popz.v

:[446]
popenv [445]
pushi.e 189
pushenv [448]

:[447]
call.i instance_destroy(argc=0)
popz.v

:[448]
popenv [447]
pushi.e 44
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 510
conv.i.v
push.v self.y
pushi.e 30
sub.i.v
push.v self.x
pushi.e 10
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.st
push.d 1.5
push.v self.st
conv.v.i
pop.v.d [stacktop]self.image_xscale
push.d 1.5
push.v self.st
conv.v.i
pop.v.d [stacktop]self.image_yscale
push.d 0.25
push.v self.st
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 5
pop.v.i self.death_c
pushi.e 50
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm
push.v self.x
pop.v.v self.hit_x
pushi.e 6
pop.v.i global.faceemotion

:[449]
push.v self.death_c
pushi.e 5
cmp.i.v EQ
bf [453]

:[450]
push.v self.bof_d
pushi.e 4
cmp.i.v LT
bf [452]

:[451]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 50
sub.i.v
push.v self.x
push.v self.bof_d
call.i floor(argc=1)
pushi.e 694
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[452]
push.v self.bof_d
pushi.e 1
add.i.v
pop.v.v self.bof_d

:[453]
push.v self.death_c
pushi.e 6
cmp.i.v EQ
bf [459]

:[454]
pushi.e 520
pushenv [458]

:[455]
push.v self.mypart1
conv.v.i
push.v [stacktop]self.x
pushi.e 60
sub.i.v
pop.v.v self.x
push.i 9999999
pop.v.i global.damage
pushi.e 190
conv.i.v
push.v self.y
pushi.e 50
sub.i.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 48
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.dmgwriter
push.v self.dmgwriter
conv.v.i
pushenv [457]

:[456]
push.i 9999999
pop.v.i self.dmg
pushi.e 0
pop.v.i self.drawbar

:[457]
popenv [456]

:[458]
popenv [455]
pushi.e 51
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.deadtest
pushi.e 3
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.v self.hit_x
pushi.e 32
add.i.v
pop.v.v self.x
pushi.e 7
pop.v.i self.death_c
pushi.e 4
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm

:[459]
push.v self.death_c
pushi.e 8
cmp.i.v EQ
bf [461]

:[460]
push.v self.hit_x
pushi.e 28
sub.i.v
pop.v.v self.x
pushi.e 9
pop.v.i self.death_c
pushi.e 4
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm

:[461]
push.v self.death_c
pushi.e 10
cmp.i.v EQ
bf [463]

:[462]
pushi.e 3
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.v self.hit_x
pushi.e 24
add.i.v
pop.v.v self.x
pushi.e 11
pop.v.i self.death_c
pushi.e 4
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm

:[463]
push.v self.death_c
pushi.e 12
cmp.i.v EQ
bf [465]

:[464]
push.v self.hit_x
pushi.e 20
sub.i.v
pop.v.v self.x
pushi.e 13
pop.v.i self.death_c
pushi.e 4
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm

:[465]
push.v self.death_c
pushi.e 14
cmp.i.v EQ
bf [467]

:[466]
pushi.e 3
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.v self.hit_x
pushi.e 16
add.i.v
pop.v.v self.x
pushi.e 15
pop.v.i self.death_c
pushi.e 4
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm

:[467]
push.v self.death_c
pushi.e 16
cmp.i.v EQ
bf [469]

:[468]
push.v self.hit_x
pushi.e 12
sub.i.v
pop.v.v self.x
pushi.e 17
pop.v.i self.death_c
pushi.e 4
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm

:[469]
push.v self.death_c
pushi.e 18
cmp.i.v EQ
bf [471]

:[470]
pushi.e 3
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.v self.hit_x
pushi.e 8
add.i.v
pop.v.v self.x
pushi.e 19
pop.v.i self.death_c
pushi.e 4
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm

:[471]
push.v self.death_c
pushi.e 20
cmp.i.v EQ
bf [473]

:[472]
push.v self.hit_x
pushi.e 4
sub.i.v
pop.v.v self.x
pushi.e 21
pop.v.i self.death_c
pushi.e 4
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm

:[473]
push.v self.death_c
pushi.e 22
cmp.i.v EQ
bf [475]

:[474]
pushi.e 0
pop.v.i self.xoff
pushi.e 0
pop.v.i self.yoff
pushi.e 0
pop.v.i self.headx
pushi.e 0
pop.v.i self.heady
pushi.e 0
pop.v.i self.legx
pushi.e 0
pop.v.i self.legy
push.v self.hit_x
pop.v.v self.x
pushi.e 23
pop.v.i self.death_c
pushi.e 110
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm

:[475]
push.v self.death_c
pushi.e 8
cmp.i.v GTE
bf [477]

:[476]
push.v self.death_c
pushi.e 22
cmp.i.v LT
b [478]

:[477]
push.e 0

:[478]
bf [480]

:[479]
pushi.e -1
pop.v.i self.bounce
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.xoff
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.yoff
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.legx
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.legy

:[480]
push.v self.death_c
pushi.e 24
cmp.i.v EQ
bf [484]

:[481]
pushi.e 190
pushenv [483]

:[482]
call.i instance_destroy(argc=0)
popz.v

:[483]
popenv [482]
pushi.e 3
pop.v.i self.bounce
pushi.e 1
pop.v.i self.deadtest
pushi.e 4
pop.v.i global.faceemotion
pushi.e 4
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 25
pop.v.i self.death_c
pushi.e 30
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm

:[484]
push.v self.death_c
pushi.e 26
cmp.i.v EQ
bf [486]

:[485]
pushi.e 0
pop.v.i global.msc
pushi.e 107
pop.v.i global.typer
push.s "obj_sansb_body_2495"@24089
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sansb_body_2496"@24090
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_sansb_body_2497"@24091
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_sansb_body_2498"@24093
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_sansb_body_2499"@24095
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_sansb_body_2500"@24096
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_sansb_body_2501"@24098
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_sansb_body_2502"@24100
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.v self.y
pushi.e 10
sub.i.v
push.v self.x
pushi.e 80
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 27
pop.v.i self.death_c

:[486]
push.v self.death_c
pushi.e 27
cmp.i.v EQ
bf [488]

:[487]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [489]

:[488]
push.e 0

:[489]
bf [506]

:[490]
push.v 784.stringno
pushi.e 0
cmp.i.v EQ
bf [492]

:[491]
pushi.e 10
pop.v.i global.faceemotion

:[492]
push.v 784.stringno
pushi.e 1
cmp.i.v EQ
bf [494]

:[493]
pushi.e 7
pop.v.i global.faceemotion

:[494]
push.v 784.stringno
pushi.e 2
cmp.i.v EQ
bf [496]

:[495]
pushi.e 11
pop.v.i global.faceemotion

:[496]
push.v 784.stringno
pushi.e 3
cmp.i.v EQ
bf [498]

:[497]
pushi.e 7
pop.v.i global.faceemotion

:[498]
push.v 784.stringno
pushi.e 4
cmp.i.v EQ
bf [500]

:[499]
pushi.e 7
pop.v.i global.faceemotion

:[500]
push.v 784.stringno
pushi.e 5
cmp.i.v EQ
bf [502]

:[501]
pushi.e 11
pop.v.i global.faceemotion

:[502]
push.v 784.stringno
pushi.e 6
cmp.i.v EQ
bf [504]

:[503]
pushi.e 10
pop.v.i global.faceemotion

:[504]
push.v 784.stringno
pushi.e 7
cmp.i.v EQ
bf [506]

:[505]
pushi.e 10
pop.v.i global.faceemotion

:[506]
push.v self.death_c
pushi.e 27
cmp.i.v EQ
bf [508]

:[507]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [509]

:[508]
push.e 0

:[509]
bf [511]

:[510]
push.d 27.1
pop.v.d self.death_c
pushi.e 60
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm

:[511]
push.v self.death_c
push.d 28.1
cmp.d.v EQ
bf [513]

:[512]
pushi.e 0
pop.v.i self.bounce
pushi.e 10
pop.v.i global.faceemotion
pushi.e 5
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 0
pop.v.i self.deadtest
pushi.e 28
pop.v.i self.death_c
pushi.e 80
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm

:[513]
push.v self.death_c
pushi.e 29
cmp.i.v EQ
bf [515]

:[514]
pushi.e 0
pop.v.i global.msc
pushi.e 107
pop.v.i global.typer
push.s "obj_sansb_body_2539"@24102
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sansb_body_2540"@24104
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.y
pushi.e 10
sub.i.v
push.v self.x
pushi.e 80
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 30
pop.v.i self.death_c

:[515]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [517]

:[516]
push.v self.death_c
pushi.e 30
cmp.i.v EQ
b [518]

:[517]
push.e 0

:[518]
bf [523]

:[519]
push.v 784.stringno
pushi.e 0
cmp.i.v EQ
bf [521]

:[520]
pushi.e 10
pop.v.i global.faceemotion

:[521]
push.v 784.stringno
pushi.e 1
cmp.i.v EQ
bf [523]

:[522]
pushi.e 8
pop.v.i global.faceemotion
pushi.e 6
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag

:[523]
push.v self.death_c
pushi.e 30
cmp.i.v EQ
bf [525]

:[524]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [526]

:[525]
push.e 0

:[526]
bf [528]

:[527]
pushi.e 10
pop.v.i global.faceemotion
pushi.e 5
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 2
pop.v.i self.bounce
pushi.e -2
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.d_sin
pushi.e 31
pop.v.i self.death_c

:[528]
push.v self.death_c
pushi.e 31
cmp.i.v EQ
bf [531]

:[529]
push.v self.d_sin
pushi.e 1
add.i.v
pop.v.v self.d_sin
push.v self.d_sin
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 1
mul.i.v
pop.v.v self.dsp
pushi.e -1
push.v self.dsp
sub.v.i
pop.v.v self.hspeed
push.v self.x
pushi.e -180
cmp.i.v LT
bf [531]

:[530]
pushi.e 32
pop.v.i self.death_c

:[531]
push.v self.death_c
pushi.e 32
cmp.i.v EQ
bf [533]

:[532]
pushi.e 0
pop.v.i global.msc
pushi.e 107
pop.v.i global.typer
push.s "obj_sansb_body_2574"@24106
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.y
pushi.e 10
sub.i.v
pushi.e 20
conv.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 33
pop.v.i self.death_c

:[533]
push.v self.death_c
pushi.e 33
cmp.i.v EQ
bf [535]

:[534]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [536]

:[535]
push.e 0

:[536]
bf [538]

:[537]
pushi.e 34
pop.v.i self.death_c
pushi.e 60
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm

:[538]
push.v self.death_c
pushi.e 35
cmp.i.v EQ
bf [542]

:[539]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "SK"@47600
conv.s.v
push.s "Sans"@6900
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.san_d
push.v self.san_d
pushi.e 1
add.i.v
push.s "SK"@47600
conv.s.v
push.s "Sans"@6900
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v
pushi.e 92
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 36
pop.v.i self.death_c
pushi.e 140
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm
pushglb.v global.xp
push.i 99999
cmp.i.v LT
bf [541]

:[540]
push.i 99999
pop.v.i global.xp

:[541]
call.i scr_levelup(argc=0)
popz.v

:[542]
push.v self.death_c
pushi.e 37
cmp.i.v EQ
bf [544]

:[543]
pushi.e 150
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 38
pop.v.i self.death_c
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 20
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm

:[544]
push.v self.death_c
pushi.e 39
cmp.i.v EQ
bf [546]

:[545]
pushi.e 149
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1
pop.v.i self.do_room_goto

:[546]
push.v self.asleep
pushi.e 1
cmp.i.v EQ
bf [555]

:[547]
push.v self.asleep_timer
pushi.e 1
add.i.v
pop.v.v self.asleep_timer
push.v self.asleep_timer
pushi.e 10
cmp.i.v EQ
bf [549]

:[548]
pushi.e 509
conv.i.v
push.v self.y
pushi.e 10
sub.i.v
push.v self.x
pushi.e 20
add.i.v
call.i instance_create(argc=3)
popz.v

:[549]
push.v self.asleep_timer
pushi.e 20
cmp.i.v EQ
bf [551]

:[550]
pushi.e 509
conv.i.v
push.v self.y
pushi.e 10
sub.i.v
push.v self.x
pushi.e 20
add.i.v
call.i instance_create(argc=3)
popz.v

:[551]
push.v self.asleep_timer
pushi.e 30
cmp.i.v EQ
bf [553]

:[552]
pushi.e 509
conv.i.v
push.v self.y
pushi.e 10
sub.i.v
push.v self.x
pushi.e 20
add.i.v
call.i instance_create(argc=3)
popz.v

:[553]
push.v self.asleep_timer
pushi.e 80
cmp.i.v EQ
bf [555]

:[554]
pushi.e 0
pop.v.i self.asleep_timer

:[555]
push.v self.sleep_c
pushi.e 9
cmp.i.v EQ
bf [571]

:[556]
pushi.e 1
pop.v.i self.sleep_c
pushi.e 0
pop.v.i self.drawborder
pushi.e 744
pushenv [558]

:[557]
pushi.e 1
pop.v.i self.ignore_border

:[558]
popenv [557]
pushi.e 758
pushenv [560]

:[559]
pushi.e 1
pop.v.i self.ignore_border

:[560]
popenv [559]
pushi.e 758
pushenv [562]

:[561]
pushi.e 0
pop.v.i self.visible

:[562]
popenv [561]
pushi.e 758
pushenv [564]

:[563]
pushi.e 0
pop.v.i self.solid

:[564]
popenv [563]
pushi.e 508
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
call.i instance_create(argc=3)
popz.v
pushi.e 758
pushenv [566]

:[565]
pushi.e 1
pop.v.i self.instaborder

:[566]
popenv [565]
pushi.e 507
conv.i.v
push.v 751.y
push.v 751.x
call.i instance_create(argc=3)
popz.v
pushi.e 751
pushenv [568]

:[567]
pushi.e 0
pop.v.i self.visible

:[568]
popenv [567]
pushi.e -10
pushi.e -5
pushi.e 0
pop.v.i [array]global.idealborder
pushi.e 999
pushi.e -5
pushi.e 3
pop.v.i [array]global.idealborder
pushi.e 9
pop.v.i global.faceemotion
pushi.e 3
pop.v.i self.sweat
pushi.e 3
pop.v.i self.bounce
pushi.e 744
pushenv [570]

:[569]
pushi.e 1
pop.v.i self.ignore_border
pushi.e 1
pop.v.i self.movement
pushi.e 0
pop.v.i self.speed

:[570]
popenv [569]

:[571]
push.v self.sleep_c
pushi.e 1
cmp.i.v EQ
bf [595]

:[572]
push.v self.lac
pushi.e 60
cmp.i.v GT
bf [576]

:[573]
push.v self.sleep_t
pushi.e -10
cmp.i.v LT
bf [575]

:[574]
push.v self.sleep_t
pushi.e 1
add.i.v
pop.v.v self.sleep_t

:[575]
b [577]

:[576]
push.v self.sleep_t
pushi.e 1
add.i.v
pop.v.v self.sleep_t

:[577]
push.v self.sleep_t
pushi.e 1200
cmp.i.v LT
bf [580]

:[578]
push.v 744.x
push.v 508.x
pushi.e 10
add.i.v
cmp.v.v LT
bf [580]

:[579]
pushi.e 28
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v 508.x
pushi.e 78
add.i.v
pop.v.v 744.x
push.v 508.y
pushi.e 78
add.i.v
pop.v.v 744.y
pushi.e -95
pop.v.i self.sleep_t
pushi.e 1
pop.v.i self.facetype
pushi.e 0
pop.v.i global.faceemotion

:[580]
push.v self.sleep_t
pushi.e -92
cmp.i.v EQ
bf [582]

:[581]
pushi.e 0
pop.v.i self.facetype

:[582]
push.v self.sleep_t
pushi.e 0
cmp.i.v EQ
bf [584]

:[583]
pushi.e 9
pop.v.i global.faceemotion

:[584]
push.v self.sleep_t
pushi.e 300
cmp.i.v EQ
bf [587]

:[585]
pushi.e 12
pop.v.i global.faceemotion
push.v self.sweat
pushi.e 0
cmp.i.v GT
bf [587]

:[586]
push.v self.sweat
pushi.e 1
sub.i.v
pop.v.v self.sweat

:[587]
push.v self.sleep_t
pushi.e 600
cmp.i.v EQ
bf [590]

:[588]
pushi.e 13
pop.v.i global.faceemotion
push.v self.sweat
pushi.e 0
cmp.i.v GT
bf [590]

:[589]
push.v self.sweat
pushi.e 1
sub.i.v
pop.v.v self.sweat

:[590]
push.v self.sleep_t
pushi.e 900
cmp.i.v EQ
bf [593]

:[591]
pushi.e 14
pop.v.i global.faceemotion
push.v self.sweat
pushi.e 0
cmp.i.v GT
bf [593]

:[592]
push.v self.sweat
pushi.e 1
sub.i.v
pop.v.v self.sweat

:[593]
push.v self.sleep_t
pushi.e 1200
cmp.i.v EQ
bf [595]

:[594]
pushi.e 4
pop.v.i global.faceemotion
pushi.e 1
pop.v.i self.asleep
pushi.e 2
pop.v.i self.sleep_c

:[595]
pushglb.v global.km
pushi.e 40
cmp.i.v GT
bf [597]

:[596]
pushi.e 40
pop.v.i global.km

:[597]
pushglb.v global.km
pushglb.v global.hp
cmp.v.v GTE
bf [599]

:[598]
pushglb.v global.hp
pushi.e 1
sub.i.v
pop.v.v global.km

:[599]
pushglb.v global.km
pushi.e 0
cmp.i.v GT
bf [601]

:[600]
pushglb.v global.hp
pushi.e 1
cmp.i.v GT
b [602]

:[601]
push.e 0

:[602]
bf [end]

:[603]
push.v self.km_t
pushi.e 1
add.i.v
pop.v.v self.km_t
push.v self.prevhp
pushglb.v global.hp
cmp.v.v EQ
bf [634]

:[604]
pushi.e 0
pop.v.i self.km_bonus
pushglb.v global.inv
pushi.e 45
cmp.i.v GTE
bf [606]

:[605]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.km_bonus

:[606]
pushglb.v global.inv
pushi.e 60
cmp.i.v GTE
bf [608]

:[607]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.km_bonus

:[608]
pushglb.v global.inv
pushi.e 75
cmp.i.v GTE
bf [610]

:[609]
pushi.e 1
pop.v.i self.km_bonus

:[610]
push.v self.km_t
pushi.e 1
push.v self.km_bonus
add.v.i
cmp.v.v GTE
bf [612]

:[611]
pushglb.v global.km
pushi.e 40
cmp.i.v GTE
b [613]

:[612]
push.e 0

:[613]
bf [615]

:[614]
pushi.e 0
pop.v.i self.km_t
push.v global.hp
pushi.e 1
sub.i.v
pop.v.v global.hp
push.v global.km
pushi.e 1
sub.i.v
pop.v.v global.km

:[615]
push.v self.km_t
pushi.e 2
push.v self.km_bonus
pushi.e 2
mul.i.v
add.v.i
cmp.v.v GTE
bf [617]

:[616]
pushglb.v global.km
pushi.e 30
cmp.i.v GTE
b [618]

:[617]
push.e 0

:[618]
bf [620]

:[619]
pushi.e 0
pop.v.i self.km_t
push.v global.hp
pushi.e 1
sub.i.v
pop.v.v global.hp
push.v global.km
pushi.e 1
sub.i.v
pop.v.v global.km

:[620]
push.v self.km_t
pushi.e 5
push.v self.km_bonus
pushi.e 3
mul.i.v
add.v.i
cmp.v.v GTE
bf [622]

:[621]
pushglb.v global.km
pushi.e 20
cmp.i.v GTE
b [623]

:[622]
push.e 0

:[623]
bf [625]

:[624]
pushi.e 0
pop.v.i self.km_t
push.v global.hp
pushi.e 1
sub.i.v
pop.v.v global.hp
push.v global.km
pushi.e 1
sub.i.v
pop.v.v global.km

:[625]
push.v self.km_t
pushi.e 15
push.v self.km_bonus
pushi.e 5
mul.i.v
add.v.i
cmp.v.v GTE
bf [627]

:[626]
pushglb.v global.km
pushi.e 10
cmp.i.v GTE
b [628]

:[627]
push.e 0

:[628]
bf [630]

:[629]
pushi.e 0
pop.v.i self.km_t
push.v global.hp
pushi.e 1
sub.i.v
pop.v.v global.hp
push.v global.km
pushi.e 1
sub.i.v
pop.v.v global.km

:[630]
push.v self.km_t
pushi.e 30
push.v self.km_bonus
pushi.e 10
mul.i.v
add.v.i
cmp.v.v GTE
bf [632]

:[631]
pushi.e 0
pop.v.i self.km_t
push.v global.hp
pushi.e 1
sub.i.v
pop.v.v global.hp
push.v global.km
pushi.e 1
sub.i.v
pop.v.v global.km

:[632]
pushglb.v global.hp
pushi.e 0
cmp.i.v LTE
bf [634]

:[633]
pushi.e 1
pop.v.i global.hp

:[634]
pushglb.v global.hp
pop.v.v self.prevhp

:[end]