.localvar 0 arguments

:[0]
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
bf [10]

:[7]
pushi.e 0
pop.v.i global.facechoice
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_labtv_event_94"@14870
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_labtv_event_95"@14872
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_labtv_event_96"@14874
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.talkedto
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
push.s "obj_labtv_event_98"@14876
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[9]
pushi.e 1
pop.v.i self.talkedto
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
bf [77]

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
push.s "labtv_cancel"@31774
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
push.s "labtv_tape1"@31765
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
push.s "labtv_tape2"@31767
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
push.s "labtv_tape3"@31769
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
push.s "labtv_tape4"@31771
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
push.s "labtv_tape5"@31773
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
bf [77]

:[15]
pushi.e 38
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [18]

:[16]
push.v self.hearty
pushi.e 0
cmp.i.v GT
bf [18]

:[17]
push.v self.hearty
pushi.e 1
sub.i.v
pop.v.v self.hearty

:[18]
pushi.e 40
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [30]

:[19]
push.v self.hearty
pushi.e 2
cmp.i.v LT
bf [30]

:[20]
push.v self.heartx
pushi.e 0
cmp.i.v EQ
bf [25]

:[21]
push.v self.hearty
pushi.e 1
cmp.i.v EQ
bf [23]

:[22]
push.v self.hearty
pushi.e 1
add.i.v
pop.v.v self.hearty

:[23]
push.v self.hearty
pushi.e 0
cmp.i.v EQ
bf [25]

:[24]
push.v self.hearty
pushi.e 1
add.i.v
pop.v.v self.hearty

:[25]
push.v self.heartx
pushi.e 1
cmp.i.v EQ
bf [30]

:[26]
push.v self.hearty
pushi.e 1
cmp.i.v EQ
bf [28]

:[27]
push.v self.hearty
pushi.e 1
add.i.v
pop.v.v self.hearty

:[28]
push.v self.hearty
pushi.e 0
cmp.i.v EQ
bf [30]

:[29]
push.v self.hearty
pushi.e 1
add.i.v
pop.v.v self.hearty

:[30]
pushi.e 39
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [38]

:[31]
push.v self.heartx
pushi.e 0
cmp.i.v EQ
bf [38]

:[32]
push.v self.hearty
pushi.e 0
cmp.i.v EQ
bf [34]

:[33]
push.v self.heartx
pushi.e 1
add.i.v
pop.v.v self.heartx

:[34]
push.v self.hearty
pushi.e 1
cmp.i.v EQ
bf [36]

:[35]
push.v self.heartx
pushi.e 1
add.i.v
pop.v.v self.heartx

:[36]
push.v self.hearty
pushi.e 2
cmp.i.v EQ
bf [38]

:[37]
push.v self.heartx
pushi.e 1
add.i.v
pop.v.v self.heartx

:[38]
pushi.e 37
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [46]

:[39]
push.v self.heartx
pushi.e 1
cmp.i.v EQ
bf [46]

:[40]
push.v self.hearty
pushi.e 0
cmp.i.v EQ
bf [42]

:[41]
push.v self.heartx
pushi.e 1
sub.i.v
pop.v.v self.heartx

:[42]
push.v self.hearty
pushi.e 1
cmp.i.v EQ
bf [44]

:[43]
push.v self.heartx
pushi.e 1
sub.i.v
pop.v.v self.heartx

:[44]
push.v self.hearty
pushi.e 2
cmp.i.v EQ
bf [46]

:[45]
push.v self.heartx
pushi.e 1
sub.i.v
pop.v.v self.heartx

:[46]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [77]

:[47]
pushi.e 100
pop.v.i self.con
push.v self.heartx
pushi.e 0
cmp.i.v EQ
bf [49]

:[48]
push.v self.hearty
pushi.e 0
cmp.i.v EQ
b [50]

:[49]
push.e 0

:[50]
bf [52]

:[51]
pushi.e 100
pop.v.i self.con

:[52]
push.v self.heartx
pushi.e 1
cmp.i.v EQ
bf [54]

:[53]
push.v self.hearty
pushi.e 0
cmp.i.v EQ
b [55]

:[54]
push.e 0

:[55]
bf [57]

