.localvar 0 arguments
.localvar 1 namescale 10566
.localvar 2 infoscale 10567
.localvar 3 info_yofs 10568
.localvar 4 moldbygg_w_infoscale_x 10571
.localvar 5 tsunderplane_y_infoscale_x 10572
.localvar 6 pyrope_y_infoscale_x 10573
.localvar 7 pyrope_y_infoscale_y 10574
.localvar 8 ff_namescale_x 10575

:[0]
pushi.e 3
pop.v.i local.namescale
pushi.e 2
pop.v.i local.infoscale
pushi.e 0
pop.v.i local.info_yofs
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [2]

:[1]
pushi.e 2
pop.v.i local.namescale
push.d 1.5
pop.v.d local.infoscale
pushi.e 10
pop.v.i local.info_yofs

:[2]
pushglb.v global.cast_type
pushi.e 0
cmp.i.v EQ
bf [7]

:[3]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 3
cmp.i.v GT
bf [5]

:[4]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i scr_setfont(argc=1)
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
pushi.e -100
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 3
conv.i.v
pushi.e 3
conv.i.v
push.s "castroll_title"@31806
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 280
conv.i.v
pushi.e 320
conv.i.v
call.i scr_drawtext_centered_scaled(argc=5)
popz.v

:[5]
push.v self.timer
pushi.e 244
cmp.i.v GT
bf [7]

:[6]
pushi.e 1
pop.v.i self.active

:[7]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_yview
pushi.e 2
add.i.v
pop.i.v [array]self.view_yview

:[9]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [end]

:[10]
pushglb.v global.cast_type
pushi.e 0
cmp.i.v EQ
bf [40]

