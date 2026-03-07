.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushglb.v global.currentsong
call.i caster_pause(argc=1)
popz.v
pushi.e 2
pop.v.i self.con
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pop.v.v self.curview
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[2]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [5]

:[3]
pushi.e 0
pop.v.i global.facing
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_yview
pushi.e 1
add.i.v
pop.i.v [array]self.view_yview
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
push.v self.curview
pushi.e 60
add.i.v
cmp.v.v GT
bf [5]

:[4]
pushi.e 4
pop.v.i self.con

:[5]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [7]

:[6]
push.d 4.1
pop.v.d self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[7]
push.v self.con
push.d 5.1
cmp.d.v EQ
bf [9]

:[8]
push.d 4.2
pop.v.d self.con
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pop.v.v self.rememberxview
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_yview
pop.v.v self.rememberyview
pushi.e 130
pop.v.i self.xdiff
pushi.e 192
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_yview
sub.v.i
pop.v.v self.ydiff
pushi.e -4
pushi.e -1
pushbltn.v self.view_current
conv.v.i
pop.v.i [array]self.view_object
pushi.e 12
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[9]
push.v self.con
push.d 4.2
cmp.d.v EQ
bf [26]

:[10]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 130
cmp.i.v LT
bf [12]

:[11]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_xview
push.v self.xdiff
pushi.e 10
conv.i.d
div.d.v
add.v.v
pop.i.v [array]self.view_xview

:[12]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 130
cmp.i.v GT
bf [14]

:[13]
pushi.e 130
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_xview

:[14]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 192
cmp.i.v LT
bf [16]

:[15]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_yview
push.v self.ydiff
pushi.e 10
conv.i.d
div.d.v
add.v.v
pop.i.v [array]self.view_yview

:[16]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 192
cmp.i.v GT
bf [18]

:[17]
pushi.e 192
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_yview

:[18]
pushi.e -1
pushi.e 0
push.v [array]self.view_hview
pushi.e 120
cmp.i.v GT
bf [20]

:[19]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_hview
pushi.e 12
sub.i.v
pop.i.v [array]self.view_hview

:[20]
pushi.e -1
pushi.e 0
push.v [array]self.view_hview
pushi.e 120
cmp.i.v LT
bf [22]

:[21]
pushi.e 120
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_hview

:[22]
pushi.e -1
pushi.e 0
push.v [array]self.view_wview
pushi.e 160
cmp.i.v GT
bf [24]

:[23]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_wview
pushi.e 16
sub.i.v
pop.i.v [array]self.view_wview

:[24]
pushi.e -1
pushi.e 0
push.v [array]self.view_wview
pushi.e 160
cmp.i.v LT
bf [26]

:[25]
pushi.e 160
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_wview

:[26]
push.v self.con
push.d 5.2
cmp.d.v EQ
bf [28]

:[27]
pushi.e 5
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[28]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [30]

:[29]
pushi.e 1665
push.v self.dummy
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 0.8
conv.d.v
pushi.e 1
conv.i.v
push.v self.shock
call.i caster_play(argc=3)
popz.v
push.d 6.3
pop.v.d self.con
push.v self.dummy
conv.v.i
push.v [stacktop]self.x
pop.v.v self.remx
push.v self.dummy
conv.v.i
push.v [stacktop]self.y
pop.v.v self.remy
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[30]
push.v self.con
push.d 6.2
cmp.d.v EQ
bf [32]

:[31]
push.v self.remx
pushi.e 2
sub.i.v
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.dummy
conv.v.i
pop.v.v [stacktop]self.x
push.v self.remy
pushi.e 2
sub.i.v
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.dummy
conv.v.i
pop.v.v [stacktop]self.y

:[32]
push.v self.con
push.d 7.1
cmp.d.v EQ
bf [34]

:[33]
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.d 6.2
pop.v.d self.con

:[34]
push.v self.con
push.d 7.2
cmp.d.v EQ
bf [38]

:[35]
push.v self.dummy
conv.v.i
pushenv [37]

:[36]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[37]
popenv [36]
pushi.e 7
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[38]
push.v self.con
push.d 7.3
cmp.d.v EQ
bf [40]

