.localvar 0 arguments
.localvar 1 linebreak 7086
.localvar 2 line1 7087
.localvar 3 line2 7088

:[0]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.image_angle
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [92]

:[1]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_yview
pushi.e 235
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
pushi.e 180
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
pushi.e 232
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
pushi.e 183
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
pushi.e -1
pop.v.i self.buffer
push.v self.everselect
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.s "obj_controlspear_89"@11076
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.mytext

:[3]
pushglb.v global.osflavor
pushi.e 4
cmp.i.v GTE
bf [5]

:[4]
push.s "obj_controlspear_90"@11078
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.mytext

:[5]
push.v self.everselect
pushi.e 0
cmp.i.v NEQ
bf [7]

:[6]
push.s " "@18
pop.v.s self.mytext

:[7]
push.v self.everselect
pushi.e 1
cmp.i.v GT
bf [9]

:[8]
push.v self.everselect
pushi.e 1
sub.i.v
pop.v.v self.everselect

:[9]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [16]

:[10]
push.v 1575.left
conv.v.b
bf [13]

:[11]
push.v self.image_angle
pushi.e 170
cmp.i.v LT
bf [13]

:[12]
push.v self.image_angle
push.d 1.5
add.d.v
pop.v.v self.image_angle

:[13]
push.v 1575.right
conv.v.b
bf [16]

:[14]
push.v self.image_angle
pushi.e 10
cmp.i.v GT
bf [16]

:[15]
push.v self.image_angle
push.d 1.5
sub.d.v
pop.v.v self.image_angle

:[16]
pushi.e 0
pop.v.i self.select
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.image_angle
pop.v.v self.getdir
push.v self.getdir
pushi.e 300
conv.i.v
call.i lengthdir_x(argc=2)
pop.v.v self.xdir
push.v self.getdir
pushi.e 300
conv.i.v
call.i lengthdir_y(argc=2)
pop.v.v self.ydir
pushi.e -4
pop.v.i self.col
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.undyne
push.v self.y
push.v self.ydir
add.v.v
push.v self.x
push.v self.xdir
add.v.v
push.v self.y
push.v self.x
call.i collision_line(argc=7)
pop.v.v self.col2
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.teabox
push.v self.y
push.v self.ydir
add.v.v
push.v self.x
push.v self.xdir
add.v.v
push.v self.y
push.v self.x
call.i collision_line(argc=7)
conv.v.b
bf [21]

:[17]
push.v self.everselect
pushi.e 2
cmp.i.v LT
bf [20]

:[18]
pushi.e 115
conv.i.v
call.i snd_isplaying(argc=1)
conv.v.b
not.b
bf [20]

:[19]
pushi.e 115
conv.i.v
call.i snd_play(argc=1)
popz.v

:[20]
pushi.e 3
pop.v.i self.everselect
push.v self.teabox
pop.v.v self.select
push.s "obj_controlspear_132"@11080
conv.s.v
call.i scr_gettext(argc=1)
push.s "#"@6300
add.s.v
push.s "obj_controlspear_select"@11094
conv.s.v
call.i scr_gettext(argc=1)
add.v.v
pop.v.v self.mytext

:[21]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.hotchocolate
push.v self.y
push.v self.ydir
add.v.v
push.v self.x
push.v self.xdir
add.v.v
push.v self.y
push.v self.x
call.i collision_line(argc=7)
conv.v.b
bf [26]

:[22]
push.v self.everselect
pushi.e 2
cmp.i.v LT
bf [25]

:[23]
pushi.e 115
conv.i.v
call.i snd_isplaying(argc=1)
conv.v.b
not.b
bf [25]

:[24]
pushi.e 115
conv.i.v
call.i snd_play(argc=1)
popz.v

:[25]
pushi.e 3
pop.v.i self.everselect
push.v self.hotchocolate
pop.v.v self.select
push.s "obj_controlspear_143"@11082
conv.s.v
call.i scr_gettext(argc=1)
push.s "#"@6300
add.s.v
push.s "obj_controlspear_select"@11094
conv.s.v
call.i scr_gettext(argc=1)
add.v.v
pop.v.v self.mytext

:[26]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.soda
push.v self.y
push.v self.ydir
add.v.v
push.v self.x
push.v self.xdir
add.v.v
push.v self.y
push.v self.x
call.i collision_line(argc=7)
conv.v.b
bf [31]

:[27]
push.v self.everselect
pushi.e 2
cmp.i.v LT
bf [30]

:[28]
pushi.e 115
conv.i.v
call.i snd_isplaying(argc=1)
conv.v.b
not.b
bf [30]

:[29]
pushi.e 115
conv.i.v
call.i snd_play(argc=1)
popz.v

