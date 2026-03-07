.localvar 0 arguments
.localvar 1 textscale 9899

:[0]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i scr_setfont(argc=1)
popz.v
pushi.e 3
pop.v.i local.textscale
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [2]

:[1]
pushi.e 2
pop.v.i local.textscale

:[2]
push.v self.savetimer
pushi.e 1
sub.i.v
pop.v.v self.savetimer
push.v self.loadtimer
pushi.e 1
sub.i.v
pop.v.v self.loadtimer
push.v self.savetimer
pushi.e 0
cmp.i.v GT
bf [11]

:[3]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 10
push.v self.savetimer
add.v.i
pushi.e 20
conv.i.d
div.d.v
pop.v.v self.sta
push.v self.sta
pushi.e 1
cmp.i.v GT
bf [5]

:[4]
pushi.e 1
pop.v.i self.sta

:[5]
push.v self.sta
call.i draw_set_alpha(argc=1)
popz.v
push.v self.fileset
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
pushi.e 0
conv.i.v
pushloc.v local.textscale
pushloc.v local.textscale
push.s "2"@6334
conv.s.v
push.s "flowey_save"@31776
conv.s.v
call.i scr_gettext(argc=2)
pushi.e 430
conv.i.v
pushi.e 20
conv.i.v
call.i draw_text_transformed(argc=6)
popz.v

:[7]
push.v self.fileset
pushi.e 3
cmp.i.v EQ
bf [9]

:[8]
pushi.e 0
conv.i.v
pushloc.v local.textscale
pushloc.v local.textscale
push.s "3"@6335
conv.s.v
push.s "flowey_save"@31776
conv.s.v
call.i scr_gettext(argc=2)
pushi.e 430
conv.i.v
pushi.e 20
conv.i.v
call.i draw_text_transformed(argc=6)
popz.v

:[9]
push.v self.fileset
pushi.e 6
cmp.i.v EQ
bf [11]

:[10]
pushi.e 0
conv.i.v
pushloc.v local.textscale
pushloc.v local.textscale
push.s "6"@6338
conv.s.v
push.s "flowey_save"@31776
conv.s.v
call.i scr_gettext(argc=2)
pushi.e 430
conv.i.v
pushi.e 20
conv.i.v
call.i draw_text_transformed(argc=6)
popz.v

:[11]
push.v self.loadtimer
pushi.e 0
cmp.i.v GT
bf [30]

:[12]
pushi.e 10
push.v self.loadtimer
add.v.i
pushi.e 20
conv.i.d
div.d.v
pop.v.v self.sta
push.v self.sta
pushi.e 1
cmp.i.v GT
bf [14]

:[13]
pushi.e 1
pop.v.i self.sta

:[14]
push.v self.sta
call.i draw_set_alpha(argc=1)
popz.v
push.v self.fileset
pushi.e 3
cmp.i.v EQ
bt [18]

:[15]
push.v self.fileset
pushi.e 4
cmp.i.v EQ
bt [18]

:[16]
push.v self.fileset
pushi.e 5
cmp.i.v EQ
bt [18]

:[17]
push.v self.fileset
pushi.e 6
cmp.i.v EQ
b [19]

:[18]
push.e 1

:[19]
bf [29]

:[20]
push.v self.fileset
pushi.e 3
cmp.i.v EQ
bf [22]

:[21]
pushi.e 0
conv.i.v
pushloc.v local.textscale
pushloc.v local.textscale
push.s "3"@6335
conv.s.v
push.s "flowey_load"@31778
conv.s.v
call.i scr_gettext(argc=2)
pushi.e 430
push.v self.fly
add.v.i
pushi.e 20
push.v self.flx
add.v.i
call.i draw_text_transformed(argc=6)
popz.v

:[22]
push.v self.fileset
pushi.e 4
cmp.i.v EQ
bf [24]

:[23]
pushi.e 0
conv.i.v
pushloc.v local.textscale
pushloc.v local.textscale
push.s "4"@6336
conv.s.v
push.s "flowey_load"@31778
conv.s.v
call.i scr_gettext(argc=2)
pushi.e 430
conv.i.v
pushi.e 20
conv.i.v
call.i draw_text_transformed(argc=6)
popz.v

:[24]
push.v self.fileset
pushi.e 5
cmp.i.v EQ
bf [26]

:[25]
pushi.e 0
conv.i.v
pushloc.v local.textscale
pushloc.v local.textscale
push.s "flowey_load_failed"@31780
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 430
conv.i.v
pushi.e 20
conv.i.v
call.i draw_text_transformed(argc=6)
popz.v

:[26]
push.v self.fileset
pushi.e 6
cmp.i.v EQ
bf [28]

:[27]
pushi.e 0
conv.i.v
pushloc.v local.textscale
pushloc.v local.textscale
push.s "6"@6338
conv.s.v
push.s "flowey_load"@31778
conv.s.v
call.i scr_gettext(argc=2)
pushi.e 430
conv.i.v
pushi.e 20
conv.i.v
call.i draw_text_transformed(argc=6)
popz.v

