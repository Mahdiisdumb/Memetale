.localvar 0 arguments
.localvar 1 mon_name 4888
.localvar 2 textx 4890
.localvar 3 ch 4893

:[0]
push.v self.transform
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.stetch
push.d 0.2
add.d.v
pop.v.v self.stetch

:[2]
push.v self.normal
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.rely
push.v self.siner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.v
pop.v.v self.rely
push.v self.x
push.v self.siner
pushi.e 24
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 6
mul.i.v
add.v.v
pop.v.v self.x
push.v self.y
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.25
mul.d.v
add.v.v
pop.v.v self.y

:[4]
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pop.v.v self.yoff
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i cos(argc=1)
pop.v.v self.xoff
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.image_alpha
call.i draw_set_alpha(argc=1)
popz.v
push.v self.y
pushi.e 46
add.i.v
push.v self.rely
add.v.v
push.v self.x
pushi.e 42
add.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.rely
add.v.v
push.v self.x
pushi.e 40
sub.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.image_alpha
push.v self.image_blend
push.v self.torsorot
pushi.e 2
conv.i.v
pushi.e 2
push.v self.stetch
add.v.i
push.v self.y
pushi.e 168
add.i.v
pushi.e 112
sub.i.v
push.v self.rely
push.d 0.9
mul.d.v
add.v.v
push.v self.x
push.v self.yoff
pushi.e 2
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 2464
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
push.v self.stetch
add.v.i
push.v self.y
pushi.e 48
add.i.v
push.v self.rely
add.v.v
push.v self.x
push.v self.yoff
add.v.v
pushi.e 0
conv.i.v
pushi.e 2463
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.v self.image_blend
push.v self.torsorot
pushi.e 2
conv.i.v
pushi.e 2
push.v self.stetch
add.v.i
push.v self.y
pushi.e 48
add.i.v
push.v self.rely
add.v.v
push.v self.x
push.v self.yoff
add.v.v
pushi.e 0
conv.i.v
pushi.e 2462
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
push.v self.stetch
add.v.i
push.v self.y
pushi.e 34
add.i.v
push.v self.rely
push.d 1.2
mul.d.v
add.v.v
push.v self.x
pushi.e 2
add.i.v
pushi.e 0
conv.i.v
pushi.e 2460
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.specialarm
pushi.e 0
cmp.i.v EQ
bf [9]

:[5]
push.v self.shrug
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
push.v self.image_alpha
push.v self.image_blend
push.v self.armrot_l
pushi.e 2
conv.i.v
pushi.e -2
push.v self.stetch
sub.v.i
push.v self.y
pushi.e 38
add.i.v
push.v self.rely
push.d 1.2
mul.d.v
add.v.v
push.v self.x
pushi.e 28
sub.i.v
pushi.e 0
conv.i.v
pushi.e 2458
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.v self.image_blend
push.v self.armrot_r
pushi.e 2
conv.i.v
pushi.e 2
push.v self.stetch
add.v.i
push.v self.y
pushi.e 38
add.i.v
push.v self.rely
push.d 1.2
mul.d.v
add.v.v
push.v self.x
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
pushi.e 2458
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[7]
push.v self.shrug
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
push.v self.image_alpha
push.v self.image_blend
push.v self.armrot_l
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
push.v self.y
pushi.e 38
add.i.v
push.v self.rely
push.d 1.2
mul.d.v
add.v.v
push.v self.x
pushi.e 28
sub.i.v
pushi.e 0
conv.i.v
pushi.e 2459
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.v self.image_blend
push.v self.armrot_r
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 38
add.i.v
push.v self.rely
push.d 1.2
mul.d.v
add.v.v
push.v self.x
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
pushi.e 2459
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[9]
push.v self.specialarm
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
push.v self.arm_alpha
push.v self.image_blend
push.v self.armrot_l
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
push.v self.y
pushi.e 38
add.i.v
push.v self.rely
push.d 1.2
mul.d.v
add.v.v
push.v self.x
pushi.e 28
sub.i.v
pushi.e 0
conv.i.v
pushi.e 2458
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.arm_alpha
push.v self.image_blend
push.v self.armrot_r
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 38
add.i.v
push.v self.rely
push.d 1.2
mul.d.v
add.v.v
push.v self.x
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
pushi.e 2458
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[11]
push.v self.specialarm
pushi.e 2
cmp.i.v EQ
bf [13]