:[30]
pushi.e 3
pop.v.i self.everselect
push.v self.soda
pop.v.v self.select
push.s "obj_controlspear_154"@11084
conv.s.v
call.i scr_gettext(argc=1)
push.s "#"@6300
add.s.v
push.s "obj_controlspear_select"@11094
conv.s.v
call.i scr_gettext(argc=1)
add.v.v
pop.v.v self.mytext

:[31]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.sugar
push.v self.y
push.v self.ydir
add.v.v
push.v self.x
push.v self.xdir
add.v.v
push.v self.y
push.v self.x
call.i collision_line(argc=7)
conv.v.b
bf [36]

:[32]
push.v self.everselect
pushi.e 2
cmp.i.v LT
bf [35]

:[33]
pushi.e 115
conv.i.v
call.i snd_isplaying(argc=1)
conv.v.b
not.b
bf [35]

:[34]
pushi.e 115
conv.i.v
call.i snd_play(argc=1)
popz.v

:[35]
pushi.e 3
pop.v.i self.everselect
push.v self.sugar
pop.v.v self.select
push.s "obj_controlspear_165"@11086
conv.s.v
call.i scr_gettext(argc=1)
push.s "#"@6300
add.s.v
push.s "obj_controlspear_select"@11094
conv.s.v
call.i scr_gettext(argc=1)
add.v.v
pop.v.v self.mytext

:[36]
push.v self.col2
push.v self.undyne
cmp.v.v EQ
bf [41]

:[37]
push.v self.everselect
pushi.e 2
cmp.i.v LT
bf [40]

:[38]
pushi.e 115
conv.i.v
call.i snd_isplaying(argc=1)
conv.v.b
not.b
bf [40]

:[39]
pushi.e 115
conv.i.v
call.i snd_play(argc=1)
popz.v

:[40]
pushi.e 3
pop.v.i self.everselect
push.v self.undyne
pop.v.v self.select
push.s "obj_controlspear_176"@11088
conv.s.v
call.i scr_gettext(argc=1)
push.s "#"@6300
add.s.v
push.s "obj_controlspear_select"@11094
conv.s.v
call.i scr_gettext(argc=1)
add.v.v
pop.v.v self.mytext

:[41]
push.v self.image_angle
pushi.e 53
cmp.i.v GTE
bf [43]

:[42]
push.v self.image_angle
pushi.e 66
cmp.i.v LTE
b [44]

:[43]
push.e 0

:[44]
bf [49]

:[45]
push.v self.everselect
pushi.e 2
cmp.i.v LT
bf [48]

:[46]
pushi.e 115
conv.i.v
call.i snd_isplaying(argc=1)
conv.v.b
not.b
bf [48]

:[47]
pushi.e 115
conv.i.v
call.i snd_play(argc=1)
popz.v

:[48]
pushi.e 9
pop.v.i self.select
pushi.e 3
pop.v.i self.everselect
push.s "obj_controlspear_192"@11090
conv.s.v
call.i scr_gettext(argc=1)
push.s "#"@6300
add.s.v
push.s "obj_controlspear_select"@11094
conv.s.v
call.i scr_gettext(argc=1)
add.v.v
pop.v.v self.mytext

:[49]
push.v self.image_angle
pushi.e 17
cmp.i.v GTE
bf [51]

:[50]
push.v self.image_angle
pushi.e 41
cmp.i.v LTE
b [52]

:[51]
push.e 0

:[52]
bf [57]

:[53]
push.v self.everselect
pushi.e 2
cmp.i.v LT
bf [56]

:[54]
pushi.e 115
conv.i.v
call.i snd_isplaying(argc=1)
conv.v.b
not.b
bf [56]

:[55]
pushi.e 115
conv.i.v
call.i snd_play(argc=1)
popz.v

:[56]
pushi.e 10
pop.v.i self.select
pushi.e 3
pop.v.i self.everselect
push.s "obj_controlspear_204"@11092
conv.s.v
call.i scr_gettext(argc=1)
push.s "#"@6300
add.s.v
push.s "obj_controlspear_select"@11094
conv.s.v
call.i scr_gettext(argc=1)
add.v.v
pop.v.v self.mytext

:[57]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [61]

:[58]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [61]

:[59]
push.v self.buffer
pushi.e 1
cmp.i.v LT
bf [61]

:[60]
push.v self.select
pushi.e 0
cmp.i.v NEQ
b [62]

:[61]
push.e 0

:[62]
bf [87]

:[63]
pushi.e 5
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.msc
pushi.e 0
pop.v.i global.faceemotion
pushi.e 2
pop.v.i self.active
push.v self.select
push.v self.undyne
cmp.v.v EQ
bf [67]

