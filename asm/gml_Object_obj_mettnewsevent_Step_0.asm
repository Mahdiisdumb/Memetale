.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
pushi.e 1
pop.v.i 1576.cutscene
pushi.e 1
pushi.e -5
pushi.e 17
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_mettnewsevent_88"@17750
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_89"@17751
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_90"@17753
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_91"@17755
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_92"@17756
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_93"@17758
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
call.i scr_regulartext(argc=0)
popz.v
pushi.e 3
pop.v.i self.con
pushi.e 105
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.quickskip
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 130
pop.v.i self.con

:[3]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [5]

:[4]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [6]

:[5]
push.e 0

:[6]
bf [12]

:[7]
pushi.e 1
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 4
pop.v.i self.con
push.s "music/news.ogg"@2863
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.news
push.v self.quickskip
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[9]
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.nitem
pushi.e 1224
conv.i.v
pushi.e 250
conv.i.v
pushi.e 380
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.dog
pushi.e 1
push.v self.dog
conv.v.i
pop.v.i [stacktop]self.type
push.v self.dog
pushi.e -1
pushi.e 1
pop.v.v [array]self.nitem
pushi.e 1224
conv.i.v
pushi.e 336
conv.i.v
pushi.e 276
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.water
pushi.e 2
push.v self.water
conv.v.i
pop.v.i [stacktop]self.type
push.v self.water
pushi.e -1
pushi.e 2
pop.v.v [array]self.nitem
pushi.e 1224
conv.i.v
pushi.e 342
conv.i.v
pushi.e 380
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.script
pushi.e 3
push.v self.script
conv.v.i
pop.v.i [stacktop]self.type
push.v self.script
pushi.e -1
pushi.e 3
pop.v.v [array]self.nitem
pushi.e 1224
conv.i.v
pushi.e 252
conv.i.v
pushi.e 278
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.basketball
pushi.e 4
push.v self.basketball
conv.v.i
pop.v.i [stacktop]self.type
push.v self.basketball
pushi.e -1
pushi.e 4
pop.v.v [array]self.nitem
pushi.e 1224
conv.i.v
pushi.e 246
conv.i.v
pushi.e 494
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.present
pushi.e 5
push.v self.present
conv.v.i
pop.v.i [stacktop]self.type
push.v self.present
pushi.e -1
pushi.e 5
pop.v.v [array]self.nitem
pushi.e 1224
conv.i.v
pushi.e 342
conv.i.v
pushi.e 494
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.game
pushi.e 6
push.v self.game
conv.v.i
pop.v.i [stacktop]self.type
push.v self.game
pushi.e -1
pushi.e 6
pop.v.v [array]self.nitem
push.v self.quickskip
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
pushi.e 1185
conv.i.v
pushi.e 300
conv.i.v
pushi.e 140
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ff1
pushi.e 1
push.v self.ff1
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.ff1
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 1185
conv.i.v
pushi.e 300
conv.i.v
pushi.e 560
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ff2
pushi.e 1
push.v self.ff2
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.ff2
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 1185
conv.i.v
pushi.e 200
conv.i.v
pushi.e 340
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ff3
pushi.e 2
push.v self.ff3
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 1
push.v self.ff3
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 1185
conv.i.v
pushi.e 400
conv.i.v
pushi.e 420
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ff4
pushi.e 2
push.v self.ff4
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 1
push.v self.ff4
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 1185
conv.i.v
pushi.e 300
conv.i.v
pushi.e 720
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ff5
pushi.e 1
push.v self.ff5
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.ff5
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
b [12]

:[11]
pushi.e 129
pop.v.i self.con

:[12]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [14]

:[13]
push.s "obj_mettnewsevent_159"@17760
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
pop.v.v self.d
pushi.e 0
push.v self.d
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 6
pop.v.i self.con

:[14]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [16]

:[15]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
pushi.e 1
conv.i.v
push.d 0.9
conv.d.v
push.v self.news
call.i caster_loop(argc=3)
popz.v
pushi.e 7
pop.v.i self.con
pushi.e 27
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
push.s "obj_mettnewsevent_174"@17762
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_175"@17764
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_176"@17766
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_177"@17768
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_178"@17770
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_179"@17772
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_180"@17774
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
pop.v.v self.dg
pushi.e 0
push.v self.dg
conv.v.i
pop.v.i [stacktop]self.side

:[19]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [21]

:[20]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
pushi.e 2
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.interact
pushi.e 8
pop.v.i self.con

:[24]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [26]

:[25]
pushi.e 2
pushi.e -1
push.v self.eventchoice
conv.v.i
push.v [array]self.nitem
conv.v.i
pop.v.i [stacktop]self.con
pushi.e 1
pop.v.i global.interact
pushi.e 51
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[26]
push.v self.con
pushi.e 51
cmp.i.v EQ
bf [28]