:[12]
push.v self.image_alpha
push.v self.image_blend
push.v self.armrot_l
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
push.v self.y
pushi.e 38
add.i.v
push.v self.rely
push.d 1.2
mul.d.v
add.v.v
push.v self.x
pushi.e 28
sub.i.v
pushi.e 0
conv.i.v
pushi.e 2458
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.arm_alpha
push.v self.image_blend
push.v self.armrot_r
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 38
add.i.v
push.v self.rely
push.d 1.2
mul.d.v
add.v.v
push.v self.x
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
pushi.e 2458
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[13]
push.v self.image_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e -2
push.v self.stetch
sub.v.i
push.v self.y
pushi.e 26
add.i.v
push.v self.rely
push.d 1.2
mul.d.v
add.v.v
push.v self.x
pushi.e 28
sub.i.v
pushi.e 0
conv.i.v
pushi.e 2461
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
push.v self.stetch
add.v.i
push.v self.y
pushi.e 26
add.i.v
push.v self.rely
push.d 1.2
mul.d.v
add.v.v
push.v self.x
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
pushi.e 2461
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
push.v self.stetch
add.v.i
push.v self.y
pushi.e 22
add.i.v
push.v self.rely
pushi.e 1
mul.i.v
add.v.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 2465
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.shrug
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
push.v self.image_alpha
push.v self.image_blend
push.v self.headrot
pushi.e 2
conv.i.v
pushi.e 2
push.v self.stetch
add.v.i
push.v self.y
push.v self.rely
push.d 1.2
mul.d.v
add.v.v
push.v self.heady
add.v.v
push.v self.x
push.v self.headx
add.v.v
pushglb.v global.faceemotion
pushi.e 2466
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[15]
push.v self.shrug
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
push.v self.shrug_x
pushi.e 1
add.i.v
pop.v.v self.shrug_x
push.v self.image_alpha
push.v self.image_blend
push.v self.headrot
pushi.e 2
conv.i.v
pushi.e 2
push.v self.stetch
add.v.i
push.v self.y
push.v self.rely
push.d 1.2
mul.d.v
add.v.v
push.v self.heady
add.v.v
push.v self.x
push.v self.headx
add.v.v
push.v self.shrug_x
pushi.e 6
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 2468
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[17]
push.v self.aligncon
pushi.e 1
cmp.i.v EQ
bf [21]

:[18]
pushi.e 0
pop.v.i self.normal
pushbltn.v self.mouse_x
pop.v.v self.xxx
pushbltn.v self.mouse_y
pop.v.v self.yyy
pushi.e 320
pop.v.i self.xxx
pushi.e 45
pop.v.i self.yyy
push.v self.s_s
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
pushi.e 100
pop.v.i self.yyy

:[20]
push.v self.x
push.v self.xxx
sub.v.v
pop.v.v self.xxoff
push.v self.y
push.v self.yyy
sub.v.v
pop.v.v self.yyoff
pushi.e 2
pop.v.i self.aligncon
pushi.e 0
pop.v.i self.altimer

:[21]
push.v self.aligncon
pushi.e 2
cmp.i.v EQ
bf [48]

:[22]
pushi.e 1
pop.v.i self.image_alpha
push.v self.relx
call.i abs(argc=1)
pushi.e 1
cmp.i.v GT
bf [24]

:[23]
push.v self.relx
push.d 0.7
mul.d.v
pop.v.v self.relx
b [25]

:[24]
pushi.e 0
pop.v.i self.relx