:[64]
pushi.e 1
pop.v.i global.faceemotion
push.s "obj_controlspear_218"@11096
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_controlspear_219"@11098
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.sel_undyne
pushi.e 0
cmp.i.v GT
bf [66]

:[65]
pushi.e 5
pop.v.i global.faceemotion
push.s "obj_controlspear_223"@11100
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[66]
push.v self.sel_undyne
pushi.e 1
add.i.v
pop.v.v self.sel_undyne

:[67]
push.v self.select
push.v self.sugar
cmp.v.v EQ
bf [71]

:[68]
pushi.e 9
pop.v.i global.faceemotion
pushi.e 708
pop.v.i global.msc
push.v self.sel_sugar
pushi.e 0
cmp.i.v GT
bf [70]

:[69]
pushi.e 0
pop.v.i global.msc
push.s "obj_controlspear_235"@11102
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[70]
push.v self.sel_sugar
pushi.e 1
add.i.v
pop.v.v self.sel_sugar

:[71]
push.v self.select
push.v self.soda
cmp.v.v EQ
bf [75]

:[72]
pushi.e 9
pop.v.i global.faceemotion
push.s "obj_controlspear_243"@11104
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_controlspear_244"@11106
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_controlspear_245"@11108
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_controlspear_246"@11110
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_controlspear_247"@11112
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_controlspear_248"@11114
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_controlspear_249"@11116
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.v self.sel_soda
pushi.e 0
cmp.i.v GT
bf [74]

:[73]
push.s "obj_controlspear_253"@11118
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[74]
push.v self.sel_soda
pushi.e 1
add.i.v
pop.v.v self.sel_soda

:[75]
push.v self.select
push.v self.hotchocolate
cmp.v.v EQ
bf [79]

:[76]
pushi.e 9
pop.v.i global.faceemotion
push.s "obj_controlspear_261"@11120
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_controlspear_262"@11122
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_controlspear_263"@11124
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_controlspear_264"@11126
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.v self.sel_hotchocolate
pushi.e 0
cmp.i.v GT
bf [78]

:[77]
push.s "obj_controlspear_268"@11128
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[78]
push.v self.sel_hotchocolate
pushi.e 1
add.i.v
pop.v.v self.sel_hotchocolate

:[79]
push.v self.select
push.v self.teabox
cmp.v.v EQ
bf [81]

:[80]
pushi.e 9
pop.v.i global.faceemotion
push.s "obj_controlspear_276"@11130
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 300
pop.v.i 1065.con
pushi.e 3
pop.v.i self.active

:[81]
push.v self.select
pushi.e 9
cmp.i.v EQ
bf [83]

:[82]
pushi.e 2
pop.v.i global.faceemotion
push.s "obj_controlspear_284"@11132
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_controlspear_285"@11134
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[83]
push.v self.select
pushi.e 10
cmp.i.v EQ
bf [85]

:[84]
pushi.e 3
pop.v.i global.faceemotion
push.s "obj_controlspear_291"@11136
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_controlspear_292"@11138
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[85]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gh
push.v self.select
push.v self.sugar
cmp.v.v NEQ
bf [87]

:[86]
pushi.e 1
push.v self.gh
conv.v.i
pop.v.i [stacktop]self.side

:[87]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.mytext
push.s "#"@6300
conv.s.v
call.i string_pos(argc=2)
pop.v.v local.linebreak
pushloc.v local.linebreak
pushi.e 0
cmp.i.v GT
bf [89]

:[88]
pushloc.v local.linebreak
pushi.e 1
sub.i.v
pushi.e 1
conv.i.v
push.v self.mytext
call.i string_copy(argc=3)
pop.v.v local.line1
push.v self.mytext
call.i string_length(argc=1)
pushloc.v local.linebreak
pushi.e 1
add.i.v
push.v self.mytext
call.i string_copy(argc=3)
pop.v.v local.line2
b [90]

:[89]
push.v self.mytext
pop.v.v local.line1
push.s ""@36
pop.v.s local.line2

:[90]
pushloc.v local.line1
pushi.e 192
conv.i.v
pushi.e 24
conv.i.v
call.i scr_drawtext_icons(argc=3)
popz.v
pushloc.v local.linebreak
pushi.e 0
cmp.i.v GT
bf [92]

:[91]
pushloc.v local.line2
pushi.e 210
conv.i.v
pushi.e 24
conv.i.v
call.i scr_drawtext_icons(argc=3)
popz.v

:[92]
push.v self.active
pushi.e 2
cmp.i.v EQ
bf [94]

:[93]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [95]

:[94]
push.e 0

:[95]
bf [end]

:[96]
pushi.e 1
pop.v.i self.active
pushi.e 12
pop.v.i self.buffer

:[end]