:[27]
pushi.e 1
pop.v.i global.interact

:[28]
push.v self.con
pushi.e 52
cmp.i.v EQ
bf [30]

:[29]
pushi.e 60
push.v self.eventchoice
pushi.e 1
sub.i.v
pushi.e 5
mul.i.v
add.v.i
pop.v.v self.con

:[30]
push.v self.con
pushi.e 60
cmp.i.v EQ
bf [32]

:[31]
pushi.e 0
pop.v.i self.connor
pushi.e 27
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
pushi.e 0
pop.v.i global.facing
push.s "obj_mettnewsevent_229"@17776
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_230"@17778
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_231"@17780
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_232"@17782
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_233"@17783
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_234"@17785
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_235"@17787
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_236"@17789
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_237"@17791
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gr
pushi.e 0
push.v self.gr
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 61
pop.v.i self.con

:[32]
push.v self.con
pushi.e 61
cmp.i.v EQ
bf [34]

:[33]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [35]

:[34]
push.e 0

:[35]
bf [41]

:[36]
push.v 784.stringno
pushi.e 4
cmp.i.v EQ
bf [38]

:[37]
push.v self.connor
pushi.e 0
cmp.i.v EQ
b [39]

:[38]
push.e 0

:[39]
bf [41]

:[40]
pushi.e 1
pop.v.i self.connor
push.v self.news
call.i caster_pause(argc=1)
popz.v

:[41]
push.v self.con
pushi.e 61
cmp.i.v EQ
bf [43]

:[42]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [44]

:[43]
push.e 0

:[44]
bf [48]

:[45]
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.dog
conv.v.i
pushenv [47]

:[46]
push.v self.bombsprite
pop.v.v self.sprite_index

:[47]
popenv [46]
pushi.e 62
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[48]
push.v self.con
pushi.e 63
cmp.i.v EQ
bf [50]

:[49]
push.s "obj_mettnewsevent_264"@17793
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_265"@17795
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_266"@17797
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_267"@17799
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gr
pushi.e 0
push.v self.gr
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 100
pop.v.i self.con

:[50]
push.v self.con
pushi.e 65
cmp.i.v EQ
bf [52]

:[51]
pushi.e 0
pop.v.i self.connor
pushi.e 27
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
pushi.e 0
pop.v.i global.facing
push.s "obj_mettnewsevent_283"@17801
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_284"@17803
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_285"@17805
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_286"@17807
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_287"@17808
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_288"@17809
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_289"@17811
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_290"@17812
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_291"@17814
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gr
pushi.e 0
push.v self.gr
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 66
pop.v.i self.con

:[52]
push.v self.con
pushi.e 66
cmp.i.v EQ
bf [54]

:[53]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [55]

:[54]
push.e 0

:[55]
bf [61]

:[56]
push.v 784.stringno
pushi.e 4
cmp.i.v EQ
bf [58]

:[57]
push.v self.connor
pushi.e 0
cmp.i.v EQ
b [59]

:[58]
push.e 0

:[59]
bf [61]

:[60]
pushi.e 1
pop.v.i self.connor
push.v self.news
call.i caster_pause(argc=1)
popz.v

:[61]
push.v self.con
pushi.e 66
cmp.i.v EQ
bf [63]

:[62]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [64]

:[63]
push.e 0

:[64]
bf [68]

:[65]
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.water
conv.v.i
pushenv [67]

:[66]
push.v self.bombsprite
pop.v.v self.sprite_index

:[67]
popenv [66]
pushi.e 67
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[68]
push.v self.con
pushi.e 68
cmp.i.v EQ
bf [70]

:[69]
push.s "obj_mettnewsevent_318"@17816
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_319"@17818
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_320"@17820
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_321"@17822
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gr
pushi.e 0
push.v self.gr
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 100
pop.v.i self.con

:[70]
push.v self.con
pushi.e 70
cmp.i.v EQ
bf [72]

:[71]
pushi.e 0
pop.v.i self.connor
pushi.e 27
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
pushi.e 0
pop.v.i global.facing
push.s "obj_mettnewsevent_337"@17824
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_338"@17826
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_339"@17828
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
pop.v.v self.gr
pushi.e 0
push.v self.gr
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 71
pop.v.i self.con

:[72]
push.v self.con
pushi.e 71
cmp.i.v EQ
bf [74]

:[73]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [75]

:[74]
push.e 0

:[75]
bf [79]

:[76]
push.v self.news
call.i caster_pause(argc=1)
popz.v
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.script
conv.v.i
pushenv [78]

:[77]
push.v self.bombsprite
pop.v.v self.sprite_index

:[78]
popenv [77]
pushi.e 72
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[79]
push.v self.con
pushi.e 73
cmp.i.v EQ
bf [81]