:[28]
b [30]

:[29]
pushi.e 0
conv.i.v
pushloc.v local.textscale
pushloc.v local.textscale
push.s "2"@6334
conv.s.v
push.s "flowey_load"@31778
conv.s.v
call.i scr_gettext(argc=2)
pushi.e 430
conv.i.v
pushi.e 20
conv.i.v
call.i draw_text_transformed(argc=6)
popz.v

:[30]
push.v self.darkmode
pushi.e 1
cmp.i.v EQ
bf [35]

:[31]
pushi.e -25
pop.v.i 1587.depth
push.v self.darkvalue
pushi.e 1
cmp.i.v LT
bf [33]

:[32]
push.v self.darkvalue
push.d 0.05
add.d.v
pop.v.v self.darkvalue

:[33]
push.v self.darkvalue
call.i draw_set_alpha(argc=1)
popz.v
push.v self.darkvalue
pushi.e 1
cmp.i.v EQ
bf [35]

:[34]
pushi.e 2
pop.v.i self.darkmode

:[35]
push.v self.darkmode
pushi.e 3
cmp.i.v EQ
bf [40]

:[36]
push.v self.darkvalue
pushi.e 0
cmp.i.v GT
bf [38]

:[37]
push.v self.darkvalue
push.d 0.05
sub.d.v
pop.v.v self.darkvalue
b [39]

:[38]
pushi.e 10
pop.v.i 1587.depth
pushi.e 0
pop.v.i self.darkmode
pushi.e 0
pop.v.i self.darkvalue

:[39]
push.v self.darkvalue
call.i draw_set_alpha(argc=1)
popz.v

:[40]
push.v self.darkmode
pushi.e 0
cmp.i.v GT
bf [42]

:[41]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 500
conv.i.v
pushi.e 700
conv.i.v
pushi.e -20
conv.i.v
pushi.e -20
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[42]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.pd
pushi.e 1
cmp.i.v EQ
bf [46]

:[43]
push.v self.soulpitch
pushi.e 0
cmp.i.v GT
bf [45]

:[44]
push.v self.soulpitch
push.d 0.02
sub.d.v
pop.v.v self.soulpitch
push.v self.soulpitch
pushi.e -1
pushglb.v global.soul_rescue
conv.v.i
push.v [array]self.mus_soul
call.i caster_set_pitch(argc=2)
popz.v
push.v self.soulpitch
pushi.e -1
pushglb.v global.soul_rescue
conv.v.i
push.v [array]self.mus_soul
call.i caster_set_volume(argc=2)
popz.v
b [46]

:[45]
pushi.e -1
pushglb.v global.soul_rescue
conv.v.i
push.v [array]self.mus_soul
call.i caster_stop(argc=1)
popz.v
pushi.e 1
pop.v.i self.soulpitch
pushi.e -1
pop.v.i self.pd

:[46]
push.v self.drawhp
pushi.e 1
cmp.i.v EQ
bf [49]

:[47]
pushi.e 128
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 470
conv.i.v
pushi.e 345
conv.i.v
pushi.e 450
conv.i.v
pushi.e 295
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.my_hp
pushi.e 0
cmp.i.v GT
bf [49]

:[48]
pushi.e 470
conv.i.v
pushi.e 295
pushglb.v global.my_hp
add.v.i
pushi.e 450
conv.i.v
pushi.e 295
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[49]
push.v self.dcon
pushi.e 0
cmp.i.v GT
bf [230]

:[50]
push.v self.destroyercon
pushi.e 1
cmp.i.v EQ
bf [52]

:[51]
pushi.e 2
pop.v.i self.destroyercon
pushi.e 1
pushi.e -1
pushi.e 10
pop.v.i [array]self.alarm

:[52]
push.v self.dcon
pushi.e 2
cmp.i.v EQ
bf [56]

:[53]
pushi.e 137
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1593
pushenv [55]

:[54]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[55]
popenv [54]
pushi.e 3
pop.v.i self.dcon
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[56]
push.v self.dcon
pushi.e 4
cmp.i.v EQ
bf [60]

:[57]
pushi.e 137
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1593
pushenv [59]

:[58]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[59]
popenv [58]
pushi.e 5
pop.v.i self.dcon
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[60]
push.v self.dcon
pushi.e 6
cmp.i.v EQ
bf [62]

:[61]
push.s "music/f_glock.ogg"@2762
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.sfx_glock
push.s "music/f_destroyed.ogg"@2759
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.sfx_shake
push.d 0.9
conv.d.v
push.d 0.7
conv.d.v
push.v self.sfx_shake
call.i caster_loop(argc=3)
popz.v
pushi.e 1588
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.lsh
pushi.e 0
push.v self.lsh
conv.v.i
pop.v.i [stacktop]self.decay
pushi.e 7
pop.v.i self.dcon
pushi.e 45
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[62]
push.v self.dcon
pushi.e 8
cmp.i.v EQ
bf [66]