:[39]
push.d 6.4
pop.v.d self.con
pushi.e 14
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[40]
push.v self.con
push.d 6.4
cmp.d.v EQ
bf [57]

:[41]
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 0
cmp.i.v GT
bf [43]

:[42]
pushi.e -1
pushbltn.v self.view_current
conv.v.i
dup.i 1
push.v [array]self.view_xview
push.v self.xdiff
pushi.e 10
conv.i.d
div.d.v
sub.v.v
pop.i.v [array]self.view_xview

:[43]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 0
cmp.i.v LT
bf [45]

:[44]
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_xview

:[45]
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_yview
push.v self.rememberyview
cmp.v.v GT
bf [47]

:[46]
pushi.e -1
pushbltn.v self.view_current
conv.v.i
dup.i 1
push.v [array]self.view_yview
push.v self.ydiff
pushi.e 10
conv.i.d
div.d.v
sub.v.v
pop.i.v [array]self.view_yview

:[47]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
push.v self.rememberyview
cmp.v.v LT
bf [49]

:[48]
push.v self.rememberyview
pushi.e -1
pushi.e 0
pop.v.v [array]self.view_yview

:[49]
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_hview
pushi.e 240
cmp.i.v LT
bf [51]

:[50]
pushi.e -1
pushbltn.v self.view_current
conv.v.i
dup.i 1
push.v [array]self.view_hview
pushi.e 12
add.i.v
pop.i.v [array]self.view_hview

:[51]
pushi.e -1
pushi.e 0
push.v [array]self.view_hview
pushi.e 240
cmp.i.v GT
bf [53]

:[52]
pushi.e 240
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_hview

:[53]
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_wview
pushi.e 320
cmp.i.v LT
bf [55]

:[54]
pushi.e -1
pushbltn.v self.view_current
conv.v.i
dup.i 1
push.v [array]self.view_wview
pushi.e 16
add.i.v
pop.i.v [array]self.view_wview

:[55]
pushi.e -1
pushi.e 0
push.v [array]self.view_wview
pushi.e 320
cmp.i.v GT
bf [57]

:[56]
pushi.e 320
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_wview

:[57]
push.v self.con
push.d 7.4
cmp.d.v EQ
bf [59]

:[58]
pushi.e 1576
pushi.e -1
pushbltn.v self.view_current
conv.v.i
pop.v.i [array]self.view_object
push.d 6.2
pop.v.d self.con
pushi.e 25
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[59]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [62]

:[60]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_yview
pushi.e 6
sub.i.v
pop.i.v [array]self.view_yview
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
push.v self.curview
pushi.e 20
sub.i.v
cmp.v.v LTE
bf [62]

:[61]
push.d 7.5
pop.v.d self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[62]
push.v self.con
push.d 8.5
cmp.d.v EQ
bf [66]

:[63]
pushi.e 2
pop.v.i global.facing
pushi.e 180
push.v self.dummy
conv.v.i
pop.v.i [stacktop]self.x
pushi.e 80
push.v self.dummy
conv.v.i
pop.v.i [stacktop]self.y
push.v self.dummy
conv.v.i
pushenv [65]

:[64]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[65]
popenv [64]
push.d 7.6
pop.v.d self.con
pushi.e 16
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[66]
push.v self.con
push.d 8.6
cmp.d.v EQ
bf [68]

:[67]
pushi.e 9
pop.v.i self.con

:[68]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [93]

:[69]
pushi.e 2
pop.v.i global.facing
pushi.e 0
push.v self.dummy
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 10
pop.v.i self.con
pushi.e 1
conv.i.v
push.d 0.8
conv.d.v
push.v self.predummy
call.i caster_loop(argc=3)
popz.v
pushi.e -5
pushi.e 355
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [71]

:[70]
push.s "obj_dummytrigger_222"@11877
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[71]
pushi.e -5
pushi.e 355
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [73]

:[72]
push.s "obj_dummytrigger_223"@11879
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[73]
pushi.e -5
pushi.e 355
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [75]

:[74]
push.s "obj_dummytrigger_224"@11881
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[75]
push.s "obj_dummytrigger_225"@11883
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_dummytrigger_226"@11885
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e -5
pushi.e 14
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [77]