:[80]
push.s "obj_mettnewsevent_372"@17830
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_373"@17832
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_374"@17834
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_375"@17836
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_376"@17838
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_377"@17840
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_378"@17841
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
pop.v.v self.gr
pushi.e 0
push.v self.gr
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 100
pop.v.i self.con

:[81]
push.v self.con
pushi.e 75
cmp.i.v EQ
bf [83]

:[82]
pushi.e 0
pop.v.i self.connor
pushi.e 27
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
pushi.e 0
pop.v.i global.facing
push.s "obj_mettnewsevent_394"@17843
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_395"@17845
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_396"@17847
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_397"@17849
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_398"@17851
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_399"@17853
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_400"@17854
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_401"@17855
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_402"@17857
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gr
pushi.e 0
push.v self.gr
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 76
pop.v.i self.con

:[83]
push.v self.con
pushi.e 76
cmp.i.v EQ
bf [85]

:[84]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [86]

:[85]
push.e 0

:[86]
bf [92]

:[87]
push.v 784.stringno
pushi.e 6
cmp.i.v EQ
bf [89]

:[88]
push.v self.connor
pushi.e 0
cmp.i.v EQ
b [90]

:[89]
push.e 0

:[90]
bf [92]

:[91]
pushi.e 1
pop.v.i self.connor
push.v self.news
call.i caster_pause(argc=1)
popz.v

:[92]
push.v self.con
pushi.e 76
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
bf [99]

:[96]
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.basketball
conv.v.i
pushenv [98]

:[97]
push.v self.bombsprite
pop.v.v self.sprite_index

:[98]
popenv [97]
pushi.e 77
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[99]
push.v self.con
pushi.e 78
cmp.i.v EQ
bf [101]

:[100]
push.s "obj_mettnewsevent_429"@17859
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_430"@17861
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_431"@17863
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_432"@17865
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_434"@17866
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_435"@17867
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
pop.v.v self.gr
pushi.e 0
push.v self.gr
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 100
pop.v.i self.con

:[101]
push.v self.con
pushi.e 80
cmp.i.v EQ
bf [103]

:[102]
pushi.e 0
pop.v.i self.connor
pushi.e 27
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
pushi.e 0
pop.v.i global.facing
push.s "obj_mettnewsevent_449"@17869
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_450"@17871
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_451"@17873
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
pop.v.v self.gr
pushi.e 0
push.v self.gr
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 81
pop.v.i self.con

:[103]
push.v self.con
pushi.e 81
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
bf [110]

:[107]
push.v self.news
call.i caster_pause(argc=1)
popz.v
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.present
conv.v.i
pushenv [109]

:[108]
push.v self.bombsprite
pop.v.v self.sprite_index

:[109]
popenv [108]
pushi.e 82
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[110]
push.v self.con
pushi.e 83
cmp.i.v EQ
bf [112]

:[111]
push.s "obj_mettnewsevent_479"@17875
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_480"@17877
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_481"@17879
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_482"@17881
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_483"@17883
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_484"@17884
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_485"@17885
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
pop.v.v self.gr
pushi.e 0
push.v self.gr
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 100
pop.v.i self.con

:[112]
push.v self.con
pushi.e 85
cmp.i.v EQ
bf [114]

:[113]
pushi.e 0
pop.v.i self.connor
pushi.e 27
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
pushi.e 0
pop.v.i global.facing
push.s "obj_mettnewsevent_499"@17887
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_500"@17889
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_501"@17891
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_502"@17893
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_503"@17895
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
pop.v.v self.gr
pushi.e 0
push.v self.gr
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 86
pop.v.i self.con

:[114]
push.v self.con
pushi.e 86
cmp.i.v EQ
bf [116]

:[115]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [117]

:[116]
push.e 0

:[117]
bf [121]

:[118]
push.v self.news
call.i caster_pause(argc=1)
popz.v
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.game
conv.v.i
pushenv [120]

:[119]
push.v self.bombsprite
pop.v.v self.sprite_index

:[120]
popenv [119]
pushi.e 87
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[121]
push.v self.con
pushi.e 88
cmp.i.v EQ
bf [123]

:[122]
push.s "obj_mettnewsevent_531"@17897
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_532"@17899
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_533"@17901
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_534"@17903
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_535"@17905
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_536"@17906
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_537"@17907
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
pop.v.v self.gr
pushi.e 0
push.v self.gr
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 100
pop.v.i self.con

:[123]
push.v self.con
pushi.e 100
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
bf [139]

:[127]
push.v self.water
conv.v.i
push.v [stacktop]self.bombsprite
push.v self.water
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.script
conv.v.i
push.v [stacktop]self.bombsprite
push.v self.script
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.game
conv.v.i
push.v [stacktop]self.bombsprite
push.v self.game
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.eventchoice
pushi.e 1
cmp.i.v NEQ
bf [129]

:[128]
push.v self.eventchoice
pushi.e 4
cmp.i.v NEQ
b [130]

:[129]
push.e 0