:[25]
push.v self.rely
call.i abs(argc=1)
pushi.e 1
cmp.i.v GT
bf [27]

:[26]
push.v self.rely
push.d 0.7
mul.d.v
pop.v.v self.rely
b [28]

:[27]
pushi.e 0
pop.v.i self.rely

:[28]
push.v self.yyoff
call.i abs(argc=1)
pushi.e 1
cmp.i.v GT
bf [30]

:[29]
push.v self.yyoff
push.d 0.7
mul.d.v
pop.v.v self.yyoff
b [31]

:[30]
pushi.e 0
pop.v.i self.yyoff

:[31]
push.v self.xxoff
call.i abs(argc=1)
pushi.e 1
cmp.i.v GT
bf [33]

:[32]
push.v self.xxoff
push.d 0.7
mul.d.v
pop.v.v self.xxoff
b [34]

:[33]
pushi.e 0
pop.v.i self.xxoff

:[34]
push.v self.armrot_l
call.i abs(argc=1)
pushi.e 1
cmp.i.v GT
bf [36]

:[35]
push.v self.armrot_l
push.d 0.7
mul.d.v
pop.v.v self.armrot_l
b [37]

:[36]
pushi.e 0
pop.v.i self.armrot_l

:[37]
push.v self.armrot_r
call.i abs(argc=1)
pushi.e 1
cmp.i.v GT
bf [39]

:[38]
push.v self.armrot_r
push.d 0.7
mul.d.v
pop.v.v self.armrot_r
b [40]

:[39]
pushi.e 0
pop.v.i self.armrot_r

:[40]
push.v self.torsorot
call.i abs(argc=1)
pushi.e 1
cmp.i.v GT
bf [42]

:[41]
push.v self.torsorot
push.d 0.7
mul.d.v
pop.v.v self.torsorot
b [43]

:[42]
pushi.e 0
pop.v.i self.torsorot

:[43]
push.v self.headrot
call.i abs(argc=1)
pushi.e 1
cmp.i.v GT
bf [45]

:[44]
push.v self.headrot
push.d 0.7
mul.d.v
pop.v.v self.headrot
b [46]

:[45]
pushi.e 0
pop.v.i self.headrot

:[46]
push.v self.altimer
pushi.e 1
add.i.v
pop.v.v self.altimer
push.v self.xxx
push.v self.xxoff
add.v.v
pop.v.v self.x
push.v self.yyy
push.v self.yyoff
add.v.v
pop.v.v self.y
push.v self.altimer
pushi.e 15
cmp.i.v GT
bf [48]

:[47]
pushi.e 1
pop.v.i self.image_alpha
pushi.e 3
pop.v.i self.aligncon
pushi.e 0
pop.v.i self.aimage

:[48]
push.v self.aligncon
pushi.e 4
cmp.i.v EQ
bf [50]

:[49]
pushi.e 0
pop.v.i self.heady
pushi.e 0
pop.v.i self.headx
pushi.e 0
pop.v.i self.specialarm
pushi.e 0
pop.v.i self.arm_alpha
pushi.e 0
pop.v.i self.relx
pushi.e 0
pop.v.i self.rely
pushi.e 0
pop.v.i self.xxoff
pushi.e 0
pop.v.i self.yyoff
pushi.e 0
pop.v.i self.armrot_l
pushi.e 0
pop.v.i self.armrot_r
pushi.e 0
pop.v.i self.torsorot
pushi.e 0
pop.v.i self.headrot
pushi.e 0
pop.v.i self.aligncon
pushi.e 0
pop.v.i self.siner
pushi.e 1
pop.v.i self.aimage
pushi.e 1
pop.v.i self.normal
pushi.e 0
pop.v.i self.altimer

:[50]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [76]

:[51]
pushi.e 83
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [53]

:[52]
push.v self.aligncon
pushi.e 3
cmp.i.v EQ
b [54]

:[53]
push.e 0

:[54]
bf [56]

:[55]
pushi.e 0
pop.v.i self.type
pushi.e 1
pop.v.i self.starcon