:[11]
pushi.e 0
pop.v.i self.g
pushi.e 2
conv.i.v
call.i scr_setfont(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.froggit
pop.v.v self.mon
pushloc.v local.namescale
pushloc.v local.namescale
push.s "castroll_name_froggit"@31826
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 70
sub.i.v
push.v self.col1_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "castroll_by_toby"@31808
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 30
sub.i.v
push.v self.col1_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e -5
pushi.e 130
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [13]

:[12]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_white_froggit"@31828
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 110
add.i.v
pushloc.v local.info_yofs
add.v.v
push.v self.col1_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
b [14]

:[13]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_yellow_froggit"@31830
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 110
add.i.v
pushloc.v local.info_yofs
add.v.v
push.v self.col1_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v

:[14]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.namescale
pushloc.v local.namescale
push.s "castroll_name_whimsun"@31832
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 530
conv.i.v
push.v self.col2_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "castroll_by_toby"@31808
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 570
conv.i.v
push.v self.col2_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e -5
pushi.e 131
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [16]

:[15]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_white_whimsun"@31834
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 710
pushloc.v local.info_yofs
add.v.i
push.v self.col2_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
b [17]

:[16]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_yellow_whimsun"@31836
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 710
pushloc.v local.info_yofs
add.v.i
push.v self.col2_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v

:[17]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.moldsmal
pop.v.v self.mon
pushloc.v local.namescale
pushloc.v local.namescale
push.s "castroll_name_moldsmal"@31838
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 70
sub.i.v
push.v self.col1_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "castroll_by_toby"@31808
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 30
sub.i.v
push.v self.col1_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e -5
pushi.e 132
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [19]

:[18]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_white_moldsmal"@31840
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 110
add.i.v
pushloc.v local.info_yofs
add.v.v
push.v self.col1_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
b [20]

:[19]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_yellow_moldsmal"@31842
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 110
add.i.v
pushloc.v local.info_yofs
add.v.v
push.v self.col1_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v

:[20]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.loox
pop.v.v self.mon
pushloc.v local.namescale
pushloc.v local.namescale
push.s "castroll_name_loox"@31844
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 70
sub.i.v
push.v self.col2_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "castroll_by_Mahdiisdumb"@31814
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 30
sub.i.v
push.v self.col2_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e -5
pushi.e 133
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [22]

:[21]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_white_loox"@31846
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 110
add.i.v
pushloc.v local.info_yofs
add.v.v
push.v self.col2_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
b [23]

:[22]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_yellow_loox"@31848
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 110
add.i.v
pushloc.v local.info_yofs
add.v.v
push.v self.col2_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v

:[23]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.vegetoid
pop.v.v self.mon
pushloc.v local.namescale
pushloc.v local.namescale
push.s "castroll_name_vegetoid"@31850
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 70
sub.i.v
push.v self.col1_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "castroll_by_Luke_and_Mahdiisdumb"@31812
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 30
sub.i.v
push.v self.col1_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e -5
pushi.e 134
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [25]

:[24]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_white_vegetoid"@31852
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 110
add.i.v
pushloc.v local.info_yofs
add.v.v
push.v self.col1_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
b [26]

:[25]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_yellow_vegetoid"@31854
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 110
add.i.v
pushloc.v local.info_yofs
add.v.v
push.v self.col1_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v

:[26]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.migosp
pop.v.v self.mon
pushloc.v local.namescale
pushloc.v local.namescale
push.s "castroll_name_migosp"@31856
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 70
sub.i.v
push.v self.col2_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "castroll_by_toby"@31808
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 30
sub.i.v
push.v self.col2_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e -5
pushi.e 135
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [28]

:[27]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_white_migosp"@31858
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 110
add.i.v
pushloc.v local.info_yofs
add.v.v
push.v self.col2_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
b [29]

:[28]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_yellow_migosp"@31860
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 110
add.i.v
pushloc.v local.info_yofs
add.v.v
push.v self.col2_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v

:[29]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.napstablook
pop.v.v self.mon
pushloc.v local.namescale
pushloc.v local.namescale
push.s "castroll_name_napstablook"@31862
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 70
sub.i.v
pushi.e 330
conv.i.v
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "castroll_by_toby"@31808
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 30
sub.i.v
pushi.e 330
conv.i.v
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e -5
pushi.e 36
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [31]

:[30]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_white_napstablook"@31864
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 210
add.i.v
pushloc.v local.info_yofs
add.v.v
pushi.e 330
conv.i.v
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
b [32]

:[31]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_yellow_napstablook"@31866
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 210
add.i.v
pushloc.v local.info_yofs
add.v.v
pushi.e 330
conv.i.v
call.i scr_drawtext_centered_scaled(argc=5)
popz.v

:[32]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 1520
cmp.i.v GT
bf [34]

:[33]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 1540
cmp.i.v LT
b [35]

:[34]
push.e 0

:[35]
bf [37]

:[36]
pushi.e 0
pop.v.i self.exper

:[37]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 1540
cmp.i.v GT
bf [40]

:[38]
push.v self.exper
push.d 0.2
add.d.v
pop.v.v self.exper
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_yview
push.v self.exper
add.v.v
pop.i.v [array]self.view_yview
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
push.v self.napstablook
conv.v.i
push.v [stacktop]self.y
pushi.e 305
add.i.v
cmp.v.v GT
bf [40]

:[39]
pushi.e 1
pop.v.i self.do_room_goto
pushi.e 279
pop.v.i self.do_room_goto_target

:[40]
pushglb.v global.cast_type
pushi.e 1
cmp.i.v EQ
bf [70]

:[41]
pushi.e 0
pop.v.i self.g
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i scr_setfont(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.snowdrake
pop.v.v self.mon
pushloc.v local.namescale
pushloc.v local.namescale
push.s "castroll_name_snowdrake"@31868
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 70
sub.i.v
push.v self.col1_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "castroll_by_magnolia_porter"@31820
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 30
sub.i.v
push.v self.col1_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e -5
pushi.e 136
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [43]

:[42]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_white_snowdrake"@31870
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 210
add.i.v
pushloc.v local.info_yofs
add.v.v
push.v self.col1_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
b [44]

:[43]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_yellow_snowdrake"@31872
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 210
add.i.v
pushloc.v local.info_yofs
add.v.v
push.v self.col1_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v

:[44]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.icecap
pop.v.v self.mon
pushloc.v local.namescale
pushloc.v local.namescale
push.s "castroll_name_icecap"@31874
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 70
sub.i.v
push.v self.col2_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "castroll_by_magnolia_porter"@31820
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 30
sub.i.v
push.v self.col2_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e -5
pushi.e 137
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [46]

:[45]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_white_icecap"@31876
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 210
add.i.v
pushloc.v local.info_yofs
add.v.v
push.v self.col2_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
b [47]

:[46]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_yellow_icecap"@31878
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 210
add.i.v
pushloc.v local.info_yofs
add.v.v
push.v self.col2_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v

:[47]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.gyftrot
pop.v.v self.mon
pushloc.v local.namescale
pushloc.v local.namescale
push.s "castroll_name_gyftrot"@31880
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 70
sub.i.v
push.v self.col1_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "castroll_by_magnolia_porter_and_toby"@31822
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 30
sub.i.v
push.v self.col1_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e -5
pushi.e 138
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [49]

:[48]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_white_gyftrot"@31882
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 210
add.i.v
pushloc.v local.info_yofs
add.v.v
push.v self.col1_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
b [50]

:[49]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_yellow_gyftrot"@31884
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 210
add.i.v
pushloc.v local.info_yofs
add.v.v
push.v self.col1_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v

:[50]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.doggo
pop.v.v self.mon
pushloc.v local.namescale
pushloc.v local.namescale
push.s "castroll_name_doggo"@31886
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 70
sub.i.v
push.v self.col2_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "castroll_by_toby"@31808
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 30
sub.i.v
push.v self.col2_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e -5
pushi.e 139
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [52]

:[51]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_white_doggo"@31888
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 210
add.i.v
pushloc.v local.info_yofs
add.v.v
push.v self.col2_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
b [53]

:[52]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_yellow_doggo"@31890
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 210
add.i.v
pushloc.v local.info_yofs
add.v.v
push.v self.col2_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v

:[53]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.dogamy
pop.v.v self.mon
pushloc.v local.namescale
pushloc.v local.namescale
push.s "castroll_name_dogamy"@31892
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 70
sub.i.v
pushi.e 320
conv.i.v
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "castroll_by_toby_2"@31810
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 30
sub.i.v
pushi.e 320
conv.i.v
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e -5
pushi.e 140
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [55]

:[54]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_white_dogamy"@31894
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 210
add.i.v
pushloc.v local.info_yofs
add.v.v
pushi.e 320
conv.i.v
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
b [56]

:[55]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_yellow_dogamy"@31896
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 210
add.i.v
pushloc.v local.info_yofs
add.v.v
pushi.e 320
conv.i.v
call.i scr_drawtext_centered_scaled(argc=5)
popz.v

:[56]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.lesserdog
pop.v.v self.mon
pushloc.v local.namescale
pushloc.v local.namescale
push.s "castroll_name_lesserdog"@31898
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 70
sub.i.v
push.v self.col1_x
pushi.e 20
sub.i.v
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "castroll_by_Mahdiisdumb_and_Luke"@31818
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 30
sub.i.v
push.v self.col1_x
pushi.e 20
sub.i.v
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e -5
pushi.e 141
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [58]

:[57]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_white_lesserdog"@31900
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 210
add.i.v
pushloc.v local.info_yofs
add.v.v
push.v self.col1_x
pushi.e 20
sub.i.v
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
b [59]

:[58]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_yellow_lesserdog"@31902
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 210
add.i.v
pushloc.v local.info_yofs
add.v.v
push.v self.col1_x
pushi.e 20
sub.i.v
call.i scr_drawtext_centered_scaled(argc=5)
popz.v

:[59]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.greaterdog
pop.v.v self.mon
pushloc.v local.namescale
pushloc.v local.namescale
push.s "castroll_name_greaterdog"@31904
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 70
sub.i.v
push.v self.col2_x
pushi.e 20
add.i.v
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "castroll_by_Luke_and_Mahdiisdumb"@31812
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 30
sub.i.v
push.v self.col2_x
pushi.e 20
add.i.v
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e -5
pushi.e 142
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [61]

:[60]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_white_greaterdog"@31906
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 210
add.i.v
pushloc.v local.info_yofs
add.v.v
push.v self.col2_x
pushi.e 20
add.i.v
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
b [62]

:[61]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_yellow_greaterdog"@31908
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 210
add.i.v
pushloc.v local.info_yofs
add.v.v
push.v self.col2_x
pushi.e 20
add.i.v
call.i scr_drawtext_centered_scaled(argc=5)
popz.v

:[62]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 1920
cmp.i.v GT
bf [64]

:[63]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 1940
cmp.i.v LT
b [65]

:[64]
push.e 0

:[65]
bf [67]

:[66]
pushi.e 0
pop.v.i self.exper

:[67]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 1940
cmp.i.v GT
bf [70]

:[68]
push.v self.vol
push.d 0.02
sub.d.v
pop.v.v self.vol
push.v self.vol
pushi.e -3
conv.i.v
call.i caster_set_volume(argc=2)
popz.v
push.v self.exper
push.d 0.5
add.d.v
pop.v.v self.exper
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_xview
push.v self.exper
sub.v.v
pop.i.v [array]self.view_xview
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e -600
cmp.i.v LT
bf [70]

:[69]
pushi.e 1
pop.v.i self.do_room_goto
pushi.e 280
pop.v.i self.do_room_goto_target

:[70]
pushglb.v global.cast_type
pushi.e 2
cmp.i.v EQ
bf [97]

:[71]
pushi.e 0
pop.v.i self.g
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i scr_setfont(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.aaron
pop.v.v self.mon
pushloc.v local.namescale
pushloc.v local.namescale
push.s "castroll_name_aaron"@31910
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 70
sub.i.v
push.v self.col1_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "castroll_by_Mahdiisdumb_2"@31816
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 30
sub.i.v
push.v self.col1_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e -5
pushi.e 95
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [73]

:[72]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_white_aaron"@31912
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 210
add.i.v
pushloc.v local.info_yofs
add.v.v
push.v self.col1_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
b [74]

:[73]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_yellow_aaron"@31914
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 210
add.i.v
pushloc.v local.info_yofs
add.v.v
push.v self.col1_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v

:[74]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.moldbygg
pop.v.v self.mon
pushloc.v local.namescale
pushloc.v local.namescale
push.s "castroll_name_moldbygg"@31916
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 70
sub.i.v
push.v self.col2_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "castroll_by_toby"@31808
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 30
sub.i.v
push.v self.col2_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e -5
pushi.e 144
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [76]

:[75]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.d 1.5
pop.v.d local.moldbygg_w_infoscale_x
pushloc.v local.infoscale
pushloc.v local.moldbygg_w_infoscale_x
push.s "castroll_white_moldbygg"@31918
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 210
add.i.v
pushloc.v local.info_yofs
add.v.v
push.v self.col2_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
b [77]

:[76]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_yellow_moldbygg"@31920
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 210
add.i.v
pushloc.v local.info_yofs
add.v.v
push.v self.col2_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v

:[77]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.woshua
pop.v.v self.mon
pushloc.v local.namescale
pushloc.v local.namescale
push.s "castroll_name_woshua"@31922
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 70
sub.i.v
push.v self.col1_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "castroll_extra_woshua"@31924
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 30
sub.i.v
push.v self.col1_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e -5
pushi.e 145
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [79]

:[78]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_white_woshua"@31926
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 110
add.i.v
pushloc.v local.info_yofs
add.v.v
push.v self.col1_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
b [80]

:[79]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_yellow_woshua"@31928
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 110
add.i.v
pushloc.v local.info_yofs
add.v.v
push.v self.col1_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v

:[80]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.Mahdii
pop.v.v self.mon
pushloc.v local.namescale
pushloc.v local.namescale
push.s "castroll_name_temmie"@31930
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 70
sub.i.v
push.v self.col2_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "castroll_extra_temmie"@31931
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 30
sub.i.v
push.v self.col2_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e -5
pushi.e 146
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [82]

:[81]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_white_temmie"@31932
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 110
add.i.v
pushloc.v local.info_yofs
add.v.v
push.v self.col2_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
b [83]

:[82]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_yellow_temmie"@31933
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 110
add.i.v
pushloc.v local.info_yofs
add.v.v
push.v self.col2_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v

:[83]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.maddummy
pop.v.v self.mon
pushloc.v local.namescale
pushloc.v local.namescale
push.s "castroll_name_maddummy"@31935
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 70
sub.i.v
push.v self.col1_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "castroll_by_toby"@31808
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 30
sub.i.v
push.v self.col1_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e -5
pushi.e 147
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [85]

:[84]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_white_maddummy"@31937
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 210
add.i.v
pushloc.v local.info_yofs
add.v.v
push.v self.col1_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
b [86]

:[85]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_yellow_maddummy"@31939
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 210
add.i.v
pushloc.v local.info_yofs
add.v.v
push.v self.col1_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v

:[86]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.shyren
pop.v.v self.mon
pushloc.v local.namescale
pushloc.v local.namescale
push.s "castroll_name_shyren"@31941
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 70
sub.i.v
push.v self.col2_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "castroll_by_toby"@31808
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 30
sub.i.v
push.v self.col2_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e -5
pushi.e 81
push.v [array]global.flag
pushi.e 2
cmp.i.v NEQ
bf [88]

:[87]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_white_shyren"@31943
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 210
add.i.v
pushloc.v local.info_yofs
add.v.v
push.v self.col2_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
b [89]

:[88]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "castroll_yellow_shyren"@31945
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 210
add.i.v
push.v self.col2_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v

:[89]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 1220
cmp.i.v GT
bf [91]

:[90]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 1240
cmp.i.v LT
b [92]

:[91]
push.e 0

:[92]
bf [94]

:[93]
pushi.e 0
pop.v.i self.exper

:[94]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 1240
cmp.i.v GT
bf [97]

:[95]
push.v self.vol
push.d 0.02
sub.d.v
pop.v.v self.vol
push.v self.vol
pushi.e -3
conv.i.v
call.i caster_set_volume(argc=2)
popz.v
push.v self.exper
push.d 0.2
add.d.v
pop.v.v self.exper
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_yview
push.v self.exper
add.v.v
pop.i.v [array]self.view_yview
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
push.v self.shyren
conv.v.i
push.v [stacktop]self.y
pushi.e 300
add.i.v
cmp.v.v GT
bf [97]

:[96]
pushi.e 1
pop.v.i self.do_room_goto
pushi.e 281
pop.v.i self.do_room_goto_target

:[97]
pushglb.v global.cast_type
pushi.e 3
cmp.i.v EQ
bf [end]

:[98]
pushi.e 0
pop.v.i self.g
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i scr_setfont(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.vulkin
pop.v.v self.mon
pushloc.v local.namescale
pushloc.v local.namescale
push.s "castroll_name_vulkin"@31947
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 70
sub.i.v
pushi.e 100
sub.i.v
push.v self.col1_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "castroll_by_magnolia_porter"@31820
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 30
sub.i.v
pushi.e 100
sub.i.v
push.v self.col1_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e -5
pushi.e 148
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [100]

:[99]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_white_vulkin"@31949
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 210
add.i.v
pushi.e 100
sub.i.v
pushloc.v local.info_yofs
add.v.v
push.v self.col1_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
b [101]

:[100]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_yellow_vulkin"@31951
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 210
add.i.v
pushi.e 100
sub.i.v
pushloc.v local.info_yofs
add.v.v
push.v self.col1_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v

:[101]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.tsunderplane
pop.v.v self.mon
pushloc.v local.namescale
pushloc.v local.namescale
push.s "castroll_name_tsunderplane"@31953
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 70
sub.i.v
push.v self.col2_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "castroll_by_toby"@31808
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 30
sub.i.v
push.v self.col2_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e -5
pushi.e 149
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [103]

:[102]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_white_tsunderplane"@31955
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 210
add.i.v
pushloc.v local.info_yofs
add.v.v
push.v self.col2_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
b [104]

:[103]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.d 1.5
pop.v.d local.tsunderplane_y_infoscale_x
pushloc.v local.infoscale
pushloc.v local.tsunderplane_y_infoscale_x
push.s "castroll_yellow_tsunderplane"@31957
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 210
add.i.v
pushloc.v local.info_yofs
add.v.v
push.v self.col2_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v

:[104]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.pyrope
pop.v.v self.mon
pushloc.v local.namescale
pushloc.v local.namescale
push.s "castroll_name_pyrope"@31959
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 70
sub.i.v
push.v self.col1_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "castroll_by_toby"@31808
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 30
sub.i.v
push.v self.col1_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e -5
pushi.e 150
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [106]

:[105]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_white_pyrope"@31961
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 210
add.i.v
pushloc.v local.info_yofs
add.v.v
push.v self.col1_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
b [107]

:[106]
push.d 1.5
pop.v.d local.pyrope_y_infoscale_x
push.d 1.5
pop.v.d local.pyrope_y_infoscale_y
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.pyrope_y_infoscale_y
pushloc.v local.pyrope_y_infoscale_x
push.s "castroll_yellow_pyrope"@31963
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 210
add.i.v
pushloc.v local.info_yofs
add.v.v
push.v self.col1_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v

:[107]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.muffet
pop.v.v self.mon
pushloc.v local.namescale
pushloc.v local.namescale
push.s "castroll_name_muffet"@31965
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 70
sub.i.v
push.v self.col2_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "castroll_by_michelle"@31824
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 30
sub.i.v
push.v self.col2_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_yellow_muffet"@31969
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 210
add.i.v
pushloc.v local.info_yofs
add.v.v
push.v self.col2_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.knighta
pop.v.v self.mon
pushloc.v local.namescale
pushloc.v local.namescale
push.s "castroll_name_royalguards"@31971
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 70
sub.i.v
pushi.e 320
conv.i.v
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "castroll_by_toby"@31808
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 30
sub.i.v
pushi.e 320
conv.i.v
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_yellow_royalguards"@31974
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 210
add.i.v
pushloc.v local.info_yofs
add.v.v
pushi.e 320
conv.i.v
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.finalfroggit
pop.v.v self.mon
pushi.e 2
pop.v.i local.ff_namescale_x
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [109]

:[108]
pushi.e 2
pop.v.i local.ff_namescale_x

:[109]
pushloc.v local.namescale
pushloc.v local.ff_namescale_x
push.s "castroll_name_finalfroggit"@31976
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 90
sub.i.v
push.v self.col1_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "castroll_by_toby"@31808
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 50
sub.i.v
push.v self.col1_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e -5
pushi.e 151
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [111]

:[110]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_white_finalfroggit"@31978
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 110
add.i.v
pushloc.v local.info_yofs
add.v.v
push.v self.col1_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
b [112]

:[111]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_yellow_finalfroggit"@31980
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 110
add.i.v
pushloc.v local.info_yofs
add.v.v
push.v self.col1_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v

:[112]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.whimsalot
pop.v.v self.mon
pushloc.v local.namescale
pushloc.v local.namescale
push.s "castroll_name_whimsalot"@31982
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 90
sub.i.v
push.v self.col2_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "castroll_by_toby"@31808
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 50
sub.i.v
push.v self.col2_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e -5
pushi.e 152
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [114]

:[113]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_white_whimsalot"@31984
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 110
add.i.v
pushloc.v local.info_yofs
add.v.v
push.v self.col2_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
b [115]

:[114]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_yellow_whimsalot"@31986
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 110
add.i.v
pushloc.v local.info_yofs
add.v.v
push.v self.col2_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v

:[115]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.astigmatism
pop.v.v self.mon
pushloc.v local.namescale
pushloc.v local.namescale
push.s "castroll_name_astigmatism"@31988
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 70
sub.i.v
pushi.e 320
conv.i.v
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "castroll_by_toby"@31808
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 30
sub.i.v
pushi.e 320
conv.i.v
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e -5
pushi.e 153
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [117]

:[116]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_white_astigmatism"@31990
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 110
add.i.v
pushloc.v local.info_yofs
add.v.v
pushi.e 320
conv.i.v
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
b [118]

:[117]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_yellow_astigmatism"@31992
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 110
add.i.v
pushloc.v local.info_yofs
add.v.v
pushi.e 320
conv.i.v
call.i scr_drawtext_centered_scaled(argc=5)
popz.v

:[118]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.madjick
pop.v.v self.mon
pushloc.v local.namescale
pushloc.v local.namescale
push.s "castroll_name_madjick"@31994
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 70
sub.i.v
push.v self.col1_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "castroll_by_toby"@31808
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 30
sub.i.v
push.v self.col1_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e -5
pushi.e 154
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [120]

:[119]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_white_madjick"@31996
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 210
add.i.v
pushloc.v local.info_yofs
add.v.v
push.v self.col1_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
b [121]

:[120]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_yellow_madjick"@31998
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 210
add.i.v
pushloc.v local.info_yofs
add.v.v
push.v self.col1_x
call.i scr_drawtext_centered_scaled(argc=5)
popz.v

:[121]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.knightknight
pop.v.v self.mon
pushloc.v local.namescale
pushloc.v local.namescale
push.s "castroll_name_knightknight"@32000
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 70
sub.i.v
pushi.e 460
conv.i.v
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "castroll_by_toby"@31808
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 30
sub.i.v
pushi.e 460
conv.i.v
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e -5
pushi.e 155
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [123]

:[122]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_white_knightknight"@32002
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 210
add.i.v
pushloc.v local.info_yofs
add.v.v
pushi.e 460
conv.i.v
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
b [124]

:[123]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_yellow_knightknight"@32004
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 210
add.i.v
pushloc.v local.info_yofs
add.v.v
pushi.e 460
conv.i.v
call.i scr_drawtext_centered_scaled(argc=5)
popz.v

:[124]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.amalgamate1
pop.v.v self.mon
pushloc.v local.namescale
pushloc.v local.namescale
push.s "castroll_name_amalgamates"@32006
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 70
sub.i.v
pushi.e 320
conv.i.v
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "castroll_extra_amalgamates"@32008
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 30
sub.i.v
pushi.e 320
conv.i.v
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e -5
pushi.e 156
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [126]

:[125]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_white_amalgamates"@32010
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 210
add.i.v
pushloc.v local.info_yofs
add.v.v
pushi.e 320
conv.i.v
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
b [127]

:[126]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.infoscale
pushloc.v local.infoscale
push.s "castroll_yellow_amalgamates"@32012
conv.s.v
call.i scr_gettext(argc=1)
push.v self.mon
conv.v.i
push.v [stacktop]self.y
pushi.e 210
add.i.v
pushloc.v local.info_yofs
add.v.v
pushi.e 320
conv.i.v
call.i scr_drawtext_centered_scaled(argc=5)
popz.v

:[127]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 3000
cmp.i.v GT
bf [129]

:[128]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 3040
cmp.i.v LT
b [130]

:[129]
push.e 0

:[130]
bf [132]

:[131]
pushi.e 0
pop.v.i self.exper

:[132]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 3040
cmp.i.v GT
bf [end]

:[133]
push.v self.exper
push.d 0.5
add.d.v
pop.v.v self.exper
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_xview
push.v self.exper
add.v.v
pop.i.v [array]self.view_xview
push.v self.vol
push.d 0.02
sub.d.v
pop.v.v self.vol
push.v self.vol
pushi.e -3
conv.i.v
call.i caster_set_volume(argc=2)
popz.v
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 640
cmp.i.v GT
bf [end]

:[134]
pushi.e 1
pop.v.i self.do_room_goto
pushi.e 282
pop.v.i self.do_room_goto_target

:[end]