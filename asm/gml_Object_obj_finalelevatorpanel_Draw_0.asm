.localvar 0 arguments

:[0]
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [8]

:[5]
pushi.e 1
pop.v.i global.interact
pushi.e 5
pop.v.i self.con
pushi.e -5
pushi.e 431
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1
pushi.e -5
pushi.e 431
pop.v.i [array]global.flag
b [8]

:[7]
pushi.e 0
pushi.e -5
pushi.e 431
pop.v.i [array]global.flag

:[8]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
pushi.e 0
pop.v.i global.facechoice
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_finalelevatorpanel_134"@12741
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 2
pop.v.i self.con
pushi.e 5
pop.v.i self.buffer

:[10]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [12]

:[11]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [128]

:[14]
push.v self.buffer
pushi.e 1
sub.i.v
pop.v.v self.buffer
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_yview
pushi.e 80
add.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 304
add.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_yview
pushi.e 5
add.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 16
add.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_yview
pushi.e 77
add.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 301
add.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_yview
pushi.e 8
add.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 19
add.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i scr_setfont(argc=1)
popz.v
pushi.e -5
pushi.e 398
push.v [array]global.flag
pushi.e 0
cmp.i.v NEQ
bf [16]

:[15]
push.s "elevator_l1f"@31736
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 15
add.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 50
add.i.v
call.i draw_text(argc=3)
popz.v
b [17]

:[16]
push.s "elevator_cancel"@31747
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 15
add.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 50
add.i.v
call.i draw_text(argc=3)
popz.v

:[17]
pushi.e -5
pushi.e 398
push.v [array]global.flag
pushi.e 1
cmp.i.v NEQ
bf [19]

:[18]
push.s "elevator_r1f"@31738
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 15
add.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 160
add.i.v
call.i draw_text(argc=3)
popz.v
b [20]

:[19]
push.s "elevator_cancel"@31747
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 15
add.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 160
add.i.v
call.i draw_text(argc=3)
popz.v

:[20]
pushi.e -5
pushi.e 398
push.v [array]global.flag
pushi.e 2
cmp.i.v NEQ
bf [22]

:[21]
push.s "elevator_r2f"@31742
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 35
add.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 160
add.i.v
call.i draw_text(argc=3)
popz.v
b [23]

:[22]
push.s "elevator_cancel"@31747
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 35
add.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 160
add.i.v
call.i draw_text(argc=3)
popz.v

:[23]
push.v self.trigger
pushi.e 0
cmp.i.v GT
bf [27]

:[24]
pushi.e -5
pushi.e 398
push.v [array]global.flag
pushi.e 3
cmp.i.v NEQ
bf [26]

:[25]
push.s "elevator_l2f"@31740
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 35
add.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 50
add.i.v
call.i draw_text(argc=3)
popz.v
b [27]

:[26]
push.s "elevator_cancel"@31747
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 35
add.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 50
add.i.v
call.i draw_text(argc=3)
popz.v

:[27]
push.v self.trigger
pushi.e 0
cmp.i.v GT
bf [31]

:[28]
pushi.e -5
pushi.e 398
push.v [array]global.flag
pushi.e 4
cmp.i.v NEQ
bf [30]

:[29]
push.s "elevator_l3f"@31744
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 55
add.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 50
add.i.v
call.i draw_text(argc=3)
popz.v
b [31]

:[30]
push.s "elevator_cancel"@31747
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 55
add.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 50
add.i.v
call.i draw_text(argc=3)
popz.v

:[31]
push.v self.trigger
pushi.e 1
cmp.i.v GT
bf [35]

:[32]
pushi.e -5
pushi.e 398
push.v [array]global.flag
pushi.e 5
cmp.i.v NEQ
bf [34]

:[33]
push.s "elevator_r3f"@31746
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 55
add.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 160
add.i.v
call.i draw_text(argc=3)
popz.v
b [35]

:[34]
push.s "elevator_cancel"@31747
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 55
add.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 160
add.i.v
call.i draw_text(argc=3)
popz.v

:[35]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 20
add.i.v
pushi.e 20
push.v self.hearty
mul.v.i
add.v.v
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 30
add.i.v
push.v self.heartx
pushi.e 110
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 61
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.buffer
pushi.e 0
cmp.i.v LT
bf [128]