:[56]
pushi.e 66
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [58]

:[57]
push.v self.aligncon
pushi.e 3
cmp.i.v EQ
b [59]

:[58]
push.e 0

:[59]
bf [61]

:[60]
pushi.e 1
pop.v.i self.type
pushi.e 1
pop.v.i self.starcon

:[61]
pushi.e 87
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [63]

:[62]
push.v self.aligncon
pushi.e 3
cmp.i.v EQ
b [64]

:[63]
push.e 0

:[64]
bf [66]

:[65]
pushi.e 1
pop.v.i self.type
pushi.e 1
pop.v.i self.bladecon

:[66]
pushi.e 71
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [68]

:[67]
push.v self.aligncon
pushi.e 3
cmp.i.v EQ
b [69]

:[68]
push.e 0

:[69]
bf [71]

:[70]
pushi.e 1
pop.v.i self.type
pushi.e 1
pop.v.i self.guncon

:[71]
pushi.e 72
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [73]

:[72]
push.v self.aligncon
pushi.e 3
cmp.i.v EQ
b [74]

:[73]
push.e 0

:[74]
bf [76]

:[75]
pushi.e 1
pop.v.i self.type
pushi.e 1
pop.v.i self.gonercon

:[76]
push.v self.starcon
pushi.e 0
cmp.i.v GT
bf [112]

:[77]
push.v self.starcon
pushi.e 1
cmp.i.v EQ
bf [79]

:[78]
pushi.e 2
pop.v.i global.faceemotion
pushi.e 1
conv.i.v
push.d 0.8
conv.d.v
push.v self.powersfx
call.i caster_play(argc=3)
popz.v
pushi.e 20
pop.v.i self.armraise
pushi.e 2
pop.v.i self.starcon
pushi.e 1
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[79]
push.v self.starcon
pushi.e 3
cmp.i.v EQ
bf [81]

:[80]
pushi.e 4
pop.v.i self.starcon
pushi.e 1
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[81]
push.v self.starcon
pushi.e 5
cmp.i.v EQ
bf [84]

:[82]
push.v self.armrot_l
push.v self.armraise
sub.v.v
pop.v.v self.armrot_l
push.v self.armrot_r
push.v self.armraise
add.v.v
pop.v.v self.armrot_r
push.v self.armraise
pushi.e 2
sub.i.v
pop.v.v self.armraise
push.v self.armraise
pushi.e 0
cmp.i.v LTE
bf [84]

:[83]
pushi.e 6
pop.v.i self.starcon
pushi.e 20
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[84]
push.v self.starcon
pushi.e 5
cmp.i.v GTE
bf [86]

:[85]
push.v self.starcon
pushi.e 9
cmp.i.v LTE
b [87]

:[86]
push.e 0

:[87]
bf [93]

:[88]
push.v self.x
pushi.e 28
sub.i.v
pop.v.v self.a_xx1
push.v self.y
pushi.e 38
add.i.v
push.v self.rely
push.d 1.2
mul.d.v
add.v.v
pop.v.v self.a_yy1
push.v self.armrot_l
pushi.e 90
sub.i.v
pushi.e 15
sub.i.v
pushi.e 90
conv.i.v
call.i lengthdir_x(argc=2)
pop.v.v self.a_x1_add
push.v self.armrot_l
pushi.e 90
sub.i.v
pushi.e 15
sub.i.v
pushi.e 90
conv.i.v
call.i lengthdir_y(argc=2)
pop.v.v self.a_y1_add
pushi.e 2
dup.i 0
push.i 0
cmp.i.i LTE
bt [90]

:[89]
pushi.e 573
conv.i.v
push.v self.a_yy1
push.v self.a_y1_add
add.v.v
push.v self.a_xx1
push.v self.a_x1_add
add.v.v
call.i instance_create(argc=3)
pop.v.v self.hl
push.v self.depth
pushi.e 1
add.i.v
push.v self.hl
conv.v.i
pop.v.v [stacktop]self.depth
push.v self.type
push.v self.hl
conv.v.i
pop.v.v [stacktop]self.type
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [89]