:[63]
pushi.e 10
pop.v.i self.dcon
pushi.e 116
pop.v.i global.typer
push.s "obj_flowey_master_1067"@12833
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_flowey_master_1068"@12835
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_flowey_master_1069"@12837
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_flowey_master_1070"@12838
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 1604
pushenv [65]

:[64]
call.i instance_destroy(argc=0)
popz.v

:[65]
popenv [64]
pushi.e 1604
conv.i.v
pushi.e 300
conv.i.v
push.v self.writerx
call.i instance_create(argc=3)
pop.v.v self.tw

:[66]
push.v self.dcon
pushi.e 10
cmp.i.v EQ
bf [69]

:[67]
push.v self.tw
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [69]

:[68]
pushi.e 11
pop.v.i self.dcon
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[69]
push.v self.dcon
pushi.e 2
cmp.i.v GTE
bf [71]

:[70]
push.v self.dcon
pushi.e 12
cmp.i.v LTE
b [72]

:[71]
push.e 0

:[72]
bf [76]

:[73]
pushi.e 1602
pushenv [75]

:[74]
call.i instance_destroy(argc=0)
popz.v

:[75]
popenv [74]

:[76]
push.v self.dcon
pushi.e 12
cmp.i.v EQ
bf [88]

:[77]
pushi.e 0
pop.v.i global.soul_rescue
pushi.e 50
pop.v.i global.my_hp
pushi.e 90
pop.v.i self.loadtimer
pushi.e 3
pop.v.i self.fileset
pushi.e 50
pop.v.i global.my_hp
pushi.e 1
pop.v.i 1587.move
pushi.e -4
pop.v.i 1587.depth
pushi.e 314
pop.v.i 1587.x
pushi.e 422
pop.v.i 1587.y
pushi.e 1
pop.v.i 1587.special
pushi.e 2379
pop.v.i 1587.sprite_index
pushi.e 1593
pushenv [79]

:[78]
pushi.e 10
pop.v.i self.tvmode