:[56]
pushi.e 10
pop.v.i self.con
pushi.e 20
pop.v.i self.nextcon

:[57]
push.v self.heartx
pushi.e 0
cmp.i.v EQ
bf [59]

:[58]
push.v self.hearty
pushi.e 1
cmp.i.v EQ
b [60]

:[59]
push.e 0

:[60]
bf [62]

:[61]
pushi.e 10
pop.v.i self.con
pushi.e 30
pop.v.i self.nextcon

:[62]
push.v self.heartx
pushi.e 1
cmp.i.v EQ
bf [64]

:[63]
push.v self.hearty
pushi.e 1
cmp.i.v EQ
b [65]

:[64]
push.e 0

:[65]
bf [67]

:[66]
pushi.e 10
pop.v.i self.con
pushi.e 40
pop.v.i self.nextcon

:[67]
push.v self.heartx
pushi.e 0
cmp.i.v EQ
bf [69]

:[68]
push.v self.hearty
pushi.e 2
cmp.i.v EQ
b [70]

:[69]
push.e 0

:[70]
bf [72]

:[71]
pushi.e 10
pop.v.i self.con
pushi.e 50
pop.v.i self.nextcon

:[72]
push.v self.heartx
pushi.e 1
cmp.i.v EQ
bf [74]

:[73]
push.v self.hearty
pushi.e 2
cmp.i.v EQ
b [75]

:[74]
push.e 0

:[75]
bf [77]

:[76]
pushi.e 10
pop.v.i self.con
pushi.e 60
pop.v.i self.nextcon

:[77]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [79]

:[78]
pushglb.v global.currentsong
call.i caster_get_volume(argc=1)
pop.v.v self.ivol
push.v self.ivol
pop.v.v self.vol
pushi.e 0
pop.v.i self.alph
pushi.e 109
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 11
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[79]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [81]

:[80]
pushi.e 13
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[81]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [87]

:[82]
push.v self.vol
pushi.e 0
cmp.i.v GT
bf [84]

:[83]
push.v self.vol
push.d 0.04
sub.d.v
pop.v.v self.vol
b [85]

:[84]
pushi.e 0
pop.v.i self.vol

:[85]
push.v self.vol
pushglb.v global.currentsong
call.i caster_set_volume(argc=2)
popz.v
push.v self.alph
push.d 0.04
add.d.v
pop.v.v self.alph
push.v self.alph
pushi.e 1
cmp.i.v GT
bf [87]

:[86]
pushi.e 1
pop.v.i self.alph

:[87]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [89]

:[88]
pushglb.v global.currentsong
call.i caster_pause(argc=1)
popz.v
push.v self.nextcon
pop.v.v self.con

:[89]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [91]

:[90]
push.s "music/house2.ogg"@2629
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.hh
push.d 0.8
conv.d.v
push.d 0.7
conv.d.v
push.v self.hh
call.i caster_loop(argc=3)
popz.v
pushi.e 21
pop.v.i self.con

:[91]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [93]

:[92]
pushi.e 0
pop.v.i global.msc
pushi.e 4
pop.v.i global.typer
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.facechoice
push.s "obj_labtv_event_287"@14878
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_labtv_event_288"@14880
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_labtv_event_289"@14882
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_labtv_event_290"@14884
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_labtv_event_291"@14886
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_labtv_event_292"@14888
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_labtv_event_293"@14890
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_labtv_event_294"@14892
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_labtv_event_295"@14894
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_labtv_event_296"@14895
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_labtv_event_297"@14897
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_labtv_event_298"@14899
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_labtv_event_299"@14901
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_labtv_event_300"@14903
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_labtv_event_301"@14905
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_labtv_event_302"@14907
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_labtv_event_303"@14909
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_labtv_event_304"@14911
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
push.s "obj_labtv_event_305"@14913
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]global.msg
push.s "obj_labtv_event_306"@14915
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 19
pop.v.v [array]global.msg
push.s "obj_labtv_event_307"@14917
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 20
pop.v.v [array]global.msg
push.s "obj_labtv_event_308"@14918
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 21
pop.v.v [array]global.msg
push.s "obj_labtv_event_309"@14920
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 22
pop.v.v [array]global.msg
push.s "obj_labtv_event_310"@14922
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 23
pop.v.v [array]global.msg
push.s "obj_labtv_event_311"@14924
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 24
pop.v.v [array]global.msg
push.s "obj_labtv_event_312"@14926
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 25
pop.v.v [array]global.msg
push.s "obj_labtv_event_313"@14928
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 26
pop.v.v [array]global.msg
push.s "obj_labtv_event_314"@14929
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 27
pop.v.v [array]global.msg
push.s "obj_labtv_event_315"@14931
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 28
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
push.d 0.7
pop.v.d self.hhvol
pushi.e 22
pop.v.i self.con