:[36]
pushi.e 38
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [39]

:[37]
push.v self.hearty
pushi.e 0
cmp.i.v GT
bf [39]

:[38]
push.v self.hearty
pushi.e 1
sub.i.v
pop.v.v self.hearty

:[39]
pushi.e 40
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [60]

:[40]
push.v self.hearty
pushi.e 2
cmp.i.v LT
bf [60]

:[41]
push.v self.heartx
pushi.e 0
cmp.i.v EQ
bf [52]

:[42]
push.v self.hearty
pushi.e 1
cmp.i.v EQ
bf [44]

:[43]
push.v self.trigger
pushi.e 0
cmp.i.v GT
b [45]

:[44]
push.e 0

:[45]
bf [47]

:[46]
push.v self.hearty
pushi.e 1
add.i.v
pop.v.v self.hearty

:[47]
push.v self.hearty
pushi.e 0
cmp.i.v EQ
bf [49]

:[48]
push.v self.trigger
pushi.e 0
cmp.i.v GT
b [50]

:[49]
push.e 0

:[50]
bf [52]

:[51]
push.v self.hearty
pushi.e 1
add.i.v
pop.v.v self.hearty

:[52]
push.v self.heartx
pushi.e 1
cmp.i.v EQ
bf [60]

:[53]
push.v self.hearty
pushi.e 1
cmp.i.v EQ
bf [55]

:[54]
push.v self.trigger
pushi.e 1
cmp.i.v GT
b [56]

:[55]
push.e 0

:[56]
bf [58]

:[57]
push.v self.hearty
pushi.e 1
add.i.v
pop.v.v self.hearty

:[58]
push.v self.hearty
pushi.e 0
cmp.i.v EQ
bf [60]

:[59]
push.v self.hearty
pushi.e 1
add.i.v
pop.v.v self.hearty

:[60]
pushi.e 39
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [71]

:[61]
push.v self.heartx
pushi.e 0
cmp.i.v EQ
bf [71]

:[62]
push.v self.hearty
pushi.e 0
cmp.i.v EQ
bf [64]

:[63]
push.v self.heartx
pushi.e 1
add.i.v
pop.v.v self.heartx

:[64]
push.v self.hearty
pushi.e 1
cmp.i.v EQ
bf [66]

:[65]
push.v self.heartx
pushi.e 1
add.i.v
pop.v.v self.heartx

:[66]
push.v self.hearty
pushi.e 2
cmp.i.v EQ
bf [68]

:[67]
push.v self.trigger
pushi.e 1
cmp.i.v GT
b [69]

:[68]
push.e 0

:[69]
bf [71]

:[70]
push.v self.heartx
pushi.e 1
add.i.v
pop.v.v self.heartx

:[71]
pushi.e 37
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [85]

:[72]
push.v self.heartx
pushi.e 1
cmp.i.v EQ
bf [85]

:[73]
push.v self.hearty
pushi.e 0
cmp.i.v EQ
bf [75]

:[74]
push.v self.heartx
pushi.e 1
sub.i.v
pop.v.v self.heartx

:[75]
push.v self.hearty
pushi.e 1
cmp.i.v EQ
bf [77]

:[76]
push.v self.trigger
pushi.e 0
cmp.i.v GT
b [78]

:[77]
push.e 0

:[78]
bf [80]

:[79]
push.v self.heartx
pushi.e 1
sub.i.v
pop.v.v self.heartx

:[80]
push.v self.hearty
pushi.e 2
cmp.i.v EQ
bf [82]

:[81]
push.v self.trigger
pushi.e 1
cmp.i.v GT
b [83]

:[82]
push.e 0

:[83]
bf [85]

:[84]
push.v self.heartx
pushi.e 1
sub.i.v
pop.v.v self.heartx

:[85]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [128]

:[86]
pushi.e 5
pop.v.i self.con
push.v self.heartx
pushi.e 0
cmp.i.v EQ
bf [88]

:[87]
push.v self.hearty
pushi.e 0
cmp.i.v EQ
b [89]

:[88]
push.e 0

:[89]
bf [93]

:[90]
pushi.e -5
pushi.e 398
push.v [array]global.flag
pushi.e 0
cmp.i.v NEQ
bf [92]

:[91]
pushi.e 0
pushi.e -5
pushi.e 398
pop.v.i [array]global.flag
b [93]