:[90]
popz.i
push.v self.x
pushi.e 30
add.i.v
pop.v.v self.a_xx2
push.v self.y
pushi.e 38
add.i.v
push.v self.rely
push.d 1.2
mul.d.v
add.v.v
pop.v.v self.a_yy2
push.v self.armrot_r
pushi.e 90
sub.i.v
pushi.e 15
add.i.v
pushi.e 90
conv.i.v
call.i lengthdir_x(argc=2)
pop.v.v self.a_x2_add
push.v self.armrot_r
pushi.e 90
sub.i.v
pushi.e 15
add.i.v
pushi.e 90
conv.i.v
call.i lengthdir_y(argc=2)
pop.v.v self.a_y2_add
pushi.e 2
dup.i 0
push.i 0
cmp.i.i LTE
bt [92]

:[91]
pushi.e 573
conv.i.v
push.v self.a_yy2
push.v self.a_y2_add
add.v.v
push.v self.a_xx2
push.v self.a_x2_add
add.v.v
call.i instance_create(argc=3)
pop.v.v self.hl
push.v self.depth
pushi.e 1
add.i.v
push.v self.hl
conv.v.i
pop.v.v [stacktop]self.depth
push.v self.type
push.v self.hl
conv.v.i
pop.v.v [stacktop]self.type
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [91]

:[92]
popz.i

:[93]
push.v self.starcon
pushi.e 7
cmp.i.v EQ
bf [95]

:[94]
pushi.e 8
pop.v.i self.starcon
pushi.e 15
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[95]
push.v self.starcon
pushi.e 9
cmp.i.v EQ
bf [97]

:[96]
pushi.e 12
pop.v.i self.starcon

:[97]
push.v self.starcon
pushi.e 12
cmp.i.v EQ
bf [104]

:[98]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [100]

:[99]
pushi.e 582
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen

:[100]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [102]

:[101]
pushi.e 588
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen

:[102]
push.v self.h_mode
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.h_mode
pushi.e 13
pop.v.i self.starcon
pushi.e 300
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [104]

:[103]
pushi.e 180
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[104]
push.v self.starcon
pushi.e 13
cmp.i.v EQ
bf [107]

:[105]
push.v self.image_alpha
pushi.e 0
cmp.i.v GT
bf [107]

:[106]
push.v self.image_alpha
push.d 0.05
sub.d.v
pop.v.v self.image_alpha

:[107]
push.v self.starcon
pushi.e 14
cmp.i.v EQ
bf [112]

:[108]
pushi.e 0
pop.v.i global.faceemotion
push.v self.gen
conv.v.i
pushenv [110]

:[109]
call.i instance_destroy(argc=0)
popz.v

:[110]
popenv [109]
pushi.e 0
pop.v.i self.armrot_l
pushi.e 0
pop.v.i self.armrot_r
push.v self.image_alpha
push.d 0.05
add.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 1
cmp.i.v GTE
bf [112]

:[111]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 4
pop.v.i self.aligncon
pushi.e 0
pop.v.i self.starcon

:[112]
push.v self.bladecon
pushi.e 0
cmp.i.v GT
bf [127]

:[113]
push.v self.bladecon
pushi.e 1
cmp.i.v EQ
bf [115]

:[114]
pushi.e 20
pop.v.i self.armraise
pushi.e 2
pop.v.i self.bladecon
pushi.e 1
pop.v.i self.specialarm
pushi.e 30
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm

:[115]
push.v self.bladecon
pushi.e 2
cmp.i.v EQ
bf [118]

:[116]
push.v self.arm_alpha
pushi.e 0
cmp.i.v GT
bf [118]

:[117]
push.v self.arm_alpha
push.d 0.05
sub.d.v
pop.v.v self.arm_alpha