:[76]
push.s "obj_dummytrigger_229"@11887
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_dummytrigger_230"@11889
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_dummytrigger_231"@11891
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_dummytrigger_232"@11893
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_dummytrigger_233"@11895
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_dummytrigger_234"@11897
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_dummytrigger_235"@11899
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_dummytrigger_236"@11901
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg

:[77]
pushi.e -5
pushi.e 14
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [79]

:[78]
push.s "obj_dummytrigger_241"@11903
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_dummytrigger_242"@11905
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_dummytrigger_243"@11907
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_dummytrigger_244"@11909
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_dummytrigger_245"@11911
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_dummytrigger_246"@11913
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_dummytrigger_251"@11914
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_dummytrigger_252"@11916
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_dummytrigger_253"@11918
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg

:[79]
pushi.e -5
pushi.e 14
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [81]

:[80]
push.s "obj_dummytrigger_257"@11919
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_dummytrigger_258"@11921
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_dummytrigger_259"@11923
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_dummytrigger_260"@11925
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_dummytrigger_261"@11927
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_dummytrigger_262"@11929
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg

:[81]
pushi.e -5
pushi.e 14
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [83]

:[82]
push.s "obj_dummytrigger_267"@11931
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_dummytrigger_268"@11933
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_dummytrigger_269"@11935
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_dummytrigger_270"@11937
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_dummytrigger_271"@11939
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_dummytrigger_272"@11941
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_dummytrigger_273"@11943
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_dummytrigger_274"@11945
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg

:[83]
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [91]

:[84]
pushi.e -5
pushi.e 355
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [86]

:[85]
push.s "obj_dummytrigger_279"@11946
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[86]
pushi.e -5
pushi.e 355
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [88]

:[87]
push.s "obj_dummytrigger_280"@11947
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[88]
pushi.e -5
pushi.e 355
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [90]

:[89]
push.s "obj_dummytrigger_281"@11948
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[90]
push.s "obj_dummytrigger_282"@11949
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_dummytrigger_283"@11950
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_dummytrigger_284"@11951
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_dummytrigger_285"@11953
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_dummytrigger_286"@11955
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_dummytrigger_287"@11957
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_dummytrigger_288"@11959
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_dummytrigger_289"@11961
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e 30
pop.v.i self.con

:[91]
call.i scr_regulartext(argc=0)
popz.v
pushi.e 780
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [93]

:[92]
pushi.e 1
pop.v.i 780.side

:[93]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [95]

:[94]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [96]

:[95]
push.e 0

:[96]
bf [98]