:[93]
push.v self.con
pushi.e 22
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
bf [99]

:[97]
push.v self.hhvol
push.d 0.04
sub.d.v
pop.v.v self.hhvol
push.v self.hhvol
push.v self.hh
call.i caster_set_volume(argc=2)
popz.v
push.v self.hhvol
pushi.e 0
cmp.i.v LTE
bf [99]

:[98]
push.v self.hh
call.i caster_free(argc=1)
popz.v
pushi.e 90
pop.v.i self.con

:[99]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [101]

:[100]
push.s "music/birdnoise.ogg"@2870
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.hh
push.d 0.8
conv.d.v
push.d 0.9
conv.d.v
push.v self.hh
call.i caster_loop(argc=3)
popz.v
pushi.e 31
pop.v.i self.con

:[101]
push.v self.con
pushi.e 31
cmp.i.v EQ
bf [103]

:[102]
pushi.e 0
pop.v.i global.msc
pushi.e 76
pop.v.i global.typer
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.facechoice
push.s "obj_labtv_event_350"@14933
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_labtv_event_351"@14935
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_labtv_event_352"@14937
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_labtv_event_353"@14939
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_labtv_event_354"@14941
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_labtv_event_355"@14943
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
push.d 0.7
pop.v.d self.hhvol
pushi.e 32
pop.v.i self.con

:[103]
push.v self.con
pushi.e 32
cmp.i.v EQ
bf [105]

:[104]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [106]

:[105]
push.e 0

:[106]
bf [109]

:[107]
push.v self.hhvol
push.d 0.04
sub.d.v
pop.v.v self.hhvol
push.v self.hhvol
push.v self.hh
call.i caster_set_volume(argc=2)
popz.v
push.v self.hhvol
pushi.e 0
cmp.i.v LTE
bf [109]

:[108]
push.v self.hh
call.i caster_free(argc=1)
popz.v
pushi.e 90
pop.v.i self.con

:[109]
push.v self.con
pushi.e 40
cmp.i.v EQ
bf [111]

:[110]
push.s "music/birdnoise.ogg"@2870
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.hh
push.d 0.9
conv.d.v
push.d 0.9
conv.d.v
push.v self.hh
call.i caster_loop(argc=3)
popz.v
pushi.e 41
pop.v.i self.con

:[111]
push.v self.con
pushi.e 41
cmp.i.v EQ
bf [113]

:[112]
pushi.e 0
pop.v.i global.msc
pushi.e 76
pop.v.i global.typer
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.facechoice
push.s "obj_labtv_event_391"@14945
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_labtv_event_392"@14947
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_labtv_event_393"@14949
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_labtv_event_394"@14951
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_labtv_event_395"@14953
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_labtv_event_396"@14955
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_labtv_event_397"@14957
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_labtv_event_398"@14959
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_labtv_event_399"@14961
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_labtv_event_400"@14963
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_labtv_event_401"@14965
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_labtv_event_402"@14967
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
push.d 0.7
pop.v.d self.hhvol
pushi.e 42
pop.v.i self.con

:[113]
push.v self.con
pushi.e 42
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
bf [119]

:[117]
push.v self.hhvol
push.d 0.04
sub.d.v
pop.v.v self.hhvol
push.v self.hhvol
push.v self.hh
call.i caster_set_volume(argc=2)
popz.v
push.v self.hhvol
pushi.e 0
cmp.i.v LTE
bf [119]

:[118]
push.v self.hh
call.i caster_free(argc=1)
popz.v
pushi.e 90
pop.v.i self.con