:[118]
push.v self.bladecon
pushi.e 3
cmp.i.v EQ
bf [120]

:[119]
pushi.e 591
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.gen
push.v self.h_mode
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.h_mode
pushi.e 4
pop.v.i self.bladecon
pushi.e 30
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm

:[120]
push.v self.bladecon
pushi.e 10
cmp.i.v EQ
bf [122]

:[121]
pushi.e 0
pop.v.i self.heady
pushi.e 0
pop.v.i self.headrot
pushi.e 1
pop.v.i self.specialarm
pushi.e 0
pop.v.i self.arm_alpha
pushi.e 11
pop.v.i self.bladecon

:[122]
push.v self.bladecon
pushi.e 11
cmp.i.v EQ
bf [124]

:[123]
pushi.e 0
pop.v.i self.image_alpha
pushi.e 0
pop.v.i self.heady
pushi.e 0
pop.v.i self.headx
pushi.e 0
pop.v.i self.specialarm
pushi.e 1
pop.v.i self.arm_alpha
pushi.e 320
pop.v.i self.x
pushi.e 50
pop.v.i self.y
pushi.e 0
pop.v.i self.relx
pushi.e 0
pop.v.i self.rely
pushi.e 0
pop.v.i self.xxoff
pushi.e 0
pop.v.i self.yyoff
pushi.e 0
pop.v.i self.armrot_l
pushi.e 0
pop.v.i self.armrot_r
pushi.e 0
pop.v.i self.torsorot
pushi.e 0
pop.v.i self.headrot
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.altimer
pushi.e 12
pop.v.i self.bladecon

:[124]
push.v self.bladecon
pushi.e 12
cmp.i.v EQ
bf [127]

:[125]
pushi.e 0
pop.v.i self.siner
push.v self.image_alpha
push.d 0.05
add.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 1
cmp.i.v GTE
bf [127]

:[126]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 0
pop.v.i self.specialarm
pushi.e 4
pop.v.i self.aligncon
pushi.e 0
pop.v.i self.bladecon

:[127]
push.v self.guncon
pushi.e 0
cmp.i.v GT
bf [142]

:[128]
push.v self.guncon
pushi.e 1
cmp.i.v EQ
bf [130]

:[129]
pushi.e 1
pop.v.i self.arm_alpha
pushi.e 2
pop.v.i self.guncon
pushi.e 2
pop.v.i self.specialarm
pushi.e 20
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm

:[130]
push.v self.guncon
pushi.e 2
cmp.i.v EQ
bf [133]

:[131]
push.v self.arm_alpha
pushi.e 0
cmp.i.v GT
bf [133]

:[132]
push.v self.arm_alpha
push.d 0.05
sub.d.v
pop.v.v self.arm_alpha

:[133]
push.v self.guncon
pushi.e 3
cmp.i.v EQ
bf [135]

:[134]
pushi.e 585
conv.i.v
push.v self.y
pushi.e 15
add.i.v
push.v self.x
pushi.e 70
add.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
push.v self.h_mode
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.h_mode
pushi.e 4
pop.v.i self.guncon
pushi.e 30
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm

:[135]
push.v self.guncon
pushi.e 7
cmp.i.v EQ
bf [138]

:[136]
push.v self.arm_alpha
push.d 0.1
add.d.v
pop.v.v self.arm_alpha
push.v self.arm_alpha
pushi.e 1
cmp.i.v GTE
bf [138]

:[137]
pushi.e 8
pop.v.i self.guncon

:[138]
push.v self.guncon
pushi.e 8
cmp.i.v EQ
bf [140]

:[139]
pushi.e 1
pop.v.i self.aligncon
pushi.e 9
pop.v.i self.guncon
pushi.e 10
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm

:[140]
push.v self.guncon
pushi.e 10
cmp.i.v EQ
bf [142]

:[141]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 4
pop.v.i self.aligncon
pushi.e 0
pop.v.i self.guncon

:[142]
push.v self.gonercon
pushi.e 0
cmp.i.v GT
bf [164]