:[130]
bf [132]

:[131]
push.v self.present
conv.v.i
push.v [stacktop]self.bombsprite
push.v self.present
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[132]
pushi.e 8
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.v self.ff2
conv.v.i
pushenv [134]

:[133]
call.i instance_destroy(argc=0)
popz.v

:[134]
popenv [133]
push.v self.ff3
conv.v.i
pushenv [136]

:[135]
call.i instance_destroy(argc=0)
popz.v

:[136]
popenv [135]
push.v self.ff4
conv.v.i
pushenv [138]

:[137]
call.i instance_destroy(argc=0)
popz.v

:[138]
popenv [137]
pushi.e 103
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i 1576.cutscene
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[139]
push.v self.con
pushi.e 105
cmp.i.v EQ
bf [148]

:[140]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 240
cmp.i.v GT
bf [142]

:[141]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_xview
pushi.e 3
sub.i.v
pop.i.v [array]self.view_xview

:[142]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 210
cmp.i.v LT
bf [144]

:[143]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_xview
pushi.e 3
add.i.v
pop.i.v [array]self.view_xview

:[144]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 140
cmp.i.v LT
bf [146]

:[145]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_yview
pushi.e 3
add.i.v
pop.i.v [array]self.view_yview

:[146]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 150
cmp.i.v GT
bf [148]

:[147]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_yview
pushi.e 3
sub.i.v
pop.i.v [array]self.view_yview

:[148]
push.v self.con
pushi.e 104
cmp.i.v EQ
bf [150]

:[149]
pushi.e 105
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[150]
push.v self.con
pushi.e 106
cmp.i.v EQ
bf [152]

:[151]
pushi.e 107
pop.v.i self.con

:[152]
push.v self.con
pushi.e 107
cmp.i.v EQ
bf [157]

:[153]
pushi.e 27
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.facechoice
push.s "obj_mettnewsevent_609"@17909
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_610"@17911
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.eventchoice
pushi.e 1
cmp.i.v NEQ
bf [155]

:[154]
push.s "obj_mettnewsevent_613"@17913
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 108
pop.v.i self.con
b [156]

:[155]
push.s "obj_mettnewsevent_618"@17915
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 112
pop.v.i self.con

:[156]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.dg
pushi.e 0
push.v self.dg
conv.v.i
pop.v.i [stacktop]self.side

:[157]
push.v self.con
pushi.e 108
cmp.i.v EQ
bf [159]

:[158]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [160]

:[159]
push.e 0

:[160]
bf [162]

:[161]
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.dog
conv.v.i
push.v [stacktop]self.bombsprite
push.v self.dog
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 109
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[162]
push.v self.con
pushi.e 110
cmp.i.v EQ
bf [164]

:[163]
pushi.e 116
pop.v.i self.con

:[164]
push.v self.con
pushi.e 112
cmp.i.v EQ
bf [166]

:[165]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [167]

:[166]
push.e 0

:[167]
bf [169]

:[168]
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.present
conv.v.i
push.v [stacktop]self.bombsprite
push.v self.present
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 109
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[169]
push.v self.con
pushi.e 116
cmp.i.v EQ
bf [174]

:[170]
push.v self.eventchoice
pushi.e 4
cmp.i.v NEQ
bf [172]

:[171]
push.s "obj_mettnewsevent_649"@17917
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 118
pop.v.i self.con
b [173]

:[172]
push.s "obj_mettnewsevent_654"@17918
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 122
pop.v.i self.con

:[173]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.dg
pushi.e 0
push.v self.dg
conv.v.i
pop.v.i [stacktop]self.side

:[174]
push.v self.con
pushi.e 118
cmp.i.v EQ
bf [176]

:[175]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [177]

:[176]
push.e 0

:[177]
bf [179]

:[178]
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.basketball
conv.v.i
push.v [stacktop]self.bombsprite
push.v self.basketball
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 119
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[179]
push.v self.con
pushi.e 122
cmp.i.v EQ
bf [181]

:[180]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [182]

:[181]
push.e 0

:[182]
bf [184]

:[183]
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.present
conv.v.i
push.v [stacktop]self.bombsprite
push.v self.present
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 119
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[184]
push.v self.con
pushi.e 120
cmp.i.v EQ
bf [186]

:[185]
pushi.e 125
pop.v.i self.con

:[186]
push.v self.con
pushi.e 125
cmp.i.v EQ
bf [188]

:[187]
push.s "obj_mettnewsevent_684"@17920
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
pop.v.v self.dg
pushi.e 0
push.v self.dg
conv.v.i
pop.v.i [stacktop]self.side
push.d 125.1
pop.v.d self.con

:[188]
push.v self.con
push.d 125.1
cmp.d.v EQ
bf [190]

:[189]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [191]

:[190]
push.e 0

:[191]
bf [193]