:[119]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [121]

:[120]
push.s "music/birdnoise.ogg"@2870
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.hh
pushi.e 1
conv.i.v
push.d 0.9
conv.d.v
push.v self.hh
call.i caster_loop(argc=3)
popz.v
pushi.e 51
pop.v.i self.con

:[121]
push.v self.con
pushi.e 51
cmp.i.v EQ
bf [123]

:[122]
pushi.e 0
pop.v.i global.msc
pushi.e 76
pop.v.i global.typer
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.facechoice
push.s "obj_labtv_event_435"@14969
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_labtv_event_436"@14971
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_labtv_event_437"@14973
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_labtv_event_438"@14975
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_labtv_event_439"@14977
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_labtv_event_440"@14979
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_labtv_event_441"@14981
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
push.d 0.7
pop.v.d self.hhvol
pushi.e 52
pop.v.i self.con

:[123]
push.v self.con
pushi.e 52
cmp.i.v EQ
bf [125]

:[124]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [126]

:[125]
push.e 0

:[126]
bf [129]

:[127]
push.v self.hhvol
push.d 0.04
sub.d.v
pop.v.v self.hhvol
push.v self.hhvol
push.v self.hh
call.i caster_set_volume(argc=2)
popz.v
push.v self.hhvol
pushi.e 0
cmp.i.v LTE
bf [129]

:[128]
push.v self.hh
call.i caster_free(argc=1)
popz.v
pushi.e 90
pop.v.i self.con

:[129]
push.v self.con
pushi.e 60
cmp.i.v EQ
bf [131]

:[130]
push.s "music/oogloop.ogg"@2694
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.hh
push.d 0.6
conv.d.v
push.d 0.7
conv.d.v
push.v self.hh
call.i caster_loop(argc=3)
popz.v
pushi.e 61
pop.v.i self.con

:[131]
push.v self.con
pushi.e 61
cmp.i.v EQ
bf [133]

:[132]
pushi.e 0
pop.v.i global.msc
pushi.e 4
pop.v.i global.typer
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.facechoice
push.s "obj_labtv_event_473"@14983
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_labtv_event_474"@14985
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_labtv_event_475"@14987
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_labtv_event_476"@14988
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_labtv_event_477"@14990
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_labtv_event_478"@14992
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_labtv_event_479"@14994
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_labtv_event_480"@14996
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_labtv_event_481"@14998
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_labtv_event_482"@15000
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
push.d 0.7
pop.v.d self.hhvol
pushi.e 62
pop.v.i self.con

:[133]
push.v self.con
pushi.e 62
cmp.i.v EQ
bf [135]

:[134]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [136]

:[135]
push.e 0

:[136]
bf [139]

:[137]
push.v self.hhvol
push.d 0.04
sub.d.v
pop.v.v self.hhvol
push.v self.hhvol
push.v self.hh
call.i caster_set_volume(argc=2)
popz.v
push.v self.hhvol
pushi.e 0
cmp.i.v LTE
bf [139]

:[138]
push.v self.hh
call.i caster_free(argc=1)
popz.v
pushi.e 90
pop.v.i self.con

:[139]
push.v self.con
pushi.e 90
cmp.i.v EQ
bf [145]

:[140]
pushglb.v global.currentsong
call.i caster_resume(argc=1)
popz.v
push.v self.vol
push.v self.ivol
cmp.v.v LT
bf [142]

:[141]
push.v self.vol
push.d 0.05
add.d.v
pop.v.v self.vol
b [143]

:[142]
push.v self.ivol
pop.v.v self.vol

:[143]
push.v self.vol
pushglb.v global.currentsong
call.i caster_set_volume(argc=2)
popz.v
push.v self.alph
push.d 0.05
sub.d.v
pop.v.v self.alph
push.v self.alph
pushi.e 0
cmp.i.v LT
bf [145]

:[144]
pushi.e 0
pop.v.i self.alph
pushi.e 100
pop.v.i self.con

:[145]
push.v self.con
pushi.e 100
cmp.i.v EQ
bf [147]

:[146]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing

:[147]
push.v self.alph
pushi.e 0
cmp.i.v GT
bf [end]

:[148]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.alph
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

:[end]