:[143]
push.v self.gonercon
pushi.e 1
cmp.i.v EQ
bf [145]

:[144]
pushi.e 1
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 2
pop.v.i self.gonercon
pushi.e 1
pushi.e -1
pushi.e 8
pop.v.i [array]self.alarm

:[145]
push.v self.gonercon
pushi.e 3
cmp.i.v EQ
bf [147]

:[146]
pushi.e 4
pop.v.i self.gonercon
pushi.e 30
pushi.e -1
pushi.e 8
pop.v.i [array]self.alarm

:[147]
push.v self.gonercon
pushi.e 5
cmp.i.v EQ
bf [151]

:[148]
pushi.e 744
pushenv [150]

:[149]
pushi.e 1
pop.v.i self.ignore_border

:[150]
popenv [149]
pushi.e 594
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ws
pushi.e 6
pop.v.i self.gonercon
pushi.e 40
pushi.e -1
pushi.e 8
pop.v.i [array]self.alarm

:[151]
push.v self.gonercon
pushi.e 7
cmp.i.v EQ
bf [153]

:[152]
pushi.e 596
conv.i.v
pushi.e 16
conv.i.v
pushi.e 176
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.hg
pushi.e 8
pop.v.i self.gonercon

:[153]
push.v self.gonercon
pushi.e 10
cmp.i.v EQ
bf [159]

:[154]
pushi.e 2
push.v self.ws
conv.v.i
pop.v.i [stacktop]self.con
pushi.e 0
pop.v.i self.shrug
pushi.e 1
pop.v.i self.specialnormal
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 595
pushenv [156]

:[155]
call.i instance_destroy(argc=0)
popz.v

:[156]
popenv [155]
push.d 0.8
conv.d.v
push.d 0.9
conv.d.v
push.v self.cr
call.i caster_play(argc=3)
popz.v
pushi.e 1
pop.v.i 744.image_alpha
pushi.e 0
pop.v.i self.image_alpha
pushi.e 744
pushenv [158]

:[157]
pushi.e 0
pop.v.i self.ignore_border
pushi.e 312
pop.v.i self.x
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
add.v.v
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.y

:[158]
popenv [157]
pushi.e 11
pop.v.i self.gonercon

:[159]
push.v self.gonercon
pushi.e 11
cmp.i.v EQ
bf [162]

:[160]
pushi.e 0
pop.v.i 744.depth
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 1
cmp.i.v GTE
bf [162]

:[161]
pushi.e 1
pop.v.i self.image_alpha
pushi.e 12
pop.v.i self.gonercon
pushi.e 30
pushi.e -1
pushi.e 8
pop.v.i [array]self.alarm

:[162]
push.v self.gonercon
pushi.e 13
cmp.i.v EQ
bf [164]

:[163]
pushi.e 5
pop.v.i global.mnfight
pushi.e 0
pop.v.i self.gonercon

:[164]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [175]

:[165]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [170]

:[166]
pushi.e 0
pop.v.i self.s_s
push.v self.aligncon
pushi.e 0
cmp.i.v EQ
bf [168]

:[167]
pushi.e 1
pop.v.i self.aligncon

:[168]
push.v self.aligncon
pushi.e 3
cmp.i.v EQ
bf [170]

:[169]
pushi.e 4
pop.v.i self.aligncon

:[170]
pushi.e 2
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [175]

:[171]
pushi.e 1
pop.v.i self.s_s
push.v self.aligncon
pushi.e 0
cmp.i.v EQ
bf [173]

:[172]
pushi.e 1
pop.v.i self.aligncon

:[173]
push.v self.aligncon
pushi.e 3
cmp.i.v EQ
bf [175]

:[174]
pushi.e 4
pop.v.i self.aligncon

:[175]
push.v self.specialnormal
pushi.e 1
cmp.i.v EQ
bf [177]

:[176]
push.v self.sn
pushi.e 1
add.i.v
pop.v.v self.sn
pushi.e 50
push.v self.sn
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
add.v.i
pop.v.v self.y

