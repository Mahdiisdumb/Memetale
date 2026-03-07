.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [8]

:[1]
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.m
push.d 0.03
push.v self.m
conv.v.i
pop.v.d [stacktop]self.fadespeed
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pop.v.v self.remx
pushi.e 1
pop.v.i 1576.cutscene
pushi.e -4
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_object
pushi.e 800
pop.v.i 1576.x
push.d 0.5
pop.v.d self.con
pushi.e 0
pop.v.i self.ss
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "F"@47599
conv.s.v
push.s "Sans"@6900
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.sf2
call.i ossafe_ini_close(argc=0)
popz.v
push.v self.sf2
pushi.e 3
cmp.i.v GTE
bf [3]

:[2]
push.v self.murder
pushi.e 1
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [8]

:[5]
push.v self.m
conv.v.i
pushenv [7]

:[6]
push.d 0.1
pop.v.d self.fadespeed

:[7]
popenv [6]
pushi.e 5
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[8]
push.v self.con
push.d 1.5
cmp.d.v EQ
bf [10]

:[9]
pushi.e 2
pop.v.i self.con

:[10]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [23]

:[11]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_xview
pushi.e 1
add.i.v
pop.i.v [array]self.view_xview
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 680
cmp.i.v GTE
bf [13]

:[12]
push.v self.ss
pushi.e 0
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
pushi.e 1
pop.v.i self.ss
pushi.e 1456
conv.i.v
push.v 1576.y
pushi.e 920
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.sans
pushi.e 1500
push.v self.sans
conv.v.i
pop.v.i [stacktop]self.depth

:[16]
push.v self.sf2
pushi.e 3
cmp.i.v GTE
bf [18]

:[17]
push.v self.murder
pushi.e 1
cmp.i.v EQ
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_xview
pushi.e 3
add.i.v
pop.i.v [array]self.view_xview

:[21]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 750
cmp.i.v GTE
bf [23]

:[22]
pushi.e 3
pop.v.i self.con
pushi.e 750
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_xview

:[23]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [31]

:[24]
push.v self.m
conv.v.i
pushenv [26]

:[25]
call.i instance_destroy(argc=0)
popz.v

:[26]
popenv [25]
push.d 3.1
pop.v.d self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.v self.sf2
pushi.e 3
cmp.i.v GTE
bf [28]

:[27]
push.v self.murder
pushi.e 1
cmp.i.v EQ
b [29]

:[28]
push.e 0

:[29]
bf [31]

:[30]
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[31]
push.v self.con
push.d 4.1
cmp.d.v EQ
bf [39]

:[32]
push.v self.murder
pushi.e 0
cmp.i.v EQ
bf [38]

:[33]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "EndMet"@50829
conv.s.v
push.s "Sans"@6900
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.endmet
call.i ossafe_ini_close(argc=0)
popz.v
push.v self.endmet
pushi.e 0
cmp.i.v EQ
bf [35]

:[34]
push.s "music/churchbell.ogg"@2872
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.ch
pushi.e 1
conv.i.v
push.d 0.8
conv.d.v
push.v self.ch
call.i caster_play(argc=3)
popz.v
pushi.e 4
pop.v.i self.con
pushi.e 310
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[35]
push.v self.endmet
pushi.e 1
cmp.i.v EQ
bf [37]

:[36]
push.s "music/churchbell.ogg"@2872
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.ch
push.d 1.5
conv.d.v
push.d 0.8
conv.d.v
push.v self.ch
call.i caster_play(argc=3)
popz.v
pushi.e 4
pop.v.i self.con
push.d 206.66666666666666
pushi.e -1
pushi.e 4
pop.v.d [array]self.alarm

:[37]
b [39]

:[38]
pushi.e 100
pop.v.i self.con

:[39]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [50]