:[92]
pushi.e 15
pop.v.i self.con

:[93]
push.v self.heartx
pushi.e 1
cmp.i.v EQ
bf [95]

:[94]
push.v self.hearty
pushi.e 0
cmp.i.v EQ
b [96]

:[95]
push.e 0

:[96]
bf [100]

:[97]
pushi.e -5
pushi.e 398
push.v [array]global.flag
pushi.e 1
cmp.i.v NEQ
bf [99]

:[98]
pushi.e 1
pushi.e -5
pushi.e 398
pop.v.i [array]global.flag
b [100]

:[99]
pushi.e 15
pop.v.i self.con

:[100]
push.v self.heartx
pushi.e 1
cmp.i.v EQ
bf [102]

:[101]
push.v self.hearty
pushi.e 1
cmp.i.v EQ
b [103]

:[102]
push.e 0

:[103]
bf [107]

:[104]
pushi.e -5
pushi.e 398
push.v [array]global.flag
pushi.e 2
cmp.i.v NEQ
bf [106]

:[105]
pushi.e 2
pushi.e -5
pushi.e 398
pop.v.i [array]global.flag
b [107]

:[106]
pushi.e 15
pop.v.i self.con

:[107]
push.v self.heartx
pushi.e 0
cmp.i.v EQ
bf [109]

:[108]
push.v self.hearty
pushi.e 1
cmp.i.v EQ
b [110]

:[109]
push.e 0

:[110]
bf [114]

:[111]
pushi.e -5
pushi.e 398
push.v [array]global.flag
pushi.e 3
cmp.i.v NEQ
bf [113]

:[112]
pushi.e 3
pushi.e -5
pushi.e 398
pop.v.i [array]global.flag
b [114]

:[113]
pushi.e 15
pop.v.i self.con

:[114]
push.v self.heartx
pushi.e 0
cmp.i.v EQ
bf [116]

:[115]
push.v self.hearty
pushi.e 2
cmp.i.v EQ
b [117]

:[116]
push.e 0

:[117]
bf [121]

:[118]
pushi.e -5
pushi.e 398
push.v [array]global.flag
pushi.e 4
cmp.i.v NEQ
bf [120]

:[119]
pushi.e 4
pushi.e -5
pushi.e 398
pop.v.i [array]global.flag
b [121]

:[120]
pushi.e 15
pop.v.i self.con

:[121]
push.v self.heartx
pushi.e 1
cmp.i.v EQ
bf [123]

:[122]
push.v self.hearty
pushi.e 2
cmp.i.v EQ
b [124]

:[123]
push.e 0

:[124]
bf [128]

:[125]
pushi.e -5
pushi.e 398
push.v [array]global.flag
pushi.e 5
cmp.i.v NEQ
bf [127]

:[126]
pushi.e 5
pushi.e -5
pushi.e 398
pop.v.i [array]global.flag
b [128]

:[127]
pushi.e 15
pop.v.i self.con

:[128]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [130]

:[129]
pushi.e 109
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 6
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[130]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [132]

:[131]
pushi.e 1
pop.v.i self.rect
pushi.e 0
pop.v.i global.facing
pushi.e 28
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 8
pop.v.i self.con
pushi.e 11
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[132]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [138]

:[133]
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e -5
pushi.e 432
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [135]

:[134]
push.s "music/elevator_last.ogg"@2712
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.elev

:[135]
pushi.e -5
pushi.e 432
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [137]

:[136]
push.s "music/elevator.ogg"@2711
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.elev

:[137]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pop.v.v self.xx
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pop.v.v self.yy
pushi.e 0
pop.v.i self.siner
pushi.e 10
pop.v.i self.con
push.d 0.5
pop.v.d self.intense
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[138]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [145]

:[139]
pushi.e 12
pop.v.i self.con
pushi.e -5
pushi.e 432
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [141]

:[140]
pushi.e 560
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[141]
pushi.e -5
pushi.e 432
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [143]

:[142]
pushi.e 110
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[143]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.elev
call.i caster_play(argc=3)
popz.v
pushbltn.v self.room
pushi.e 242
cmp.i.v EQ
bf [145]

:[144]
pushi.e 12
pop.v.i self.con
pushi.e -1
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 85
pushi.e -1
pushi.e 8
pop.v.i [array]self.alarm

