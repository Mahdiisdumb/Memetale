.localvar 0 arguments
.localvar 1 heart_xpos 8236
.localvar 2 heart_ypos 8237

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
bf [6]

:[5]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.con

:[6]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
pushi.e 0
pop.v.i global.facechoice
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_elevatorpanel_104"@12127
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

:[8]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [10]

:[9]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [128]

:[12]
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
bf [14]

:[13]
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
b [15]

:[14]
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

:[15]
pushi.e -5
pushi.e 398
push.v [array]global.flag
pushi.e 1
cmp.i.v NEQ
bf [17]

:[16]
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
b [18]

:[17]
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

:[18]
pushi.e -5
pushi.e 398
push.v [array]global.flag
pushi.e 2
cmp.i.v NEQ
bf [20]

:[19]
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
b [21]

:[20]
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

:[21]
push.v self.trigger
pushi.e 0
cmp.i.v GT
bf [25]

:[22]
pushi.e -5
pushi.e 398
push.v [array]global.flag
pushi.e 3
cmp.i.v NEQ
bf [24]

:[23]
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
b [25]

:[24]
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

:[25]
push.v self.trigger
pushi.e 0
cmp.i.v GT
bf [29]

:[26]
pushi.e -5
pushi.e 398
push.v [array]global.flag
pushi.e 4
cmp.i.v NEQ
bf [28]

:[27]
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
b [29]

:[28]
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

:[29]
push.v self.trigger
pushi.e 1
cmp.i.v GT
bf [33]

:[30]
pushi.e -5
pushi.e 398
push.v [array]global.flag
pushi.e 5
cmp.i.v NEQ
bf [32]

:[31]
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
b [33]

:[32]
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

:[33]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 30
add.i.v
pop.v.v local.heart_xpos
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 20
add.i.v
pop.v.v local.heart_ypos
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [35]

:[34]
push.v local.heart_ypos
pushi.e 2
sub.i.v
pop.v.v local.heart_ypos

:[35]
pushloc.v local.heart_ypos
pushi.e 20
push.v self.hearty
mul.v.i
add.v.v
pushloc.v local.heart_xpos
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
bf [134]

:[133]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 123
conv.i.v
call.i caster_play(argc=3)
popz.v
push.s "music/elevator.ogg"@2711
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.elev
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

:[134]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [136]

:[135]
pushi.e 12
pop.v.i self.con
pushi.e 110
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.elev
call.i caster_play(argc=3)
popz.v

:[136]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [142]

:[137]
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
bf [139]

:[138]
push.v self.intense
push.d 0.01
add.d.v
pop.v.v self.intense
b [141]

:[139]
push.v self.intense
pushi.e 0
cmp.i.v GT
bf [141]

:[140]
push.v self.intense
push.d 0.1
sub.d.v
pop.v.v self.intense

:[141]
push.v self.xx
push.v self.siner
push.d 1.3
div.d.v
call.i sin(argc=1)
push.v self.intense
mul.v.v
add.v.v
call.i floor(argc=1)
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
call.i floor(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.view_yview

:[142]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [144]

:[143]
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

:[144]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [146]

:[145]
pushi.e 0
pop.v.i global.facing
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 123
conv.i.v
call.i caster_play(argc=3)
popz.v
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.con
call.i scr_tempsave(argc=0)
popz.v
pushi.e 0
pop.v.i self.myinteract

:[146]
push.v self.rect
pushi.e 1
cmp.i.v EQ
bf [150]

:[147]
push.v self.rectaur
pushi.e 20
cmp.i.v LT
bf [149]

:[148]
push.v self.rectaur
pushi.e 2
add.i.v
pop.v.v self.rectaur

:[149]
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

:[150]
push.v self.rect
pushi.e 2
cmp.i.v EQ
bf [end]

:[151]
push.v self.rectaur
pushi.e 0
cmp.i.v GT
bf [153]

:[152]
push.v self.rectaur
pushi.e 2
sub.i.v
pop.v.v self.rectaur

:[153]
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

:[end]