:[40]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "EndMet"@50829
conv.s.v
push.s "Sans"@6900
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.endmet
pushi.e 1
conv.i.v
push.s "EndMet"@50829
conv.s.v
push.s "Sans"@6900
conv.s.v
call.i ini_write_real(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "MeetLv1"@50831
conv.s.v
push.s "Sans"@6900
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.ml1
pushi.e 0
conv.i.v
push.s "Pass"@50833
conv.s.v
push.s "Sans"@6900
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.pass
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v
pushi.e 10
pop.v.i global.typer
push.v self.endmet
pushi.e 1
cmp.i.v EQ
bf [42]

:[41]
pushi.e 100
pop.v.i global.typer

:[42]
pushi.e 0
pop.v.i global.msc
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_lastsans_trigger_187"@15044
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_188"@15046
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_189"@15048
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_190"@15050
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_191"@15052
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_192"@15054
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_193"@15056
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_194"@15058
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_195"@15060
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_196"@15062
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_197"@15064
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_198"@15066
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_199"@15068
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_200"@15070
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_201"@15072
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_202"@15074
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_203"@15076
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_204"@15078
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_205"@15080
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_206"@15082
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 19
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_207"@15084
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 20
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_208"@15086
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 21
pop.v.v [array]global.msg
pushi.e 6
pop.v.i self.con
push.v self.pass
pushi.e 0
cmp.i.v GT
bf [45]

:[43]
pushglb.v global.lv
pushi.e 1
cmp.i.v EQ
bf [45]

:[44]
pushglb.v global.kills
pushi.e 0
cmp.i.v EQ
b [46]

:[45]
push.e 0

:[46]
bf [48]

:[47]
push.s "obj_lastsans_trigger_214"@15088
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 26
pop.v.i self.con

:[48]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushglb.v global.kills
pushi.e 0
cmp.i.v GT
bf [50]

:[49]
push.d 5.1
pop.v.d self.con

:[50]
push.v self.con
push.d 5.1
cmp.d.v EQ
bf [52]

:[51]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [53]

:[52]
push.e 0

:[53]
bf [55]

:[54]
push.d 4.2
pop.v.d self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[55]
push.v self.con
push.d 5.2
cmp.d.v EQ
bf [57]

:[56]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [58]

:[57]
push.e 0

:[58]
bf [62]

:[59]
push.s "music/chokedup.ogg"@2848
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
pushi.e 10
pop.v.i global.typer
push.v self.endmet
pushi.e 1
cmp.i.v EQ
bf [61]

:[60]
pushi.e 100
pop.v.i global.typer

:[61]
pushi.e 0
pop.v.i global.msc
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_lastsans_trigger_243"@15090
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_244"@15092
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_245"@15094
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_246"@15096
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_247"@15098
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_248"@15100
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_249"@15102
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 10
pop.v.i self.con

:[62]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [64]

:[63]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [65]

:[64]
push.e 0

:[65]
bf [69]

:[66]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "MeetLv1"@50831
conv.s.v
push.s "Sans"@6900
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.ml1
push.v self.ml1
pushi.e 1
add.i.v
push.s "MeetLv1"@50831
conv.s.v
push.s "Sans"@6900
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v
push.s "music/chokedup.ogg"@2848
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
pushi.e 3
pop.v.i global.facechoice
pushi.e 3
pop.v.i global.faceemotion
pushi.e 10
pop.v.i global.typer
push.s "obj_lastsans_trigger_268"@15103
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_269"@15105
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_270"@15107
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_271"@15109
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_274"@15111
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_275"@15113
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_276"@15115
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_277"@15117
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_278"@15119
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_279"@15121
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_280"@15123
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_283"@15125
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_284"@15127
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_285"@15129
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_286"@15131
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_287"@15133
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_288"@15135
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_289"@15137
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_290"@15139
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_291"@15141
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 19
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_292"@15142
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 20
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_293"@15144
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 21
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_294"@15146
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 22
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_295"@15148
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 23
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_296"@15150
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 24
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_297"@15152
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 25
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_298"@15154
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 26
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_299"@15156
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 27
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_300"@15158
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 28
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_301"@15160
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 29
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_302"@15162
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 30
pop.v.v [array]global.msg
pushi.e 7
pop.v.i self.con
push.v self.ml1
pushi.e 0
cmp.i.v GT
bf [68]

:[67]
pushi.e 26
pop.v.i self.con

:[68]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[69]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [71]

:[70]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [72]

:[71]
push.e 0

:[72]
bf [79]

:[73]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_xview
pushi.e 1
sub.i.v
pop.i.v [array]self.view_xview
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 681
cmp.i.v LT
bf [77]

:[74]
push.v self.sans
conv.v.i
pushenv [76]

:[75]
call.i instance_destroy(argc=0)
popz.v

:[76]
popenv [75]

:[77]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
push.v self.remx
cmp.v.v LTE
bf [79]

:[78]
pushi.e 8
pop.v.i self.con

:[79]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [81]

:[80]
pushi.e 1576
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_object
pushi.e 0
pop.v.i 1576.cutscene
pushi.e 9
pop.v.i self.con
pushi.e 201
pop.v.i global.plot
pushi.e 0
pop.v.i global.interact
call.i instance_destroy(argc=0)
popz.v

:[81]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [83]

:[82]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [84]

:[83]
push.e 0

:[84]
bf [91]

:[85]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "MeetLv2"@50835
conv.s.v
push.s "Sans"@6900
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.ml2
push.v self.ml2
pushi.e 1
add.i.v
push.s "MeetLv2"@50835
conv.s.v
push.s "Sans"@6900
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v
pushi.e 1
pop.v.i global.interact
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bt [87]

:[86]
push.v self.ml2
pushi.e 0
cmp.i.v EQ
b [88]

:[87]
push.e 1

:[88]
bf [90]

:[89]
pushi.e 11
pop.v.i self.con
pushi.e 300
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
b [91]

:[90]
pushi.e 22
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[91]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [93]

:[92]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [94]

:[93]
push.e 0

:[94]
bf [97]

:[95]
pushi.e 3
pop.v.i global.facechoice
pushi.e 3
pop.v.i global.faceemotion
pushi.e 10
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_lastsans_trigger_361"@15163
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_362"@15165
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_363"@15167
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_364"@15169
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_365"@15171
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 7
pop.v.i self.con
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [97]

:[96]
pushi.e 15
pop.v.i self.con

:[97]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [99]

:[98]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [100]

:[99]
push.e 0

:[100]
bf [102]

:[101]
pushi.e 3
pop.v.i global.facechoice
pushi.e 3
pop.v.i global.faceemotion
pushi.e 17
pop.v.i global.typer
pushi.e 835
pop.v.i global.msc
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 16
pop.v.i self.con

:[102]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [104]

:[103]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [105]

:[104]
push.e 0

:[105]
bf [107]

:[106]
pushi.e 0
pop.v.i global.msc
pushi.e 4
pop.v.i global.faceemotion
pushi.e 3
pop.v.i global.facechoice
pushi.e 21
pop.v.i global.typer
push.s "obj_lastsans_trigger_390"@15173
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
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 7
pop.v.i self.con

:[107]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [109]

:[108]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [110]

:[109]
push.e 0

:[110]
bf [112]

:[111]
pushi.e 0
pop.v.i global.msc
pushi.e 4
pop.v.i global.faceemotion
pushi.e 3
pop.v.i global.facechoice
pushi.e 21
pop.v.i global.typer
push.s "obj_lastsans_trigger_402"@15175
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
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 7
pop.v.i self.con

:[112]
push.v self.con
pushi.e 23
cmp.i.v EQ
bf [114]

:[113]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [115]

:[114]
push.e 0

:[115]
bf [131]

:[116]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "MeetLv"@50837
conv.s.v
push.s "Sans"@6900
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.ml
pushglb.v global.lv
push.s "MeetLv"@50837
conv.s.v
push.s "Sans"@6900
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v
pushi.e 3
pop.v.i global.facechoice
pushi.e 1
pop.v.i global.faceemotion
pushi.e 17
pop.v.i global.typer
push.s "obj_lastsans_trigger_421"@15177
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_422"@15179
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_423"@15181
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_424"@15183
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushglb.v global.lv
pushi.e 2
cmp.i.v EQ
bf [118]

:[117]
push.s "obj_lastsans_trigger_428"@15185
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_429"@15187
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_430"@15189
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_431"@15191
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_432"@15193
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_433"@15195
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg

:[118]
pushglb.v global.lv
pushi.e 3
cmp.i.v EQ
bf [120]

:[119]
push.s "obj_lastsans_trigger_437"@15197
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_438"@15199
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_439"@15201
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_440"@15203
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg

:[120]
pushglb.v global.lv
pushi.e 4
cmp.i.v GTE
bf [122]

:[121]
push.s "obj_lastsans_trigger_444"@15205
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_445"@15207
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_446"@15209
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_447"@15211
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_448"@15213
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_449"@15215
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_450"@15217
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg

:[122]
pushglb.v global.lv
pushi.e 10
cmp.i.v GTE
bf [124]

:[123]
push.s "obj_lastsans_trigger_454"@15219
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_455"@15221
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_456"@15223
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_457"@15225
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_458"@15227
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_459"@15229
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_460"@15231
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_461"@15233
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_462"@15235
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg

:[124]
pushglb.v global.lv
pushi.e 15
cmp.i.v GTE
bf [126]

:[125]
push.s "obj_lastsans_trigger_466"@15237
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_467"@15239
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_468"@15241
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_469"@15243
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_470"@15245
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_471"@15247
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_472"@15249
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_473"@15251
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_474"@15253
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_475"@15255
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_476"@15257
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_477"@15259
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_478"@15261
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_479"@15263
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg

:[126]
pushglb.v global.lv
push.v self.ml
pushi.e 1
add.i.v
cmp.v.v EQ
bf [128]

:[127]
pushi.e 1
pop.v.i global.faceemotion
push.s "obj_lastsans_trigger_485"@15265
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_486"@15267
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_487"@15269
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_488"@15271
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_489"@15273
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_490"@15275
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg

:[128]
pushglb.v global.lv
push.v self.ml
cmp.v.v EQ
bf [130]

:[129]
push.s "obj_lastsans_trigger_494"@15277
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_495"@15279
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[130]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 7
pop.v.i self.con

:[131]
push.v self.con
pushi.e 26
cmp.i.v EQ
bf [133]

:[132]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [134]

:[133]
push.e 0

:[134]
bf [142]

:[135]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "MeetLv1"@50831
conv.s.v
push.s "Sans"@6900
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.ml1
push.v self.ml1
pushi.e 1
add.i.v
push.s "MeetLv1"@50831
conv.s.v
push.s "Sans"@6900
conv.s.v
call.i ini_write_real(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "Pass"@50833
conv.s.v
push.s "Sans"@6900
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.pass
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v
pushi.e 3
pop.v.i global.facechoice
pushi.e 1
pop.v.i global.faceemotion
pushi.e 17
pop.v.i global.typer
push.s "obj_lastsans_trigger_513"@15280
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_514"@15282
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_515"@15284
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_516"@15286
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_517"@15288
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_518"@15290
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_519"@15292
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_520"@15294
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_521"@15296
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_522"@15298
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_523"@15300
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_524"@15302
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_525"@15304
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_526"@15306
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_527"@15308
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_528"@15310
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.v self.pass
pushi.e 1
cmp.i.v EQ
bf [137]

:[136]
push.s "obj_lastsans_trigger_532"@15311
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_533"@15313
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_534"@15315
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_535"@15316
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_536"@15318
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_537"@15320
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_538"@15322
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_539"@15324
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_540"@15326
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_541"@15328
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_542"@15330
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_543"@15332
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_544"@15334
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_545"@15336
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_546"@15337
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_547"@15338
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg

:[137]
push.v self.pass
pushi.e 2
cmp.i.v EQ
bf [139]

:[138]
push.s "obj_lastsans_trigger_553"@15339
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_554"@15340
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_555"@15341
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_556"@15342
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_557"@15343
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_558"@15345
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_559"@15347
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_560"@15349
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_561"@15351
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_562"@15353
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_563"@15355
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_564"@15357
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_565"@15359
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_566"@15361
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_567"@15363
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_568"@15365
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_569"@15367
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_570"@15369
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_571"@15370
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_572"@15372
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 19
pop.v.v [array]global.msg
pushi.e 1
pushi.e -5
pushi.e 497
pop.v.i [array]global.flag

:[139]
push.v self.pass
pushi.e 3
cmp.i.v EQ
bf [141]

:[140]
push.s "obj_lastsans_trigger_578"@15373
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_579"@15375
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_580"@15377
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_581"@15378
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_582"@15380
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 1
pushi.e -5
pushi.e 497
pop.v.i [array]global.flag

:[141]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 30
pop.v.i self.con

:[142]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [144]

:[143]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 1
cmp.i.v EQ
b [145]

:[144]
push.e 0

:[145]
bf [161]

:[146]
push.v 784.stringno
pushi.e 13
cmp.i.v EQ
bf [148]

:[147]
push.v self.pass
pushi.e 0
cmp.i.v EQ
b [149]

:[148]
push.e 0

:[149]
bf [151]

:[150]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "Pass"@50833
conv.s.v
push.s "Sans"@6900
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v

:[151]
push.v 784.stringno
pushi.e 13
cmp.i.v EQ
bf [153]

:[152]
push.v self.pass
pushi.e 1
cmp.i.v EQ
b [154]

:[153]
push.e 0

:[154]
bf [156]

:[155]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 2
conv.i.v
push.s "Pass"@50833
conv.s.v
push.s "Sans"@6900
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v

:[156]
push.v 784.stringno
pushi.e 19
cmp.i.v EQ
bf [158]

:[157]
push.v self.pass
pushi.e 2
cmp.i.v EQ
b [159]

:[158]
push.e 0

:[159]
bf [161]

:[160]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 3
conv.i.v
push.s "Pass"@50833
conv.s.v
push.s "Sans"@6900
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v

:[161]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [163]

:[162]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [164]

:[163]
push.e 0

:[164]
bf [166]

:[165]
pushi.e 7
pop.v.i self.con

:[166]
push.v self.con
pushi.e 100
cmp.i.v EQ
bf [196]

:[167]
pushi.e 0
pop.v.i 1576.visible
pushi.e 1133
conv.i.v
push.v 1576.y
push.v 1576.x
call.i scr_marker(argc=3)
pop.v.v self.mc
push.v 1576.depth
push.v self.mc
conv.v.i
pop.v.v [stacktop]self.depth
pushi.e 0
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.image_blend
pushi.e 0
pop.v.i global.msc
pushi.e 3
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e 17
pop.v.i global.typer
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "F"@47599
conv.s.v
push.s "Sans"@6900
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.sansf
pushi.e 0
conv.i.v
push.s "SK"@47600
conv.s.v
push.s "Sans"@6900
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.sansk
call.i ossafe_ini_close(argc=0)
popz.v
push.s "obj_lastsans_trigger_634"@15382
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_635"@15384
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_636"@15385
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_637"@15387
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_638"@15389
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_639"@15391
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 101
pop.v.i self.con
push.v self.sansf
pushi.e 1
cmp.i.v EQ
bf [169]

:[168]
push.s "obj_lastsans_trigger_643"@15392
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_644"@15394
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_645"@15396
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 111
pop.v.i self.con

:[169]
push.v self.sansf
pushi.e 2
cmp.i.v EQ
bf [171]

:[170]
push.s "obj_lastsans_trigger_650"@15398
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_651"@15400
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_652"@15402
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_653"@15404
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_654"@15406
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 111
pop.v.i self.con

:[171]
push.v self.sansf
pushi.e 3
cmp.i.v EQ
bf [173]

:[172]
push.s "obj_lastsans_trigger_659"@15407
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_660"@15409
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_661"@15410
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_662"@15412
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_663"@15414
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 111
pop.v.i self.con

:[173]
push.v self.sansf
pushi.e 4
cmp.i.v EQ
bf [175]

:[174]
push.s "obj_lastsans_trigger_668"@15415
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_669"@15417
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_670"@15419
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_671"@15421
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 111
pop.v.i self.con

:[175]
push.v self.sansf
pushi.e 5
cmp.i.v EQ
bf [177]

:[176]
push.s "obj_lastsans_trigger_676"@15422
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_677"@15424
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_678"@15426
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_679"@15428
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_680"@15430
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 111
pop.v.i self.con

:[177]
push.v self.sansf
pushi.e 6
cmp.i.v EQ
bf [179]

:[178]
push.s "obj_lastsans_trigger_685"@15431
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_686"@15433
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_687"@15435
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_688"@15436
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_689"@15438
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 111
pop.v.i self.con

:[179]
push.v self.sansf
pushi.e 7
cmp.i.v EQ
bf [181]

:[180]
push.s "obj_lastsans_trigger_694"@15439
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_695"@15441
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_696"@15443
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_697"@15445
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_698"@15447
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 111
pop.v.i self.con

:[181]
push.v self.sansf
pushi.e 8
cmp.i.v EQ
bf [183]

:[182]
push.s "obj_lastsans_trigger_703"@15448
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_704"@15450
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_705"@15452
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_706"@15453
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_707"@15455
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 111
pop.v.i self.con

:[183]
push.v self.sansf
pushi.e 9
cmp.i.v EQ
bf [185]

:[184]
push.s "obj_lastsans_trigger_713"@15456
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_714"@15457
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_715"@15458
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_716"@15460
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_717"@15462
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 111
pop.v.i self.con

:[185]
push.v self.sansf
pushi.e 10
cmp.i.v EQ
bf [187]

:[186]
push.s "obj_lastsans_trigger_723"@15463
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_724"@15465
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_725"@15467
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_726"@15469
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_727"@15471
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_728"@15473
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_729"@15475
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 111
pop.v.i self.con

:[187]
push.v self.sansf
pushi.e 11
cmp.i.v EQ
bf [189]

:[188]
push.s "obj_lastsans_trigger_735"@15476
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_736"@15478
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_737"@15480
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_738"@15482
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_739"@15484
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_740"@15486
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_741"@15488
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 111
pop.v.i self.con

:[189]
push.v self.sansf
pushi.e 12
cmp.i.v GTE
bf [191]

:[190]
push.s "obj_lastsans_trigger_747"@15490
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 111
pop.v.i self.con

:[191]
push.v self.sansk
pushi.e 0
cmp.i.v GT
bf [193]

:[192]
push.s "obj_lastsans_trigger_752"@15491
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_753"@15493
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_754"@15494
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_755"@15496
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[193]
push.v self.sansk
pushi.e 1
cmp.i.v GT
bf [195]

:[194]
push.s "obj_lastsans_trigger_759"@15497
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_760"@15498
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_761"@15499
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_762"@15501
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[195]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[196]
push.v self.con
pushi.e 101
cmp.i.v EQ
bf [198]

:[197]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [199]

:[198]
push.e 0

:[199]
bf [201]

:[200]
pushi.e 1
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.image_index
push.d 0.5
push.v self.mc
conv.v.i
pop.v.d [stacktop]self.hspeed
pushi.e 102
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[201]
push.v self.con
pushi.e 103
cmp.i.v EQ
bf [203]

:[202]
pushi.e 0
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 104
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[203]
push.v self.con
pushi.e 105
cmp.i.v EQ
bf [205]

:[204]
push.s "obj_lastsans_trigger_786"@15503
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_787"@15505
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_788"@15507
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_789"@15509
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_790"@15511
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_791"@15513
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 106
pop.v.i self.con

:[205]
push.v self.con
pushi.e 106
cmp.i.v EQ
bf [207]

:[206]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [208]

:[207]
push.e 0

:[208]
bf [210]

:[209]
pushi.e 1
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.image_index
push.d 0.5
push.v self.mc
conv.v.i
pop.v.d [stacktop]self.hspeed
pushi.e 107
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[210]
push.v self.con
pushi.e 108
cmp.i.v EQ
bf [212]

:[211]
pushi.e 0
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 109
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[212]
push.v self.con
pushi.e 110
cmp.i.v EQ
bf [214]

:[213]
push.s "obj_lastsans_trigger_815"@15515
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_817"@15517
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_lastsans_trigger_818"@15519
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 111
pop.v.i self.con

:[214]
push.v self.con
pushi.e 111
cmp.i.v EQ
bf [216]

:[215]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [217]

:[216]
push.e 0

:[217]
bf [219]

:[218]
pushi.e 95
pop.v.i global.battlegroup
pushi.e 1
pop.v.i global.mercy
pushi.e 143
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 112
pop.v.i self.con
pushi.e 32
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[219]
push.v self.con
pushi.e 113
cmp.i.v EQ
bf [end]

:[220]
push.v self.sans
conv.v.i
pushenv [222]

:[221]
call.i instance_destroy(argc=0)
popz.v

:[222]
popenv [221]
pushi.e 0
pop.v.i global.interact
pushi.e 1576
pushenv [224]

:[223]
pushi.e 0
pop.v.i self.cutscene

:[224]
popenv [223]
pushi.e 1576
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_object
push.v self.mc
conv.v.i
pushenv [226]

:[225]
call.i instance_destroy(argc=0)
popz.v

:[226]
popenv [225]
pushi.e 1
pop.v.i 1576.visible
call.i instance_destroy(argc=0)
popz.v
exit.i

:[end]