:[145]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [159]

:[146]
pushi.e 1
pop.v.i 1576.cutscene
pushi.e -4
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_object
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
pushi.e -1
pushi.e 4
push.v [array]self.alarm
pushi.e 20
cmp.i.v GT
bf [148]

:[147]
push.v self.intense
push.d 1.5
cmp.d.v LT
b [149]

:[148]
push.e 0

:[149]
bf [151]

:[150]
push.v self.intense
push.d 0.02
add.d.v
pop.v.v self.intense

:[151]
pushi.e -1
pushi.e 8
push.v [array]self.alarm
pushi.e 1
cmp.i.v GT
bf [153]

:[152]
push.v self.intense
push.d 0.6
cmp.d.v LT
b [154]

:[153]
push.e 0

:[154]
bf [156]

:[155]
push.v self.intense
push.d 0.01
add.d.v
pop.v.v self.intense
b [158]

:[156]
push.v self.intense
pushi.e 0
cmp.i.v GT
bf [158]

:[157]
push.v self.intense
push.d 0.1
sub.d.v
pop.v.v self.intense

:[158]
push.v self.xx
push.v self.siner
push.d 1.3
div.d.v
call.i sin(argc=1)
push.v self.intense
mul.v.v
add.v.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.view_xview
push.v self.yy
push.v self.siner
push.d 0.9
div.d.v
call.i sin(argc=1)
push.v self.intense
mul.v.v
add.v.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.view_yview

:[159]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [161]

:[160]
push.v self.xx
pushi.e -1
pushi.e 0
pop.v.v [array]self.view_xview
push.v self.yy
pushi.e -1
pushi.e 0
pop.v.v [array]self.view_yview
pushi.e 2
pop.v.i self.rect
pushi.e 14
pop.v.i self.con
pushi.e 28
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 11
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[161]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [163]

:[162]
pushi.e 1
pushi.e -5
pushi.e 432
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.facing
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.con
call.i scr_tempsave(argc=0)
popz.v
pushi.e 0
pop.v.i self.myinteract

:[163]
push.v self.rect
pushi.e 1
cmp.i.v EQ
bf [168]

:[164]
push.v self.rectaur
pushi.e 20
cmp.i.v LT
bf [166]

:[165]
push.v self.rectaur
pushi.e 2
add.i.v
pop.v.v self.rectaur

:[166]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 250
conv.i.v
pushi.e 140
push.v self.rectaur
add.v.i
pushi.e 180
conv.i.v
pushi.e 140
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 250
conv.i.v
pushi.e 180
push.v self.rectaur
sub.v.i
pushi.e 180
conv.i.v
pushi.e 180
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushbltn.v self.room
pushi.e 261
cmp.i.v EQ
bf [168]

:[167]
pushi.e 120
push.v self.rectaur
add.v.i
pushi.e 100
conv.i.v
pushi.e 120
conv.i.v
pushi.e 0
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 260
push.v self.rectaur
sub.v.i
pushi.e 100
conv.i.v
pushi.e 160
conv.i.v
pushi.e 0
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[168]
push.v self.rect
pushi.e 2
cmp.i.v EQ
bf [172]

:[169]
push.v self.rectaur
pushi.e 0
cmp.i.v GT
bf [171]

:[170]
push.v self.rectaur
pushi.e 2
sub.i.v
pop.v.v self.rectaur

:[171]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 250
conv.i.v
pushi.e 140
push.v self.rectaur
add.v.i
pushi.e 180
conv.i.v
pushi.e 140
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 250
conv.i.v
pushi.e 180
push.v self.rectaur
sub.v.i
pushi.e 180
conv.i.v
pushi.e 180
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[172]
push.v self.con
pushi.e 25
cmp.i.v EQ
bf [174]

:[173]
push.v self.elev
call.i caster_free(argc=1)
popz.v
push.v self.xx
pushi.e -1
pushi.e 0
pop.v.v [array]self.view_xview
push.v self.yy
pushi.e -1
pushi.e 0
pop.v.v [array]self.view_yview
pushi.e 26
pop.v.i self.con
pushi.e 45
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[174]
push.v self.con
pushi.e 27
cmp.i.v EQ
bf [end]

:[175]
pushi.e 1570
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 28
pop.v.i self.con

:[end]