:[192]
pushi.e 1232
conv.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 20
add.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 20
add.i.v
call.i instance_create(argc=3)
pop.v.v self.wordfall
pushi.e 5
pop.v.i global.typer
push.s "obj_mettnewsevent_694"@17922
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_695"@17923
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
pop.v.v self.dg
pushi.e 0
push.v self.dg
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 126
pop.v.i self.con

:[193]
push.v self.con
pushi.e 126
cmp.i.v EQ
bf [195]

:[194]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [196]

:[195]
push.e 0

:[196]
bf [198]

:[197]
pushi.e 1860
conv.i.v
pushi.e 80
conv.i.v
pushi.e 340
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.bigbomb
push.i 500000
push.v self.bigbomb
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 8
conv.i.v
pushi.e 100
conv.i.v
pushi.e 340
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.bigbombsolid
pushi.e 27
pop.v.i global.typer
push.s "obj_mettnewsevent_708"@17925
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
pop.v.v self.dg
pushi.e 0
push.v self.dg
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 127
pop.v.i self.con

:[198]
push.v self.con
pushi.e 127
cmp.i.v EQ
bf [200]

:[199]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [201]

:[200]
push.e 0

:[201]
bf [205]

:[202]
pushi.e 2
pop.v.i global.facing
pushi.e -4
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_object
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 40
cmp.i.v GT
bf [204]

:[203]
push.v 1225.y
pushi.e 15
sub.i.v
pop.v.v 1225.y
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_yview
pushi.e 10
sub.i.v
pop.i.v [array]self.view_yview
b [205]

:[204]
pushi.e 128
pop.v.i self.con

:[205]
push.v self.con
pushi.e 128
cmp.i.v EQ
bf [215]

:[206]
push.s "obj_mettnewsevent_730"@17927
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_731"@17929
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_732"@17931
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_733"@17933
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_734"@17935
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
pop.v.v self.dg
pushi.e 1
push.v self.dg
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 129
pop.v.i self.con
pushi.e 1224
pushenv [208]

:[207]
pushi.e 5
pop.v.i self.vspeed

:[208]
popenv [207]
pushi.e 1224
pushenv [210]

:[209]
pushi.e 1
pop.v.i self.gtfo

:[210]
popenv [209]
push.v self.dog
conv.v.i
pushenv [212]

:[211]
pushi.e 0
pop.v.i self.vspeed

:[212]
popenv [211]
push.v self.dog
conv.v.i
pushenv [214]

:[213]
pushi.e 0
pop.v.i self.gtfo

:[214]
popenv [213]

:[215]
push.v self.con
pushi.e 129
cmp.i.v EQ
bf [217]

:[216]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [218]

:[217]
push.e 0

:[218]
bf [253]

:[219]
push.v self.game
call.i instance_exists(argc=1)
conv.v.b
bf [223]

:[220]
push.v self.game
conv.v.i
pushenv [222]

:[221]
call.i instance_destroy(argc=0)
popz.v

:[222]
popenv [221]

:[223]
push.v self.present
call.i instance_exists(argc=1)
conv.v.b
bf [227]

:[224]
push.v self.present
conv.v.i
pushenv [226]

:[225]
call.i instance_destroy(argc=0)
popz.v

:[226]
popenv [225]

:[227]
push.v self.script
call.i instance_exists(argc=1)
conv.v.b
bf [231]

:[228]
push.v self.script
conv.v.i
pushenv [230]

:[229]
call.i instance_destroy(argc=0)
popz.v

:[230]
popenv [229]

:[231]
push.v self.water
call.i instance_exists(argc=1)
conv.v.b
bf [235]

:[232]
push.v self.water
conv.v.i
pushenv [234]

:[233]
call.i instance_destroy(argc=0)
popz.v

:[234]
popenv [233]

:[235]
push.v self.basketball
call.i instance_exists(argc=1)
conv.v.b
bf [239]

:[236]
push.v self.basketball
conv.v.i
pushenv [238]

:[237]
call.i instance_destroy(argc=0)
popz.v

:[238]
popenv [237]

:[239]
pushi.e 6
pop.v.i 1225.hspeed
pushi.e 0
pop.v.i global.facing
pushi.e 0
pop.v.i self.go
push.v 1576.x
pop.v.v self.xx
push.v 1576.y
pop.v.v self.yy
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
push.v self.xx
pushi.e -1
pushi.e 0
push.v [array]self.view_wview
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 10
add.i.v
call.i round(argc=1)
cmp.v.v LT
bf [241]

:[240]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_xview
pushi.e 5
add.i.v
pop.i.v [array]self.view_xview

:[241]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
push.v self.xx
pushi.e -1
pushi.e 0
push.v [array]self.view_wview
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 10
add.i.v
call.i round(argc=1)
cmp.v.v GT
bf [243]

:[242]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_xview
pushi.e 5
sub.i.v
pop.i.v [array]self.view_xview