:[79]
popenv [78]
pushi.e -3
conv.i.v
call.i caster_stop(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.sfx_glock
call.i caster_play(argc=3)
popz.v
pushi.e 1604
pushenv [81]

:[80]
call.i instance_destroy(argc=0)
popz.v

:[81]
popenv [80]
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_xview
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_yview
pushi.e 1588
pushenv [83]

:[82]
call.i instance_destroy(argc=0)
popz.v

:[83]
popenv [82]
pushi.e 1592
pushenv [85]

:[84]
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.desperate
pushi.e 0
pop.v.i self.frozen

:[85]
popenv [84]
pushi.e 1605
pushenv [87]

:[86]
pushi.e 0
pop.v.i self.dmg
pushglb.v global.floweymaxhp
pop.v.v self.apparenthp

:[87]
popenv [86]
pushi.e 13
pop.v.i self.dcon
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[88]
push.v self.dcon
pushi.e 14
cmp.i.v EQ
bf [92]

:[89]
pushi.e 117
pop.v.i global.typer
push.s "obj_flowey_master_1124"@12840
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1604
pushenv [91]

:[90]
call.i instance_destroy(argc=0)
popz.v

:[91]
popenv [90]
pushi.e 15
pop.v.i self.dcon
pushi.e 1604
conv.i.v
pushi.e 300
conv.i.v
push.v self.writerx
call.i instance_create(argc=3)
pop.v.v self.tw2

:[92]
push.v self.dcon
pushi.e 15
cmp.i.v EQ
bf [97]

:[93]
push.v self.tw2
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [97]

:[94]
pushi.e 1605
pushenv [96]

:[95]
call.i instance_destroy(argc=0)
popz.v

:[96]
popenv [95]
pushi.e 16
pop.v.i self.dcon
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[97]
push.v self.dcon
pushi.e 17
cmp.i.v EQ
bf [101]

:[98]
pushi.e 1593
pushenv [100]

:[99]
pushi.e 20
pop.v.i self.tvmode

:[100]
popenv [99]
pushi.e 3
pop.v.i self.fileset
pushi.e 1
pop.v.i self.destroyercon
pushi.e 18
pop.v.i self.dcon

:[101]
push.v self.dcon
pushi.e 20
cmp.i.v EQ
bf [105]

:[102]
pushi.e 1593
pushenv [104]

:[103]
pushi.e 21
pop.v.i self.tvmode

:[104]
popenv [103]
pushi.e 0
pop.v.i 1587.move
push.d 20.1
pop.v.d self.dcon
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[105]
push.v self.dcon
push.d 21.1
cmp.d.v EQ
bf [107]

:[106]
pushi.e 0
pop.v.i 1587.move
pushi.e 1653
conv.i.v
push.v 1587.y
pushi.e 8
add.i.v
push.v 1587.x
pushi.e 8
add.i.v
call.i instance_create(argc=3)
pop.v.v self.sfg
pushi.e 6
pop.v.i self.fileset
pushi.e 20
pop.v.i self.savetimer
pushi.e 21
pop.v.i self.dcon
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[107]
push.v self.dcon
pushi.e 22
cmp.i.v EQ
bf [109]

:[108]
pushi.e 1
pop.v.i 1587.move
push.s "music/yourbestfriend_3.ogg"@2737
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.mus_worry
push.d 0.9
conv.d.v
push.d 0.85
conv.d.v
push.v self.mus_worry
call.i caster_loop(argc=3)
popz.v
pushi.e 23
pop.v.i self.dcon
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[109]
push.v self.dcon
pushi.e 24
cmp.i.v EQ
bf [113]

:[110]
pushi.e 117
pop.v.i global.typer
push.s "obj_flowey_master_1181"@12841
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_flowey_master_1182"@12843
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_flowey_master_1183"@12845
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_flowey_master_1184"@12847
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_flowey_master_1185"@12849
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_flowey_master_1186"@12851
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_flowey_master_1187"@12853
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_flowey_master_1188"@12855
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_flowey_master_1189"@12857
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_flowey_master_1190"@12859
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_flowey_master_1191"@12861
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_flowey_master_1192"@12863
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_flowey_master_1193"@12865
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_flowey_master_1194"@12867
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_flowey_master_1195"@12868
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_flowey_master_1196"@12869
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_flowey_master_1197"@12870
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_flowey_master_1198"@12871
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
pushi.e 1604
pushenv [112]

:[111]
call.i instance_destroy(argc=0)
popz.v

:[112]
popenv [111]
pushi.e 25
pop.v.i self.dcon
pushi.e 1604
conv.i.v
pushi.e 280
conv.i.v
pushi.e 130
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.tw2

:[113]
push.v self.dcon
pushi.e 25
cmp.i.v EQ
bf [141]

:[114]
pushi.e 1604
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [139]

:[115]
push.v self.intent_hit
pushi.e 20
cmp.i.v GT
bf [117]

:[116]
push.v 1604.stringno
pushi.e 2
cmp.i.v LT
b [118]

:[117]
push.e 0

:[118]
bf [120]

:[119]
push.s "obj_flowey_master_1216"@12873
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 1604
pushi.e 2
pop.v.v [array]self.mystring
push.s "obj_flowey_master_1217"@12875
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 1604
pushi.e 3
pop.v.v [array]self.mystring
push.s "obj_flowey_master_1218"@12877
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 1604
pushi.e 4
pop.v.v [array]self.mystring

:[120]
push.v 1604.stringno
pushi.e 3
cmp.i.v EQ
bf [125]

:[121]
pushi.e 1593
pushenv [124]

:[122]
push.v self.tvmode
pushi.e 11
cmp.i.v NEQ
bf [124]

:[123]
pushi.e 11
pop.v.i self.tvmode
pushi.e 6
pop.v.i self.overnoiser

:[124]
popenv [122]

:[125]
push.v 1604.stringno
pushi.e 5
cmp.i.v EQ
bf [130]

:[126]
pushi.e 1593
pushenv [129]

:[127]
push.v self.tvmode
pushi.e 12
cmp.i.v NEQ
bf [129]

:[128]
pushi.e 12
pop.v.i self.tvmode
pushi.e 6
pop.v.i self.overnoiser

:[129]
popenv [127]

:[130]
push.v 1604.stringno
pushi.e 6
cmp.i.v EQ
bf [134]

:[131]
pushi.e 1593
pushenv [133]

:[132]
pushi.e 13
pop.v.i self.tvmode

:[133]
popenv [132]

:[134]
push.v 1604.stringno
pushi.e 7
cmp.i.v EQ
bf [139]

:[135]
pushi.e 1593
pushenv [138]

:[136]
push.v self.tvmode
pushi.e 11
cmp.i.v NEQ
bf [138]

:[137]
pushi.e 11
pop.v.i self.tvmode
pushi.e 6
pop.v.i self.overnoiser

:[138]
popenv [136]

:[139]
pushi.e 1604
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [141]

:[140]
pushi.e 30
pop.v.i 1654.depth
pushi.e 1627
conv.i.v
push.v 1587.y
pushi.e 8
add.i.v
push.v 1587.x
pushi.e 45
add.i.v
call.i instance_create(argc=3)
pop.v.v self.ap
pushi.e 2332
conv.i.v
call.i scr_getsprite(argc=1)
push.v self.ap
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 20
push.v self.ap
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 30
pop.v.i self.dcon

:[141]
push.v self.dcon
pushi.e 31
cmp.i.v EQ
bf [147]

:[142]
pushi.e 1593
pushenv [144]

:[143]
pushi.e 11
pop.v.i self.tvmode

:[144]
popenv [143]
pushi.e 3
pop.v.i global.faceemotion
pushi.e 118
pop.v.i global.typer
push.s "obj_flowey_master_1260"@12879
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_flowey_master_1261"@12880
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 1604
pushenv [146]

:[145]
call.i instance_destroy(argc=0)
popz.v

:[146]
popenv [145]
pushi.e 1604
conv.i.v
pushi.e 280
conv.i.v
pushi.e 130
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.tw2
pushi.e 33
pop.v.i self.dcon
pushi.e 160
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[147]
push.v self.dcon
pushi.e 34
cmp.i.v EQ
bf [151]

:[148]
pushi.e -3
conv.i.v
call.i caster_stop(argc=1)
popz.v
pushi.e 117
pop.v.i global.typer
push.s "obj_flowey_master_1276"@12881
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_flowey_master_1277"@12883
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_flowey_master_1278"@12885
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_flowey_master_1279"@12887
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_flowey_master_1280"@12889
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_flowey_master_1281"@12890
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 1604
pushenv [150]

:[149]
call.i instance_destroy(argc=0)
popz.v

:[150]
popenv [149]
pushi.e 35
pop.v.i self.dcon
pushi.e 1604
conv.i.v
pushi.e 280
conv.i.v
pushi.e 130
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.tw2

:[151]
push.v self.dcon
pushi.e 35
cmp.i.v EQ
bf [166]

:[152]
pushi.e 1604
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [158]

:[153]
push.v 1604.stringno
pushi.e 4
cmp.i.v EQ
bf [158]

:[154]
pushi.e 1593
pushenv [157]

:[155]
push.v self.tvmode
pushi.e 21
cmp.i.v NEQ
bf [157]

:[156]
pushi.e 21
pop.v.i self.tvmode
pushi.e 6
pop.v.i self.overnoiser

:[157]
popenv [155]

:[158]
pushi.e 1604
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [166]

:[159]
pushi.e 1593
pushenv [161]

:[160]
pushi.e 20
pop.v.i self.tvmode

:[161]
popenv [160]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.sfx_laugh
call.i caster_play(argc=3)
popz.v
pushi.e 1653
pushenv [163]

:[162]
pushi.e 1
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[163]
popenv [162]
pushi.e 1654
pushenv [165]

:[164]
pushi.e 1
pop.v.i self.trick

:[165]
popenv [164]
pushi.e 36
pop.v.i self.dcon

:[166]
push.v self.dcon
pushi.e 40
cmp.i.v EQ
bf [170]

:[167]
push.v self.sfx_laugh
call.i caster_stop(argc=1)
popz.v
pushi.e 0
pop.v.i global.facemotion
pushi.e 1593
pushenv [169]

:[168]
pushi.e 22
pop.v.i self.tvmode

:[169]
popenv [168]
pushi.e 41
pop.v.i self.dcon
pushi.e 120
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[170]
push.v self.dcon
pushi.e 42
cmp.i.v EQ
bf [174]

:[171]
pushi.e 117
pop.v.i global.typer
push.s "obj_flowey_master_1320"@12892
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_flowey_master_1321"@12894
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_flowey_master_1322"@12896
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_flowey_master_1323"@12897
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 1604
pushenv [173]

:[172]
call.i instance_destroy(argc=0)
popz.v

:[173]
popenv [172]
pushi.e 43
pop.v.i self.dcon
pushi.e 1604
conv.i.v
pushi.e 280
conv.i.v
pushi.e 130
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.tw2

:[174]
push.v self.dcon
pushi.e 43
cmp.i.v EQ
bf [177]

:[175]
pushi.e 1604
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [177]

:[176]
pushi.e 3
pop.v.i global.faceemotion
pushi.e 5
pop.v.i self.fileset
pushi.e 70
pop.v.i self.loadtimer
pushi.e 44
pop.v.i self.dcon
pushi.e 100
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[177]
push.v self.dcon
pushi.e 45
cmp.i.v EQ
bf [181]

:[178]
pushi.e 117
pop.v.i global.typer
push.s "obj_flowey_master_1347"@12899
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_flowey_master_1348"@12901
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_flowey_master_1349"@12902
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 1604
pushenv [180]

:[179]
call.i instance_destroy(argc=0)
popz.v

:[180]
popenv [179]
pushi.e 47
pop.v.i self.dcon
pushi.e 1604
conv.i.v
pushi.e 280
conv.i.v
pushi.e 130
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.tw2

:[181]
push.v self.dcon
pushi.e 47
cmp.i.v EQ
bf [186]

:[182]
pushi.e 1604
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [186]

:[183]
pushi.e 1592
pushenv [185]

:[184]
pushi.e 1
pop.v.i self.frozen

:[185]
popenv [184]
pushi.e 1608
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 155
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 6
pop.v.i global.soul_rescue
pushi.e 48
pop.v.i self.dcon
pushi.e 45
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 1610
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.s6

:[186]
push.v self.dcon
pushi.e 49
cmp.i.v EQ
bf [190]

:[187]
pushi.e 117
pop.v.i global.typer
push.s "obj_flowey_master_1374"@12904
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_flowey_master_1375"@12906
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_flowey_master_1376"@12907
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 1604
pushenv [189]

:[188]
call.i instance_destroy(argc=0)
popz.v

:[189]
popenv [188]
pushi.e 50
pop.v.i self.dcon
pushi.e 1604
conv.i.v
pushi.e 280
conv.i.v
pushi.e 130
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.tw2

:[190]
push.v self.dcon
pushi.e 50
cmp.i.v EQ
bf [201]

:[191]
pushi.e 1604
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [201]

:[192]
pushi.e 1593
pushenv [194]

:[193]
pushi.e 99
pop.v.i self.tvmode

:[194]
popenv [193]
pushi.e 1608
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 155
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1592
pushenv [196]

:[195]
pushi.e 1
pop.v.i self.frozen

:[196]
popenv [195]
pushi.e 1588
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.sh2
pushi.e 10
push.v self.sh2
conv.v.i
pop.v.i [stacktop]self.shakex
pushi.e 10
push.v self.sh2
conv.v.i
pop.v.i [stacktop]self.shakey
pushi.e 0
push.v self.sh2
conv.v.i
pop.v.i [stacktop]self.decay
push.v self.s6
conv.v.i
pushenv [198]

:[197]
pushi.e 1
pop.v.i self.con

:[198]
popenv [197]
push.s "music/f_destroyed3.ogg"@2761
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.m_destroy
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.m_destroy
call.i caster_loop(argc=3)
popz.v
pushi.e 117
pop.v.i global.typer
push.s "obj_flowey_master_1401"@12909
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_flowey_master_1402"@12911
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_flowey_master_1403"@12913
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_flowey_master_1404"@12915
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_flowey_master_1405"@12916
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 1604
pushenv [200]

:[199]
call.i instance_destroy(argc=0)
popz.v

:[200]
popenv [199]
pushi.e 51
pop.v.i self.dcon
pushi.e 1604
conv.i.v
pushi.e 280
conv.i.v
pushi.e 130
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.tw2

:[201]
push.v self.dcon
pushi.e 51
cmp.i.v EQ
bf [208]

:[202]
pushi.e 1604
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [208]

:[203]
pushi.e 1593
pushenv [205]

:[204]
pushi.e 100
pop.v.i self.tvmode

:[205]
popenv [204]
pushi.e 115
pop.v.i global.typer
push.s "obj_flowey_master_1422"@12918
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_flowey_master_1423"@12919
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 0
pop.v.i self.pp
pushi.e 1604
pushenv [207]

:[206]
call.i instance_destroy(argc=0)
popz.v

:[207]
popenv [206]
pushi.e 52
pop.v.i self.dcon
pushi.e 2
pop.v.i self.whiter_maker
pushi.e 1604
conv.i.v
pushi.e 280
conv.i.v
pushi.e 130
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.tw2

:[208]
push.v self.dcon
pushi.e 52
cmp.i.v EQ
bf [214]

:[209]
pushi.e -90
pop.v.i self.depth
push.v self.pp
push.d 0.008
add.d.v
pop.v.v self.pp
push.v self.pp
push.d 1.5
div.d.v
call.i draw_set_alpha(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 900
conv.i.v
pushi.e 900
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 1
push.v self.pp
add.v.i
push.v self.m_destroy
call.i caster_set_pitch(argc=2)
popz.v
pushi.e 1
push.v self.pp
pushi.e 2
conv.i.d
div.d.v
sub.v.i
push.v self.m_destroy
call.i caster_set_volume(argc=2)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.pp
pushi.e 2
cmp.i.v GT
bf [214]

:[210]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "E"@47762
conv.s.v
push.s "FFFFF"@47763
conv.s.v
call.i ini_write_real(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "F"@47599
conv.s.v
push.s "FFFFF"@47763
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v
pushglb.v global.osflavor
pushi.e 1
cmp.i.v EQ
bf [213]

:[211]
push.s "flowey.exe"@49225
conv.s.v
call.i file_exists(argc=1)
conv.v.b
bf [213]

:[212]
push.s "memetale.exe"@49224
conv.s.v
push.s "flowey.exe"@49225
conv.s.v
call.i file_rename(argc=2)
popz.v

:[213]
pushi.e 0
pop.v.i self.drkdrk
pushi.e 53
pop.v.i self.dcon

:[214]
push.v self.dcon
pushi.e 53
cmp.i.v EQ
bf [216]

:[215]
push.v self.m_destroy
call.i caster_stop(argc=1)
popz.v
pushi.e 54
pop.v.i self.dcon
pushi.e 120
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[216]
push.v self.dcon
pushi.e 54
cmp.i.v EQ
bt [218]

:[217]
push.v self.dcon
pushi.e 55
cmp.i.v EQ
b [219]

:[218]
push.e 1

:[219]
bf [222]

:[220]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 900
conv.i.v
pushi.e 900
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.drkdrk
push.d 0.01
add.d.v
pop.v.v self.drkdrk
push.v self.drkdrk
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 999
conv.i.v
pushi.e 999
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.drkdrk
push.d 1.1
cmp.d.v GTE
bf [222]

:[221]
pushi.e 1084
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.drkdrk_px
pushi.e 900
push.v self.drkdrk_px
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 900
push.v self.drkdrk_px
conv.v.i
pop.v.i [stacktop]self.image_yscale

:[222]
push.v self.dcon
pushi.e 51
cmp.i.v GTE
bf [230]

:[223]
pushi.e 1592
pushenv [229]

:[224]
pushi.e 1
pop.v.i self.frozen
push.v self.siner
pushi.e 1
push.d 0.5
conv.d.v
call.i random(argc=1)
add.v.i
add.v.v
pop.v.v self.siner
pushi.e 1
pop.v.i self.md
pushi.e 255
conv.i.v
pushi.e 255
conv.i.v
push.v self.siner
pushi.e 30
conv.i.d
div.d.v
call.i sin(argc=1)
call.i abs(argc=1)
pushi.e 512
mul.i.v
call.i make_color_hsv(argc=3)
pop.v.v self.image_blend
pushi.e 255
conv.i.v
pushi.e 255
conv.i.v
push.v self.siner
pushi.e 30
conv.i.d
div.d.v
call.i sin(argc=1)
call.i abs(argc=1)
pushi.e 512
mul.i.v
call.i make_color_hsv(argc=3)
pop.v.v self.blend2
pushi.e -1
pop.v.i self.flash
push.v self.xstart
pushi.e 15
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 15
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.x
push.v self.ystart
pushi.e 15
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 15
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.y
push.v self.object_index
pushi.e 1661
cmp.i.v EQ
bf [229]

:[225]
push.v self.y
pushi.e 80
sub.i.v
pop.v.v self.y
push.v self.x
pushi.e 320
cmp.i.v GT
bf [227]

:[226]
push.v self.x
pushi.e 40
sub.i.v
pop.v.v self.x

:[227]
push.v self.x
pushi.e 320
cmp.i.v LT
bf [229]

:[228]
push.v self.x
pushi.e 40
add.i.v
pop.v.v self.x

:[229]
popenv [224]

:[230]
push.v self.introcon
pushi.e 0
cmp.i.v GT
bf [273]

:[231]
push.v self.introcon
pushi.e 1
cmp.i.v EQ
bf [238]

:[232]
pushi.e 314
pop.v.i 1587.x
pushi.e 422
pop.v.i 1587.y
pushi.e 0
pop.v.i self.bgsiner
pushi.e 1
pop.v.i self.dividefactor
pushi.e 1
pop.v.i self.bganimer
push.v self.introskip
pushi.e 0
cmp.i.v EQ
bf [234]

:[233]
push.s "music/f_intro.ogg"@2740
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.mus_intro
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.mus_intro
call.i caster_play(argc=3)
popz.v

:[234]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_yview
pushi.e 480
add.i.v
pop.i.v [array]self.view_yview
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pop.v.v self.ny
push.v 1587.y
pop.v.v self.hy
push.v 1587.y
pushi.e 480
add.i.v
pop.v.v 1587.y
pushi.e 128
pop.v.i self.background_color
pushi.e 0
pop.v.i 1587.move
pushi.e 25
pop.v.i 1593.tvmode
pushi.e 0
pop.v.i 1593.siner
pushi.e 1592
pushenv [236]

:[235]
pushi.e 0
pop.v.i self.desperate
pushi.e 0
pop.v.i self.image_blend
pushi.e 0
pop.v.i self.grgrgrgr
pushi.e 0
pop.v.i self.blend2
pushi.e 99
pop.v.i self.flash

:[236]
popenv [235]
pushi.e 2
pop.v.i self.introcon
pushi.e 440
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
push.v self.introskip
pushi.e 1
cmp.i.v EQ
bf [238]

:[237]
pushi.e 1
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[238]
push.v self.bganimer
pushi.e 1
cmp.i.v EQ
bf [240]

:[239]
push.v self.bgsiner
pushi.e 1
add.i.v
pop.v.v self.bgsiner
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.bgsiner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 130
mul.i.v
push.v self.dividefactor
div.v.v
call.i abs(argc=1)
call.i make_color_rgb(argc=3)
pop.v.v self.background_color

:[240]
push.v self.introcon
pushi.e 2
cmp.i.v EQ
bf [246]

:[241]
push.v self.introskip
pushi.e 0
cmp.i.v EQ
bf [243]

:[242]
push.v self.ny
push.d 1.0909090909090908
sub.d.v
pop.v.v self.ny

:[243]
push.v self.introskip
pushi.e 1
cmp.i.v EQ
bf [245]

:[244]
push.v self.ny
pushi.e 480
sub.i.v
pop.v.v self.ny

:[245]
push.v self.ny
call.i floor(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.view_yview
push.v self.hy
push.v self.ny
call.i floor(argc=1)
add.v.v
pop.v.v 1587.y

:[246]
push.v self.introcon
pushi.e 3
cmp.i.v EQ
bf [250]

:[247]
pushi.e 1
pop.v.i self.dividefactor
pushi.e 24
pop.v.i 1593.tvmode
pushi.e 4
pop.v.i self.introcon
pushi.e 70
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
push.v self.introskip
pushi.e 1
cmp.i.v EQ
bf [249]

:[248]
pushi.e 1
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[249]
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_yview
push.v 1587.y
call.i floor(argc=1)
pop.v.v 1587.y

:[250]
push.v self.introcon
pushi.e 5
cmp.i.v EQ
bf [253]

:[251]
pushi.e 0
pop.v.i self.fadevalue
pushi.e 19
pop.v.i 1593.tvmode
pushi.e 1
pop.v.i 1587.move
push.d 5.1
pop.v.d self.introcon
pushi.e 95
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
push.v self.introskip
pushi.e 1
cmp.i.v EQ
bf [253]

:[252]
pushi.e 1
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[253]
push.v self.introcon
push.d 6.1
cmp.d.v EQ
bf [259]

:[254]
push.v self.dividefactor
pushi.e 9
add.i.v
pop.v.v self.dividefactor
push.v self.fadevalue
pushi.e 1
add.i.v
pop.v.v self.fadevalue
push.v self.fadevalue
push.d 25.5
mul.d.v
push.v self.fadevalue
push.d 25.5
mul.d.v
push.v self.fadevalue
push.d 25.5
mul.d.v
call.i make_color_rgb(argc=3)
pop.v.v self.ib
push.v self.ib
pop.v.v 1592.image_blend
push.v self.ib
pop.v.v 1592.blend2
push.v self.fadevalue
pushi.e 10
cmp.i.v GTE
bf [256]

:[255]
pushi.e 0
pop.v.i self.background_color
pushi.e 7
pop.v.i self.introcon
pushi.e 20
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[256]
pushi.e 1592
pushenv [258]

:[257]
pushi.e 4
pop.v.i self.frozen

:[258]
popenv [257]

:[259]
push.v self.introcon
pushi.e 8
cmp.i.v EQ
bf [261]

:[260]
pushi.e 1588
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.sh
pushi.e 0
push.v self.sh
conv.v.i
pop.v.i [stacktop]self.decay
pushi.e -3
conv.i.v
call.i caster_stop(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.sfx_laugh
call.i caster_play(argc=3)
popz.v
pushi.e 1
pop.v.i 1596.laugh
pushi.e 20
pop.v.i 1593.tvmode
pushi.e 9
pop.v.i self.introcon
pushi.e 180
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[261]
push.v self.introcon
pushi.e 10
cmp.i.v EQ
bf [265]

:[262]
push.v self.sh
conv.v.i
pushenv [264]

:[263]
call.i instance_destroy(argc=0)
popz.v

:[264]
popenv [263]
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_xview
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_yview
pushi.e 0
pop.v.i 1596.laugh
pushi.e 21
pop.v.i 1593.tvmode
pushi.e 11
pop.v.i self.introcon
pushi.e 20
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[265]
push.v self.introcon
pushi.e 12
cmp.i.v EQ
bf [269]

:[266]
pushi.e 1592
pushenv [268]

:[267]
pushi.e 0
pop.v.i self.frozen
pushi.e 1
pop.v.i self.desperate

:[268]
popenv [267]
pushi.e 10
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 0
pop.v.i 1593.tvmode
pushi.e -1
pop.v.i self.introcon

:[269]
push.v self.introskip
pushi.e 1
cmp.i.v EQ
bf [273]

:[270]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 10
push.v self.fadevalue
sub.v.i
pushi.e 10
conv.i.d
div.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 999
conv.i.v
pushi.e 999
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.v self.fadevalue
pushi.e 10
cmp.i.v LT
bf [272]

:[271]
pushi.e 26
pop.v.i 1593.tvmode

:[272]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[273]
push.v self.turnturn
pushi.e 0
cmp.i.v EQ
bf [275]

:[274]
push.v self.introcon
pushi.e 2
cmp.i.v EQ
b [276]

:[275]
push.e 0

:[276]
bf [278]

:[277]
pushi.e 1
pop.v.i self.turnturn
pushi.e 1
pop.v.i 1592.visible
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 999
conv.i.v
pushi.e 999
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.v 1587.y
push.v 1587.x
pushi.e 0
conv.i.v
pushi.e 2379
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[278]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [end]

:[279]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "debug"@3407
conv.s.v
pushbltn.v self.room_height
pushi.e 40
sub.i.v
pushbltn.v self.room_width
pushi.e 60
sub.i.v
call.i draw_text(argc=3)
popz.v

:[end]