:[97]
push.v self.shock
call.i caster_free(argc=1)
popz.v
push.v self.predummy
call.i caster_free(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1668
push.v self.dummy
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.dummy
conv.v.i
pop.v.i [stacktop]self.image_index
push.d 0.45
push.v self.dummy
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 11
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[98]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [100]

:[99]
pushi.e 13
pop.v.i self.con
pushi.e 45
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
pushi.e 0
pop.v.i self.talkedto
pushi.e 32
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[100]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [104]

:[101]
pushi.e 0
pop.v.i 1576.cutscene
pushi.e 1576
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_object
pushi.e 1
pop.v.i global.interact
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [103]

:[102]
pushi.e 1
pop.v.i global.interact

:[103]
pushi.e 1216
push.v self.dummy
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 15
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[104]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [107]

:[105]
pushi.e 0
pop.v.i global.mercy
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [107]

:[106]
pushi.e 1
pop.v.i global.interact

:[107]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [113]

:[108]
pushi.e 0
pop.v.i global.border
push.s "obj_dummytrigger_344"@11963
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dummytrigger_345"@11965
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_dummytrigger_346"@11967
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_dummytrigger_347"@11969
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_dummytrigger_348"@11971
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_dummytrigger_349"@11973
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_dummytrigger_350"@11975
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e -5
pushi.e 36
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [110]

:[109]
push.s "obj_dummytrigger_354"@11976
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dummytrigger_355"@11978
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_dummytrigger_356"@11980
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_dummytrigger_357"@11982
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[110]
call.i scr_regulartext(argc=0)
popz.v
pushi.e 780
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [112]

:[111]
pushi.e 1
pop.v.i 780.side

:[112]
pushi.e 116
pop.v.i global.plot
pushi.e 1
pop.v.i self.greg
pushi.e 17
pop.v.i self.con

:[113]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [115]

:[114]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [116]

:[115]
push.e 0

:[116]
bf [122]

:[117]
pushi.e 0
pop.v.i global.interact
pushi.e -3
push.v self.dummy
conv.v.i
pop.v.i [stacktop]self.vspeed
push.v self.greg
pushi.e 0
cmp.i.v GT
bf [119]

:[118]
push.v self.greg
push.d 0.04
sub.d.v
pop.v.v self.greg

:[119]
push.v self.dummy
conv.v.i
push.v [stacktop]self.image_alpha
push.v self.greg
cmp.v.v EQ
bf [121]

:[120]
pushi.e 0
pop.v.i self.solid

:[121]
pushi.e 18
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[122]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [126]

:[123]
push.v self.dummy
conv.v.i
pushenv [125]

:[124]
call.i instance_destroy(argc=0)
popz.v

:[125]
popenv [124]
call.i instance_destroy(argc=0)
popz.v

:[126]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [132]

:[127]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [131]

:[128]
push.v 784.stringno
pushi.e 7
cmp.i.v EQ
bf [130]

:[129]
pushi.e 1668
push.v self.dummy
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.dummy
conv.v.i
pop.v.i [stacktop]self.image_index
push.d 0.45
push.v self.dummy
conv.v.i
pop.v.d [stacktop]self.image_speed

:[130]
b [132]

:[131]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 119
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 31
pop.v.i self.con
pushi.e 2
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[132]
push.v self.con
pushi.e 32
cmp.i.v EQ
bf [136]

:[133]
push.v self.dummy
conv.v.i
pushenv [135]

:[134]
pushi.e 1666
pop.v.i self.sprite_index

:[135]
popenv [134]
pushi.e 33
pop.v.i self.con
pushi.e 45
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[136]
push.v self.con
pushi.e 34
cmp.i.v EQ
bf [138]

:[137]
pushi.e 0
pop.v.i global.msc
push.s "obj_dummytrigger_417"@11984
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dummytrigger_418"@11986
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.d
pushi.e 1
push.v self.d
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 35
pop.v.i self.con

:[138]
push.v self.con
pushi.e 35
cmp.i.v EQ
bf [140]

:[139]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [141]

:[140]
push.e 0

:[141]
bf [145]

:[142]
push.v self.dummy
conv.v.i
pushenv [144]

:[143]
pushi.e 1667
pop.v.i self.sprite_index

:[144]
popenv [143]
push.s "obj_dummytrigger_427"@11988
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dummytrigger_428"@11990
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_dummytrigger_429"@11992
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_dummytrigger_430"@11994
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_dummytrigger_431"@11996
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_dummytrigger_432"@11998
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
pop.v.v self.d
pushi.e 1
push.v self.d
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 36
pop.v.i self.con

:[145]
push.v self.con
pushi.e 36
cmp.i.v EQ
bf [147]

:[146]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [148]

:[147]
push.e 0

:[148]
bf [150]

:[149]
pushi.e 37
pop.v.i self.con
pushi.e 93
pop.v.i global.battlegroup
pushi.e 204
pushi.e -5
pushi.e 200
pop.v.i [array]global.flag
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
pushi.e 0
pop.v.i self.talkedto
pushi.e 32
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[150]
push.v self.con
pushi.e 38
cmp.i.v EQ
bf [156]

:[151]
push.v self.dummy
conv.v.i
pushenv [153]

:[152]
call.i instance_destroy(argc=0)
popz.v

:[153]
popenv [152]
pushi.e 0
pop.v.i 1576.cutscene
pushi.e 1576
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_object
pushi.e 1
pop.v.i global.interact
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [155]

:[154]
pushi.e 1
pop.v.i global.interact

:[155]
pushi.e 39
pop.v.i self.con
pushi.e 4
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[156]
push.v self.con
pushi.e 40
cmp.i.v EQ
bf [end]

:[157]
pushi.e 0
pop.v.i global.mercy
pushi.e 117
pop.v.i global.plot
pushi.e 0
pop.v.i global.interact
call.i instance_destroy(argc=0)
popz.v
pushi.e 41
pop.v.i self.con

:[end]