:[243]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
push.v self.xx
pushi.e -1
pushi.e 0
push.v [array]self.view_wview
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 10
add.i.v
call.i round(argc=1)
sub.v.v
call.i abs(argc=1)
pushi.e 6
cmp.i.v LT
bf [245]

:[244]
push.v self.xx
pushi.e -1
pushi.e 0
push.v [array]self.view_wview
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 10
add.i.v
call.i round(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.view_xview
push.v self.go
pushi.e 1
add.i.v
pop.v.v self.go

:[245]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
push.v self.yy
pushi.e -1
pushi.e 0
push.v [array]self.view_hview
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 10
add.i.v
call.i round(argc=1)
cmp.v.v LT
bf [247]

:[246]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_yview
pushi.e 5
add.i.v
pop.i.v [array]self.view_yview

:[247]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
push.v self.yy
pushi.e -1
pushi.e 0
push.v [array]self.view_hview
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 10
add.i.v
call.i round(argc=1)
cmp.v.v GT
bf [249]

:[248]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_yview
pushi.e 5
sub.i.v
pop.i.v [array]self.view_yview

:[249]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
push.v self.yy
pushi.e -1
pushi.e 0
push.v [array]self.view_hview
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 10
add.i.v
call.i round(argc=1)
sub.v.v
call.i abs(argc=1)
pushi.e 6
cmp.i.v LT
bf [251]

:[250]
push.v self.yy
pushi.e -1
pushi.e 0
push.v [array]self.view_hview
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 10
add.i.v
call.i round(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.view_yview
push.v self.go
pushi.e 1
add.i.v
pop.v.v self.go

:[251]
push.v self.go
pushi.e 2
cmp.i.v EQ
bf [253]

:[252]
pushi.e 130
pop.v.i self.con

:[253]
push.v self.con
pushi.e 129
cmp.i.v GT
bf [269]

:[254]
push.v self.quickskip
pushi.e 0
cmp.i.v EQ
bf [269]

:[255]
push.v self.dog
call.i instance_exists(argc=1)
conv.v.b
bf [269]

:[256]
pushi.e 0
pop.v.i self.clumber
push.v 1576.x
push.v self.dog
conv.v.i
push.v [stacktop]self.x
cmp.v.v GT
bf [259]

:[257]
push.v self.dog
conv.v.i
push.v [stacktop]self.x
pushi.e 300
cmp.i.v GT
bf [259]

:[258]
pushi.e 1
pop.v.i self.clumber

:[259]
push.v 1576.x
push.v self.dog
conv.v.i
push.v [stacktop]self.x
cmp.v.v LT
bf [262]

:[260]
push.v self.dog
conv.v.i
push.v [stacktop]self.x
pushi.e 400
cmp.i.v LT
bf [262]

:[261]
pushi.e 2
pop.v.i self.clumber

:[262]
push.v self.clumber
pushi.e 0
cmp.i.v NEQ
bf [268]

:[263]
push.v self.clumber
pushi.e 1
cmp.i.v EQ
bf [265]

:[264]
push.d -0.5
push.v self.dog
conv.v.i
pop.v.d [stacktop]self.hspeed

:[265]
push.v self.clumber
pushi.e 2
cmp.i.v EQ
bf [267]

:[266]
push.d 0.5
push.v self.dog
conv.v.i
pop.v.d [stacktop]self.hspeed

:[267]
pushi.e 1612
push.v self.dog
conv.v.i
pop.v.i [stacktop]self.sprite_index
b [269]

:[268]
pushi.e 0
push.v self.dog
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 0.1
push.v self.dog
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 1608
push.v self.dog
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[269]
push.v self.con
pushi.e 130
cmp.i.v EQ
bf [271]

:[270]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [272]

:[271]
push.e 0

:[272]
bf [274]

:[273]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 1
pop.v.i global.mercy
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_mettnewsevent_827"@17936
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_828"@17937
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_829"@17939
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_830"@17941
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_831"@17943
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_832"@17945
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
call.i scr_regulartext(argc=0)
popz.v
pushi.e 131
pop.v.i self.con
pushi.e 105
conv.i.v
call.i snd_play(argc=1)
popz.v

:[274]
push.v self.con
pushi.e 131
cmp.i.v EQ
bf [276]

:[275]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [277]

:[276]
push.e 0

:[277]
bf [286]

:[278]
push.v self.quickskip
pushi.e 0
cmp.i.v EQ
bf [284]

:[279]
pushi.e 1225
pushenv [281]

:[280]
call.i instance_destroy(argc=0)
popz.v

:[281]
popenv [280]
pushi.e 1227
conv.i.v
push.v self.dog
conv.v.i
push.v [stacktop]self.y
push.v self.dog
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.newdog
pushi.e 1224
pushenv [283]

:[282]
call.i instance_destroy(argc=0)
popz.v

:[283]
popenv [282]
b [285]

:[284]
pushi.e 1227
conv.i.v
pushi.e 300
conv.i.v
pushi.e 400
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.newdog

:[285]
pushi.e 1227
conv.i.v
pushi.e 400
conv.i.v
pushi.e 430
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.newwater
pushi.e 2
push.v self.newwater
conv.v.i
pop.v.i [stacktop]self.bombtype
pushi.e 1227
conv.i.v
pushi.e 420
conv.i.v
pushi.e 680
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.newscript
pushi.e 3
push.v self.newscript
conv.v.i
pop.v.i [stacktop]self.bombtype
pushi.e 1227
conv.i.v
pushi.e 100
conv.i.v
pushi.e 340
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.newbasketball
pushi.e 4
push.v self.newbasketball
conv.v.i
pop.v.i [stacktop]self.bombtype
pushi.e 1227
conv.i.v
pushi.e 100
conv.i.v
pushi.e 650
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.newpresent
pushi.e 5
push.v self.newpresent
conv.v.i
pop.v.i [stacktop]self.bombtype
pushi.e 1227
conv.i.v
pushi.e 500
conv.i.v
pushi.e 210
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.newgame
pushi.e 6
push.v self.newgame
conv.v.i
pop.v.i [stacktop]self.bombtype
pushi.e 1233
conv.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 200
add.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
call.i instance_create(argc=3)
pop.v.v self.newticker
pushi.e 1
push.v self.newticker
conv.v.i
pop.v.i [stacktop]self.on
pushi.e 1
push.v self.newticker
conv.v.i
pop.v.i [stacktop]self.doom
pushi.e 40
push.v self.newticker
conv.v.i
pop.v.i [stacktop]self.voff
pushi.e 1228
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.doomtimer
pushi.e 0
pop.v.i 1576.cutscene
pushi.e 1576
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_object
pushi.e 0
pop.v.i global.interact
push.s "music/news_battle.ogg"@2864
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
pushi.e 132
pop.v.i self.con

:[286]
push.v self.con
pushi.e 160
cmp.i.v EQ
bf [290]

:[287]
push.v self.doomtimer
conv.v.i
pushenv [289]

:[288]
call.i instance_destroy(argc=0)
popz.v

:[289]
popenv [288]
pushi.e 0
push.v self.newticker
conv.v.i
pop.v.i [stacktop]self.on
pushi.e 3
push.v self.newticker
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 1
pop.v.i global.interact
pushi.e 161
pop.v.i self.con
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[290]
push.v self.con
pushi.e 161
cmp.i.v EQ
bf [292]

:[291]
pushi.e 1
pop.v.i global.interact

:[292]
push.v self.con
pushi.e 162
cmp.i.v EQ
bf [306]

:[293]
pushi.e -5
pushi.e 288
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [295]

:[294]
pushi.e 1
pop.v.i self.failure

:[295]
push.v self.failure
pushi.e 1
cmp.i.v EQ
bf [299]

:[296]
pushi.e 119
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1227
pushenv [298]

:[297]
call.i instance_destroy(argc=0)
popz.v

:[298]
popenv [297]

:[299]
push.v self.newticker
conv.v.i
pushenv [301]

:[300]
call.i instance_destroy(argc=0)
popz.v

:[301]
popenv [300]
pushi.e 1225
conv.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 70
add.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 340
add.i.v
call.i instance_create(argc=3)
pop.v.v self.mett
pushi.e 8
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 2
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.on
pushi.e 92
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [305]

:[302]
pushi.e 92
pushenv [304]

:[303]
call.i instance_destroy(argc=0)
popz.v

:[304]
popenv [303]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v

:[305]
push.s "music/mtgameshow.ogg"@2856
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
pushi.e 163
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[306]
push.v self.con
pushi.e 164
cmp.i.v EQ
bf [312]

:[307]
pushi.e 0
pop.v.i self.conner
pushi.e 27
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
push.v self.failure
pushi.e 0
cmp.i.v EQ
bf [309]

:[308]
push.s "obj_mettnewsevent_925"@17947
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_926"@17949
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_927"@17951
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_928"@17953
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_929"@17955
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_930"@17957
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg

:[309]
push.v self.failure
pushi.e 1
cmp.i.v EQ
bf [311]

:[310]
push.s "obj_mettnewsevent_934"@17959
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_935"@17961
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_936"@17963
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_937"@17965
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_938"@17967
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_939"@17968
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg

:[311]
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
pushi.e 165
pop.v.i self.con

:[312]
push.v self.con
pushi.e 165
cmp.i.v EQ
bf [314]

:[313]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [315]

:[314]
push.e 0

:[315]
bf [326]

:[316]
push.v 784.stringno
pushi.e 4
cmp.i.v EQ
bf [318]

:[317]
push.v self.conner
pushi.e 0
cmp.i.v EQ
b [319]

:[318]
push.e 0

:[319]
bf [321]

:[320]
pushi.e 1
pop.v.i self.conner
pushglb.v global.currentsong
call.i caster_pause(argc=1)
popz.v

:[321]
push.v 784.stringno
pushi.e 5
cmp.i.v EQ
bf [323]

:[322]
push.v self.conner
pushi.e 2
cmp.i.v LT
b [324]

:[323]
push.e 0

:[324]
bf [326]

:[325]
pushi.e 1
pop.v.i self.mypitch
push.s "music/bad.ogg"@2612
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.ohno
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.ohno
call.i caster_loop(argc=3)
popz.v
pushi.e 2
pop.v.i self.conner

:[326]
push.v self.con
pushi.e 165
cmp.i.v EQ
bf [328]

:[327]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [329]

:[328]
push.e 0

:[329]
bf [331]

:[330]
pushi.e 166
pop.v.i self.con
pushi.e 80
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[331]
push.v self.con
pushi.e 167
cmp.i.v EQ
bf [334]

:[332]
push.v self.mypitch
push.d 0.015
sub.d.v
pop.v.v self.mypitch
push.v self.mypitch
push.v self.ohno
call.i caster_set_volume(argc=2)
popz.v
push.v self.mypitch
push.v self.ohno
call.i caster_set_pitch(argc=2)
popz.v
push.v self.mypitch
push.d 0.06
cmp.d.v LT
bf [334]

:[333]
pushi.e 168
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.v self.ohno
call.i caster_free(argc=1)
popz.v

:[334]
push.v self.con
pushi.e 169
cmp.i.v EQ
bf [336]

:[335]
pushi.e 0
pop.v.i self.conner
push.s "obj_mettnewsevent_987"@17970
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_988"@17972
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_989"@17974
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 3
conv.i.v
call.i scr_alface(argc=2)
popz.v
push.s "obj_mettnewsevent_991"@17976
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_992"@17978
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_993"@17980
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_994"@17982
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_995"@17984
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 9
conv.i.v
call.i scr_alface(argc=2)
popz.v
push.s "obj_mettnewsevent_997"@17986
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_998"@17987
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_999"@17989
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_1000"@17991
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_1001"@17993
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_1002"@17995
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.dg
pushi.e 1
push.v self.dg
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 170
pop.v.i self.con

:[336]
push.v self.con
pushi.e 170
cmp.i.v EQ
bf [338]

:[337]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [339]

:[338]
push.e 0

:[339]
bf [345]

:[340]
pushi.e 47
pop.v.i global.typer
pushi.e 4
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 99
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.on
pushi.e 6
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
push.v self.failure
pushi.e 0
cmp.i.v EQ
bf [342]

:[341]
push.s "obj_mettnewsevent_1017"@17997
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_1018"@17998
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_1019"@18000
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_1020"@18002
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_1021"@18004
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_1022"@18006
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_1023"@18008
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_1024"@18010
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_1025"@18012
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_1026"@18014
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_1027"@18016
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_1028"@18017
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_1029"@18018
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg

:[342]
push.v self.failure
pushi.e 1
cmp.i.v EQ
bf [344]

:[343]
pushi.e 4
pop.v.i global.faceemotion
push.s "obj_mettnewsevent_1034"@18020
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_1035"@18022
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_1036"@18024
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_1037"@18026
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_1038"@18028
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_1039"@18030
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_1040"@18032
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_1041"@18034
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_1042"@18036
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_1043"@18037
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_1044"@18039
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_1045"@18041
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_1046"@18042
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_mettnewsevent_1047"@18043
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg

:[344]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 171
pop.v.i self.con

:[345]
push.v self.con
pushi.e 171
cmp.i.v EQ
bf [347]

:[346]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [348]

:[347]
push.e 0

:[348]
bf [358]

:[349]
pushi.e 1341
conv.i.v
pushi.e 300
conv.i.v
pushi.e 40
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.flowey
pushi.e 0
pop.v.i 1576.cutscene
pushi.e 1576
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_object
pushi.e 1233
pushenv [351]

:[350]
call.i instance_destroy(argc=0)
popz.v

:[351]
popenv [350]
pushi.e 1225
pushenv [353]

:[352]
call.i instance_destroy(argc=0)
popz.v

:[353]
popenv [352]
pushi.e 1185
pushenv [355]

:[354]
call.i instance_destroy(argc=0)
popz.v

:[355]
popenv [354]
pushi.e 161
pop.v.i global.plot
pushi.e 172
pop.v.i self.con
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 1283
pushenv [357]

:[356]
pushi.e 2
pop.v.i self.active

:[357]
popenv [356]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pushi.e -5
pushi.e 17
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.mercy
call.i scr_tempsave(argc=0)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[358]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 0
cmp.i.v LTE
bf [end]

:[359]
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_yview

:[end]