:[177]
push.v self.specialnormal
pushi.e 0
cmp.i.v EQ
bf [180]

:[178]
pushglb.v global.mnfight
pushi.e 0
cmp.i.v EQ
bf [180]

:[179]
pushglb.v global.myfight
pushi.e 0
cmp.i.v EQ
b [181]

:[180]
push.e 0

:[181]
bf [207]

:[182]
pushglb.v global.bmenuno
pushi.e 1
cmp.i.v EQ
bt [184]

:[183]
pushglb.v global.bmenuno
pushi.e 2
cmp.i.v EQ
b [185]

:[184]
push.e 1

:[185]
bf [207]

:[186]
push.s "monstername_99"@5172
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v local.mon_name
push.s " "@18
pushloc.v local.mon_name
add.v.s
push.s " "@18
add.s.v
pop.v.v self.fullphrase
push.v self.fullphrase
call.i string_length(argc=1)
pop.v.v self.len
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [188]

:[187]
pushloc.v local.mon_name
call.i string_length(argc=1)
push.s "　"@3340
conv.s.v
call.i string_repeat(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstername
b [189]

:[188]
pushi.e 2
pushloc.v local.mon_name
call.i string_length(argc=1)
add.v.i
push.s " "@18
conv.s.v
call.i string_repeat(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]global.monstername

:[189]
pushi.e 787
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [191]

:[190]
push.s "battle_name_header"@28
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
push.v [array]global.monstername
add.v.v
pop.v.v 787.originalstring

:[191]
push.v self.n_siner
pushi.e 1
add.i.v
pop.v.v self.n_siner
pushi.e 1
conv.i.v
call.i scr_setfont(argc=1)
popz.v
pushi.e 110
pop.v.i local.textx
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [193]

:[192]
pushi.e 104
pop.v.i local.textx

:[193]
pushi.e 0
pop.v.i self.i

:[194]
push.v self.i
push.v self.len
cmp.v.v LT
bf [207]

:[195]
pushi.e 255
conv.i.v
pushi.e 140
conv.i.v
push.v self.siner
pushi.e 8
mul.i.v
push.v self.i
pushi.e 8
mul.i.v
add.v.v
call.i make_color_hsv(argc=3)
pop.v.v self.tcolor
push.v self.tcolor
call.i draw_set_color(argc=1)
popz.v
push.v self.i
push.v self.fullphrase
call.i string_char_at(argc=2)
pop.v.v self.letter
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.letter
pushi.e 270
push.v self.siner
push.v self.i
add.v.v
pushi.e 5
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 4
mul.i.v
add.v.i
pushloc.v local.textx
push.v self.siner
push.v self.i
add.v.v
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 8
mul.i.v
add.v.v
call.i draw_text_transformed(argc=6)
popz.v
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [205]

:[196]
push.v self.letter
call.i ord(argc=1)
pop.v.v local.ch
pushloc.v local.ch
pushi.e 32
cmp.i.v EQ
bt [198]

:[197]
pushloc.v local.ch
push.i 65377
cmp.i.v GTE
b [199]

:[198]
push.e 1

:[199]
bf [201]

:[200]
push.v local.textx
pushi.e 13
add.i.v
pop.v.v local.textx
b [204]

:[201]
pushloc.v local.ch
pushi.e 8192
cmp.i.v LT
bf [203]

:[202]
push.v local.textx
pushi.e 16
add.i.v
pop.v.v local.textx
b [204]

:[203]
push.v local.textx
pushi.e 26
add.i.v
pop.v.v local.textx

:[204]
b [206]

:[205]
push.v local.textx
pushi.e 16
add.i.v
pop.v.v local.textx

:[206]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [194]

:[207]
pushi.e -5
pushi.e 20
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [209]

:[208]
pushi.e 1
pop.v.i self.shrug
b [end]

:[209]
pushi.e 0
pop.v.i self.shrug

:[end]