.localvar 0 arguments
.localvar 1 writery 1770

:[0]
pushi.e 188
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v self.textskip
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
call.i scr_textskip(argc=0)
popz.v

:[5]
push.v self.cn
pushi.e -1
cmp.i.v EQ
bf [10]

:[6]
pushi.e 1
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
pushi.e -5
pushi.e 66
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
push.s "obj_papdate_150"@19727
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [9]

:[8]
push.s "obj_papdate_151"@19729
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[9]
pushi.e 784
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
call.i instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i self.cn

:[10]
push.v self.cn
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 1
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
pushi.e 0
pop.v.i self.face_index

:[15]
push.v self.cn
pushi.e 0
cmp.i.v EQ
bf [17]

:[16]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [18]

:[17]
push.e 0

:[18]
bf [23]

:[19]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.datemusic
call.i caster_loop(argc=3)
popz.v
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.msc
pushi.e 188
conv.i.v
push.v self.y
pushi.e 22
add.i.v
push.v self.x
pushi.e 145
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 22
pop.v.i global.typer
pushi.e -5
pushi.e 66
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
push.s "obj_papdate_166"@19731
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [22]

:[21]
push.s "obj_papdate_167"@19733
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[22]
push.s "obj_papdate_169"@19735
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papdate_170"@19737
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papdate_171"@19739
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 25
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd
pushi.e 1
pop.v.i self.cn

:[23]
push.v self.cn
pushi.e 1
cmp.i.v EQ
bf [25]

:[24]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [26]

:[25]
push.e 0

:[26]
bf [30]

:[27]
push.v self.blcon
conv.v.i
pushenv [29]

:[28]
call.i instance_destroy(argc=0)
popz.v

:[29]
popenv [28]
pushi.e 5
pop.v.i global.facechoice
pushi.e 0
pop.v.i self.image_index
push.d 0.25
pop.v.d self.image_speed
pushi.e 47
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 2
pop.v.i self.cn

:[30]
push.v self.cn
pushi.e 2
cmp.i.v EQ
bf [32]

:[31]
push.v self.image_index
pushi.e 2
cmp.i.v GTE
b [33]

:[32]
push.e 0

:[33]
bf [35]

:[34]
pushi.e 0
pop.v.i self.image_speed
pushi.e 2
pop.v.i self.image_index
pushi.e 3
pop.v.i self.cn
pushi.e 10
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[35]
push.v self.cn
pushi.e 4
cmp.i.v EQ
bf [51]

:[36]
pushi.e 188
conv.i.v
push.v self.y
pushi.e 22
add.i.v
push.v self.x
pushi.e 145
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 22
pop.v.i global.typer
pushi.e -5
pushi.e 66
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [38]

:[37]
push.s "obj_papdate_198"@19741
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [39]

:[38]
push.s "obj_papdate_199"@19743
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[39]
push.s "obj_papdate_201"@19745
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papdate_202"@19747
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papdate_203"@19749
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushglb.v global.osflavor
pushi.e 2
cmp.i.v LTE
bf [44]

:[40]
pushi.e -5
pushi.e 66
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [42]

:[41]
push.s "obj_papdate_204"@19751
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
b [43]

:[42]
push.s "obj_papdate_205"@19753
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[43]
b [47]

:[44]
pushi.e -5
pushi.e 66
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [46]

:[45]
push.s "obj_papdate_206"@19755
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
b [47]

:[46]
push.s "obj_papdate_207"@19757
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[47]
push.v self.joke
pushi.e 1
cmp.i.v EQ
bf [49]

:[48]
push.s "obj_papdate_208"@19759
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 6
pop.v.i self.cn
pushi.e -1
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
b [50]

:[49]
pushi.e -5
pushi.e 4
dup.i 1
push.v [array]global.msg
push.s "%%"@277
add.s.v
pop.i.v [array]global.msg

:[50]
pushi.e 784
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 25
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd
push.d 5.1
pop.v.d self.cn

:[51]
push.v self.cn
push.d 5.1
cmp.d.v EQ
bf [60]

:[52]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [58]

:[53]
push.v self.blcon
call.i instance_exists(argc=1)
conv.v.b
bf [58]

:[54]
push.v self.blcon
conv.v.i
pushenv [56]

:[55]
call.i instance_destroy(argc=0)
popz.v

:[56]
popenv [55]
push.v self.joke
pushi.e 0
cmp.i.v EQ
bf [58]

:[57]
pushi.e 400
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[58]
push.v self.joke
pushi.e 1
cmp.i.v EQ
bf [60]

:[59]
push.s "obj_papdate_220"@19760
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.d 4.3
pop.v.d self.cn
pushi.e 90
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[60]
push.v self.cn
push.d 5.3
cmp.d.v EQ
bf [62]

:[61]
pushi.e 0
pop.v.i global.faceemotion
pushi.e 6
pop.v.i self.cn

:[62]
push.v self.cn
push.d 6.1
cmp.d.v EQ
bf [64]

:[63]
push.s "obj_papdate_232"@19761
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papdate_233"@19763
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 188
conv.i.v
push.v self.y
pushi.e 22
add.i.v
push.v self.x
pushi.e 145
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 784
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 25
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd
pushi.e 6
pop.v.i self.cn

:[64]
push.v self.cn
push.d 5.2
cmp.d.v LT
bf [66]

:[65]
push.v self.joke
pushi.e 0
cmp.i.v EQ
b [67]

:[66]
push.e 0

:[67]
bf [79]

:[68]
pushi.e 2
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [79]

:[69]
push.v self.cn
push.d 5.1
cmp.d.v EQ
bf [78]

:[70]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [74]

:[71]
pushi.e 784
pushenv [73]

:[72]
call.i instance_destroy(argc=0)
popz.v

:[73]
popenv [72]

:[74]
push.v self.blcon
call.i instance_exists(argc=1)
conv.v.b
bf [78]

:[75]
push.v self.blcon
conv.v.i
pushenv [77]

:[76]
call.i instance_destroy(argc=0)
popz.v

:[77]
popenv [76]

:[78]
pushi.e 111
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.joke
pushi.e 166
conv.i.v
pushi.e -20
conv.i.v
pushi.e 256
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.graph
push.d 0.2
push.v self.graph
conv.v.i
pop.v.d [stacktop]self.friction
pushi.e 4
push.v self.graph
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 165
conv.i.v
pushi.e 64
conv.i.v
pushi.e -440
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.graph2
pushi.e 10
push.v self.graph2
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 0.1
push.v self.graph2
conv.v.i
pop.v.d [stacktop]self.friction
pushi.e 169
conv.i.v
pushi.e 160
conv.i.v
pushi.e -460
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.graph3
pushi.e 10
push.v self.graph3
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 0.1
push.v self.graph3
conv.v.i
pop.v.d [stacktop]self.friction
pushi.e 164
conv.i.v
pushi.e 256
conv.i.v
pushi.e -420
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.graph4
pushi.e 10
push.v self.graph4
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 0.1
push.v self.graph4
conv.v.i
pop.v.d [stacktop]self.friction
pushi.e 168
conv.i.v
pushi.e 80
conv.i.v
pushi.e 980
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.graph5
pushi.e -10
push.v self.graph5
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 0.1
push.v self.graph5
conv.v.i
pop.v.d [stacktop]self.friction
pushi.e 167
conv.i.v
pushi.e 244
conv.i.v
pushi.e 1020
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.graph6
pushi.e -10
push.v self.graph6
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 0.1
push.v self.graph6
conv.v.i
pop.v.d [stacktop]self.friction

:[79]
push.v self.cn
pushi.e 6
cmp.i.v EQ
bf [81]

:[80]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [82]

:[81]
push.e 0

:[82]
bf [97]

:[83]
push.v self.blcon
call.i instance_exists(argc=1)
conv.v.b
bf [87]

:[84]
push.v self.blcon
conv.v.i
pushenv [86]

:[85]
call.i instance_destroy(argc=0)
popz.v

:[86]
popenv [85]

:[87]
pushi.e 188
conv.i.v
push.v self.y
pushi.e 22
add.i.v
push.v self.x
pushi.e 145
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 22
pop.v.i global.typer
push.v self.joke
pushi.e 1
cmp.i.v EQ
bf [89]

:[88]
push.s "obj_papdate_279"@19765
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [90]

:[89]
push.s "obj_papdate_280"@19766
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[90]
push.s "obj_papdate_281"@19768
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papdate_282"@19769
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e -5
pushi.e 66
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [92]

:[91]
push.s "obj_papdate_283"@19771
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
b [93]

:[92]
push.s "obj_papdate_284"@19773
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[93]
push.s "obj_papdate_286"@19775
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_papdate_287"@19777
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e -5
pushi.e 66
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [95]

:[94]
push.s "obj_papdate_288"@19779
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
b [96]

:[95]
push.s "obj_papdate_289"@19781
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg

:[96]
pushi.e 784
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 25
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd
pushi.e 7
pop.v.i self.cn

:[97]
push.v self.cn
pushi.e 7
cmp.i.v EQ
bf [99]

:[98]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 1
cmp.i.v EQ
b [100]

:[99]
push.e 0

:[100]
bf [108]

:[101]
push.v 784.stringno
pushi.e 6
cmp.i.v EQ
bf [103]

:[102]
push.v 784.halt
pushi.e 0
cmp.i.v NEQ
b [104]

:[103]
push.e 0

:[104]
bf [108]

:[105]
pushi.e 0
pop.v.i self.choice
pushi.e 1
pop.v.i self.choicer
pushi.e 1
pop.v.i global.typer
push.s "obj_papdate_302"@19782
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 787
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
call.i instance_create(argc=3)
pop.v.v self.iii
push.v self.iii
conv.v.i
pushenv [107]

:[106]
pushi.e 0
pop.v.i self.halt

:[107]
popenv [106]
pushi.e 8
pop.v.i self.cn

:[108]
push.v self.cn
pushi.e 8
cmp.i.v EQ
bf [110]

:[109]
push.v self.choicer
pushi.e 2
cmp.i.v EQ
b [111]

:[110]
push.e 0

:[111]
bf [125]

:[112]
push.v self.blconwd
call.i instance_exists(argc=1)
conv.v.b
bf [116]

:[113]
push.v self.blconwd
conv.v.i
pushenv [115]

:[114]
call.i instance_destroy(argc=0)
popz.v

:[115]
popenv [114]

:[116]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [120]

:[117]
pushi.e 784
pushenv [119]

:[118]
call.i instance_destroy(argc=0)
popz.v

:[119]
popenv [118]

:[120]
push.v self.blcon
call.i instance_exists(argc=1)
conv.v.b
bf [124]

:[121]
push.v self.blcon
conv.v.i
pushenv [123]

:[122]
call.i instance_destroy(argc=0)
popz.v

:[123]
popenv [122]

:[124]
pushi.e 9
pop.v.i self.cn
pushi.e 0
pop.v.i self.choicer
pushi.e 10
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[125]
push.v self.cn
pushi.e 10
cmp.i.v EQ
bf [130]

:[126]
pushi.e 188
conv.i.v
push.v self.y
pushi.e 22
add.i.v
push.v self.x
pushi.e 145
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 22
pop.v.i global.typer
push.v self.choice
pushi.e 0
cmp.i.v EQ
bf [128]

:[127]
pushi.e 9
pop.v.i global.faceemotion
pushi.e 3
pop.v.i global.facechoice
push.s "obj_papdate_326"@19784
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [129]

:[128]
pushi.e 0
pop.v.i global.faceemotion
pushi.e 4
pop.v.i global.facechoice
push.s "obj_papdate_332"@19786
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[129]
push.s "obj_papdate_334"@19788
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papdate_335"@19789
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papdate_336"@19791
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_papdate_337"@19793
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 25
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd
pushi.e 11
pop.v.i self.cn

:[130]
push.v self.cn
pushi.e 11
cmp.i.v EQ
bf [132]

:[131]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [133]

:[132]
push.e 0

:[133]
bf [141]

:[134]
push.v self.blcon
call.i instance_exists(argc=1)
conv.v.b
bf [138]

:[135]
push.v self.blcon
conv.v.i
pushenv [137]

:[136]
call.i instance_destroy(argc=0)
popz.v

:[137]
popenv [136]

:[138]
push.v self.datevolume
push.d 0.02
sub.d.v
pop.v.v self.datevolume
push.v self.datevolume
push.d 0.05
cmp.d.v LT
bf [140]

:[139]
pushi.e 0
pop.v.i self.datevolume
pushi.e 12
pop.v.i self.cn
push.v self.datemusic
call.i caster_stop(argc=1)
popz.v

:[140]
push.v self.datevolume
push.v self.datemusic
call.i caster_set_volume(argc=2)
popz.v
pushi.e 0
pop.v.i self.joke

:[141]
push.v self.cn
pushi.e 12
cmp.i.v EQ
bf [143]

:[142]
pushi.e 188
conv.i.v
push.v self.y
pushi.e 22
add.i.v
push.v self.x
pushi.e 145
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 22
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
push.s "obj_papdate_357"@19795
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 25
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd
pushi.e 13
pop.v.i self.cn

:[143]
push.v self.cn
pushi.e 13
cmp.i.v EQ
bf [145]

:[144]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [146]

:[145]
push.e 0

:[146]
bf [167]

:[147]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.datetense
call.i caster_loop(argc=3)
popz.v
pushi.e 14
pop.v.i self.cn
push.s "obj_papdate_367"@19797
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papdate_369"@19799
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushglb.v global.armor
pushi.e 4
cmp.i.v EQ
bf [149]

:[148]
push.s "obj_papdate_370"@19801
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[149]
pushglb.v global.armor
pushi.e 12
cmp.i.v EQ
bf [151]

:[150]
push.s "obj_papdate_371"@19803
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[151]
pushglb.v global.armor
pushi.e 15
cmp.i.v EQ
bf [153]

:[152]
push.s "obj_papdate_372"@19805
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[153]
pushglb.v global.armor
pushi.e 24
cmp.i.v EQ
bf [155]

:[154]
push.s "obj_papdate_373"@19807
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[155]
pushglb.v global.armor
pushi.e 44
cmp.i.v EQ
bf [157]

:[156]
push.s "obj_papdate_374"@19809
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[157]
pushglb.v global.armor
pushi.e 46
cmp.i.v EQ
bf [159]

:[158]
push.s "obj_papdate_375"@19811
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[159]
pushglb.v global.armor
pushi.e 48
cmp.i.v EQ
bf [161]

:[160]
push.s "obj_papdate_376"@19813
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[161]
pushglb.v global.armor
pushi.e 50
cmp.i.v EQ
bf [163]

:[162]
push.s "obj_papdate_377"@19815
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[163]
push.s "obj_papdate_378"@19817
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papdate_379"@19819
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_papdate_380"@19821
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_papdate_381"@19823
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_papdate_382"@19825
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_papdate_383"@19827
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e -5
pushi.e 66
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [165]

:[164]
push.s "obj_papdate_386"@19829
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
b [166]

:[165]
push.s "obj_papdate_389"@19831
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg

:[166]
pushi.e 784
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 25
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd

:[167]
push.v self.cn
pushi.e 14
cmp.i.v EQ
bf [169]

:[168]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 1
cmp.i.v EQ
b [170]

:[169]
push.e 0

:[170]
bf [178]

:[171]
push.v 784.stringno
pushi.e 8
cmp.i.v EQ
bf [173]

:[172]
push.v 784.halt
pushi.e 0
cmp.i.v NEQ
b [174]

:[173]
push.e 0

:[174]
bf [178]

:[175]
pushi.e 0
pop.v.i self.choice
pushi.e 1
pop.v.i self.choicer
pushi.e 1
pop.v.i global.typer
push.s "obj_papdate_404"@19832
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 787
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
call.i instance_create(argc=3)
pop.v.v self.iii
push.v self.iii
conv.v.i
pushenv [177]

:[176]
pushi.e 0
pop.v.i self.halt

:[177]
popenv [176]
pushi.e 15
pop.v.i self.cn

:[178]
push.v self.cn
pushi.e 15
cmp.i.v EQ
bf [180]

:[179]
push.v self.choicer
pushi.e 2
cmp.i.v EQ
b [181]

:[180]
push.e 0

:[181]
bf [199]

:[182]
push.v self.blconwd
call.i instance_exists(argc=1)
conv.v.b
bf [186]

:[183]
push.v self.blconwd
conv.v.i
pushenv [185]

:[184]
call.i instance_destroy(argc=0)
popz.v

:[185]
popenv [184]

:[186]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [190]

:[187]
pushi.e 784
pushenv [189]

:[188]
call.i instance_destroy(argc=0)
popz.v

:[189]
popenv [188]

:[190]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [194]

:[191]
pushi.e 784
pushenv [193]

:[192]
call.i instance_destroy(argc=0)
popz.v

:[193]
popenv [192]

:[194]
push.v self.blcon
call.i instance_exists(argc=1)
conv.v.b
bf [198]

:[195]
push.v self.blcon
conv.v.i
pushenv [197]

:[196]
call.i instance_destroy(argc=0)
popz.v

:[197]
popenv [196]

:[198]
pushi.e 16
pop.v.i self.cn
pushi.e 0
pop.v.i self.choicer

:[199]
push.v self.cn
pushi.e 16
cmp.i.v EQ
bf [202]

:[200]
push.v self.datetense
call.i caster_stop(argc=1)
popz.v
pushi.e 51
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 10
pop.v.i self.shudder
pushi.e 6
pop.v.i global.faceemotion
pushi.e 1
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
pushi.e 119
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 185
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.g
pushi.e 4
push.v self.g
conv.v.i
pop.v.i [stacktop]self.vshake
pushi.e 4
push.v self.g
conv.v.i
pop.v.i [stacktop]self.hshake
pushi.e 2
push.v self.g
conv.v.i
pop.v.i [stacktop]self.shakespeed
pushi.e 17
pop.v.i self.cn
pushi.e 2
pop.v.i self.joke
pushi.e 163
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [202]

:[201]
pushi.e 1
pop.v.i 163.die

:[202]
push.v self.cn
pushi.e 18
cmp.i.v EQ
bf [204]

:[203]
pushi.e 19
pop.v.i self.cn
pushi.e 20
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[204]
push.v self.cn
pushi.e 20
cmp.i.v EQ
bf [215]

:[205]
push.d 20.1
pop.v.d self.cn
pushi.e 22
pop.v.i global.typer
pushi.e 188
conv.i.v
push.v self.y
pushi.e 22
add.i.v
push.v self.x
pushi.e 145
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
push.v self.choice
pushi.e 0
cmp.i.v EQ
bf [210]

:[206]
push.s "obj_papdate_453"@19834
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papdate_454"@19836
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e -5
pushi.e 66
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [208]

:[207]
push.s "obj_papdate_457"@19838
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papdate_458"@19840
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
b [209]

:[208]
push.s "obj_papdate_460"@19842
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papdate_461"@19844
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[209]
b [214]

:[210]
push.s "obj_papdate_465"@19846
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
pushi.e 66
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [212]

:[211]
push.s "obj_papdate_468"@19848
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papdate_469"@19849
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
b [213]

:[212]
push.s "obj_papdate_470"@19851
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papdate_471"@19852
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[213]
push.s "obj_papdate_472"@19854
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[214]
pushi.e 784
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 25
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd

:[215]
push.v self.cn
push.d 20.1
cmp.d.v EQ
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
bf [224]

:[219]
pushi.e 64
push.v self.friendgraph
conv.v.i
pop.v.i [stacktop]self.y
pushi.e 50
push.v self.friendgraph
conv.v.i
pop.v.i [stacktop]self.ideallength
push.v self.blcon
call.i instance_exists(argc=1)
pushi.e 1
cmp.i.v EQ
bf [223]

:[220]
push.v self.blcon
conv.v.i
pushenv [222]

:[221]
call.i instance_destroy(argc=0)
popz.v

:[222]
popenv [221]

:[223]
pushi.e 51
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 10
pop.v.i self.shudder
pushi.e 6
pop.v.i global.faceemotion
pushi.e 1
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
pushi.e 119
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 185
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.g
pushi.e 4
push.v self.g
conv.v.i
pop.v.i [stacktop]self.vshake
pushi.e 4
push.v self.g
conv.v.i
pop.v.i [stacktop]self.hshake
pushi.e 2
push.v self.g
conv.v.i
pop.v.i [stacktop]self.shakespeed
push.d 19.2
pop.v.d self.cn

:[224]
push.v self.cn
push.d 20.2
cmp.d.v EQ
bf [226]

:[225]
push.d 20.3
pop.v.d self.cn
pushi.e 20
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[226]
push.v self.cn
push.d 21.3
cmp.d.v EQ
bf [228]

:[227]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [229]

:[228]
push.e 0

:[229]
bf [235]

:[230]
push.v self.blcon
call.i instance_exists(argc=1)
conv.v.b
bf [234]

:[231]
push.v self.blcon
conv.v.i
pushenv [233]

:[232]
call.i instance_destroy(argc=0)
popz.v

:[233]
popenv [232]

:[234]
pushi.e 22
pop.v.i self.cn
pushi.e 10
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e -8
push.v self.friendgraph
conv.v.i
pop.v.i [stacktop]self.vspeed

:[235]
push.v self.cn
pushi.e 23
cmp.i.v EQ
bf [237]

:[236]
pushi.e 24
pop.v.i self.cn
pushi.e 22
pop.v.i global.typer
pushi.e 7
pop.v.i global.faceemotion
pushi.e 188
conv.i.v
push.v self.y
pushi.e 22
add.i.v
push.v self.x
pushi.e 145
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
push.s "obj_papdate_520"@19856
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papdate_521"@19857
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 25
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd

:[237]
push.v self.cn
pushi.e 24
cmp.i.v EQ
bf [239]

:[238]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [240]

:[239]
push.e 0

:[240]
bf [245]

:[241]
pushi.e 25
pop.v.i self.cn
pushi.e 1
conv.i.v
push.d 0.85
conv.d.v
push.v self.datefight
call.i caster_loop(argc=3)
popz.v
pushi.e 169
conv.i.v
pushi.e 160
conv.i.v
pushi.e -100
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.graph3
pushi.e 6
push.v self.graph3
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 0.1
push.v self.graph3
conv.v.i
pop.v.d [stacktop]self.friction
pushi.e 1
push.v self.graph3
conv.v.i
pop.v.i [stacktop]self.tough
push.s "obj_papdate_535"@19859
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papdate_536"@19861
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e -5
pushi.e 66
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [243]

:[242]
push.s "obj_papdate_539"@19863
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papdate_540"@19865
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
b [244]

:[243]
push.s "obj_papdate_541"@19867
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papdate_542"@19869
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg

:[244]
push.s "obj_papdate_543"@19871
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_papdate_544"@19873
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_papdate_545"@19875
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_papdate_546"@19877
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_papdate_547"@19879
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 25
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd

:[245]
push.v self.cn
pushi.e 25
cmp.i.v EQ
bf [247]

:[246]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [248]

:[247]
push.e 0

:[248]
bf [254]

:[249]
push.v self.blcon
call.i instance_exists(argc=1)
pushi.e 1
cmp.i.v EQ
bf [253]

:[250]
push.v self.blcon
conv.v.i
pushenv [252]

:[251]
call.i instance_destroy(argc=0)
popz.v

:[252]
popenv [251]

:[253]
pushi.e 20
pop.v.i self.hspeed
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 26
pop.v.i self.cn

:[254]
push.v self.cn
pushi.e 27
cmp.i.v EQ
bf [256]

:[255]
pushi.e 1
pop.v.i global.facechoice
pushi.e -20
pop.v.i self.hspeed
pushi.e 28
pop.v.i self.cn
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[256]
push.v self.cn
pushi.e 29
cmp.i.v EQ
bf [258]

:[257]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [259]

:[258]
push.e 0

:[259]
bf [261]

:[260]
pushi.e 0
pop.v.i self.hspeed
pushi.e 188
conv.i.v
push.v self.y
pushi.e 22
add.i.v
push.v self.x
pushi.e 145
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 30
pop.v.i self.cn
push.s "obj_papdate_573"@19881
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 25
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd

:[261]
push.v self.cn
pushi.e 30
cmp.i.v EQ
bf [263]

:[262]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 1
cmp.i.v EQ
b [264]

:[263]
push.e 0

:[264]
bf [269]

:[265]
push.v 784.halt
pushi.e 0
cmp.i.v NEQ
bf [269]

:[266]
pushi.e 0
pop.v.i self.choice
pushi.e 1
pop.v.i self.choicer
pushi.e 1
pop.v.i global.typer
push.s "obj_papdate_586"@19883
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 787
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
call.i instance_create(argc=3)
pop.v.v self.iii
push.v self.iii
conv.v.i
pushenv [268]

:[267]
pushi.e 0
pop.v.i self.halt

:[268]
popenv [267]
pushi.e 31
pop.v.i self.cn

:[269]
push.v self.cn
pushi.e 31
cmp.i.v EQ
bf [271]

:[270]
push.v self.choicer
pushi.e 2
cmp.i.v EQ
b [272]

:[271]
push.e 0

:[272]
bf [290]

:[273]
push.v self.blconwd
call.i instance_exists(argc=1)
conv.v.b
bf [277]

:[274]
push.v self.blconwd
conv.v.i
pushenv [276]

:[275]
call.i instance_destroy(argc=0)
popz.v

:[276]
popenv [275]

:[277]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [281]

:[278]
pushi.e 784
pushenv [280]

:[279]
call.i instance_destroy(argc=0)
popz.v

:[280]
popenv [279]

:[281]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [285]

:[282]
pushi.e 784
pushenv [284]

:[283]
call.i instance_destroy(argc=0)
popz.v

:[284]
popenv [283]

:[285]
push.v self.blcon
call.i instance_exists(argc=1)
conv.v.b
bf [289]

:[286]
push.v self.blcon
conv.v.i
pushenv [288]

:[287]
call.i instance_destroy(argc=0)
popz.v

:[288]
popenv [287]

:[289]
pushi.e 33
pop.v.i self.cn
pushi.e 0
pop.v.i self.choicer
pushi.e 10
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[290]
push.v self.cn
pushi.e 34
cmp.i.v EQ
bf [295]

:[291]
pushi.e 22
pop.v.i global.typer
pushi.e 188
conv.i.v
push.v self.y
pushi.e 22
add.i.v
push.v self.x
pushi.e 145
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 35
pop.v.i self.cn
push.s "obj_papdate_611"@19885
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.choice
pushi.e 0
cmp.i.v EQ
bf [293]

:[292]
push.s "obj_papdate_614"@19887
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
b [294]

:[293]
push.s "obj_papdate_618"@19889
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[294]
pushi.e 784
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 25
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd

:[295]
push.v self.cn
pushi.e 35
cmp.i.v EQ
bf [297]

:[296]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [298]

:[297]
push.e 0

:[298]
bf [304]

:[299]
pushi.e 64
push.v self.friendgraph
conv.v.i
pop.v.i [stacktop]self.y
pushi.e 0
push.v self.friendgraph
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 100
push.v self.friendgraph
conv.v.i
pop.v.i [stacktop]self.ideallength
push.v self.blcon
call.i instance_exists(argc=1)
pushi.e 1
cmp.i.v EQ
bf [303]

:[300]
push.v self.blcon
conv.v.i
pushenv [302]

:[301]
call.i instance_destroy(argc=0)
popz.v

:[302]
popenv [301]

:[303]
pushi.e 51
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 10
pop.v.i self.shudder
pushi.e 6
pop.v.i global.faceemotion
pushi.e 1
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
pushi.e 119
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 185
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.g
pushi.e 4
push.v self.g
conv.v.i
pop.v.i [stacktop]self.vshake
pushi.e 4
push.v self.g
conv.v.i
pop.v.i [stacktop]self.hshake
pushi.e 2
push.v self.g
conv.v.i
pop.v.i [stacktop]self.shakespeed
pushi.e 36
pop.v.i self.cn

:[304]
push.v self.cn
pushi.e 37
cmp.i.v EQ
bf [307]

:[305]
pushi.e 38
pop.v.i self.cn
pushi.e 1
pop.v.i self.datevolume
pushi.e 20
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 169
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [307]

:[306]
pushi.e -6
pop.v.i 169.hspeed
pushi.e 0
pop.v.i 169.friction

:[307]
push.v self.cn
pushi.e 39
cmp.i.v EQ
bf [311]

:[308]
push.v self.datevolume
push.d 0.02
sub.d.v
pop.v.v self.datevolume
push.v self.datevolume
push.d 0.05
cmp.d.v LT
bf [310]

:[309]
pushi.e 0
pop.v.i self.datevolume
pushi.e 40
pop.v.i self.cn
push.v self.datefight
call.i caster_stop(argc=1)
popz.v

:[310]
push.v self.datevolume
push.v self.datefight
call.i caster_set_volume(argc=2)
popz.v

:[311]
push.v self.cn
pushi.e 40
cmp.i.v EQ
bf [317]

:[312]
pushi.e 169
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [316]

:[313]
pushi.e 169
pushenv [315]

:[314]
call.i instance_destroy(argc=0)
popz.v

:[315]
popenv [314]

:[316]
pushi.e 22
pop.v.i global.typer
pushi.e 188
conv.i.v
push.v self.y
pushi.e 22
add.i.v
push.v self.x
pushi.e 145
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 41
pop.v.i self.cn
push.s "obj_papdate_667"@19891
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papdate_668"@19893
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papdate_669"@19895
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 25
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd

:[317]
push.v self.cn
pushi.e 41
cmp.i.v EQ
bf [319]

:[318]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [320]

:[319]
push.e 0

:[320]
bf [326]

:[321]
pushi.e 42
pop.v.i self.cn
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.datetense
call.i caster_loop(argc=3)
popz.v
push.s "obj_papdate_679"@19897
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
pushi.e 66
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [323]

:[322]
push.s "obj_papdate_681"@19899
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[323]
pushi.e -5
pushi.e 66
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [325]

:[324]
push.s "obj_papdate_683"@19901
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[325]
push.s "obj_papdate_684"@19903
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papdate_685"@19905
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 25
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd
pushi.e 80
push.v self.friendgraph
conv.v.i
pop.v.i [stacktop]self.ideallength

:[326]
push.v self.cn
pushi.e 42
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
pushi.e 0
pop.v.i self.textskip
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]global.idealborder
pushi.e 35
add.i.v
pop.i.v [array]global.idealborder
pushi.e 43
pop.v.i self.cn
pushi.e 15
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[331]
push.v self.cn
pushi.e 44
cmp.i.v EQ
bf [333]

:[332]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [334]

:[333]
push.e 0

:[334]
bf [344]

:[335]
pushi.e -8
push.v self.friendgraph
conv.v.i
pop.v.i [stacktop]self.vspeed
push.v self.blcon
call.i instance_exists(argc=1)
conv.v.b
bf [339]

:[336]
push.v self.blcon
conv.v.i
pushenv [338]

:[337]
call.i instance_destroy(argc=0)
popz.v

:[338]
popenv [337]

:[339]
pushi.e 1
pop.v.i global.typer
push.s "obj_papdate_705"@19907
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 787
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
call.i instance_create(argc=3)
pop.v.v self.iii
push.v self.iii
conv.v.i
pushenv [341]

:[340]
pushi.e 0
pop.v.i self.shake

:[341]
popenv [340]
push.v self.iii
conv.v.i
pushenv [343]

:[342]
pushi.e 999
pop.v.i self.halt

:[343]
popenv [342]
pushi.e 750
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 30
sub.i.v
pushi.e 320
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 45
pop.v.i self.cn

:[344]
push.v self.cn
pushi.e 47
cmp.i.v EQ
bf [350]

:[345]
pushi.e 1
pop.v.i self.textskip
push.v self.iii
call.i instance_exists(argc=1)
conv.v.b
bf [349]

:[346]
push.v self.iii
conv.v.i
pushenv [348]

:[347]
call.i instance_destroy(argc=0)
popz.v

:[348]
popenv [347]

:[349]
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]global.idealborder
pushi.e 35
sub.i.v
pop.i.v [array]global.idealborder
pushi.e 48
pop.v.i self.cn
pushi.e 22
pop.v.i global.typer
pushi.e 188
conv.i.v
push.v self.y
pushi.e 22
add.i.v
push.v self.x
pushi.e 145
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
push.s "obj_papdate_721"@19909
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papdate_722"@19911
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papdate_723"@19913
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papdate_724"@19915
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 25
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd

:[350]
push.v self.cn
pushi.e 48
cmp.i.v EQ
bf [352]

:[351]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [353]

:[352]
push.e 0

:[353]
bf [358]

:[354]
push.v self.blcon
conv.v.i
pushenv [356]

:[355]
call.i instance_destroy(argc=0)
popz.v

:[356]
popenv [355]
push.v self.haty
pushi.e 1
sub.i.v
pop.v.v self.haty
push.v self.haty
pushi.e -23
cmp.i.v LT
bf [358]

:[357]
pushi.e 49
pop.v.i self.cn

:[358]
push.v self.cn
pushi.e 49
cmp.i.v EQ
bf [360]

:[359]
pushi.e 50
pop.v.i self.cn
pushi.e 188
conv.i.v
push.v self.y
pushi.e 22
add.i.v
push.v self.x
pushi.e 145
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
push.s "obj_papdate_740"@19917
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papdate_741"@19919
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papdate_742"@19921
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papdate_743"@19923
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_papdate_744"@19925
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 25
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd

:[360]
push.v self.cn
pushi.e 50
cmp.i.v EQ
bf [362]

:[361]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 1
cmp.i.v EQ
b [363]

:[362]
push.e 0

:[363]
bf [371]

:[364]
push.v 784.halt
pushi.e 0
cmp.i.v NEQ
bf [366]

:[365]
push.v 784.stringno
pushi.e 3
cmp.i.v EQ
b [367]

:[366]
push.e 0

:[367]
bf [371]

:[368]
pushi.e 0
pop.v.i self.choice
pushi.e 1
pop.v.i self.choicer
pushi.e 1
pop.v.i global.typer
push.s "obj_papdate_756"@19927
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 787
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
call.i instance_create(argc=3)
pop.v.v self.iii
push.v self.iii
conv.v.i
pushenv [370]

:[369]
pushi.e 0
pop.v.i self.halt

:[370]
popenv [369]
pushi.e 51
pop.v.i self.cn

:[371]
push.v self.cn
pushi.e 51
cmp.i.v EQ
bf [373]

:[372]
push.v self.choicer
pushi.e 2
cmp.i.v EQ
b [374]

:[373]
push.e 0

:[374]
bf [392]

:[375]
push.v self.blconwd
call.i instance_exists(argc=1)
conv.v.b
bf [379]

:[376]
push.v self.blconwd
conv.v.i
pushenv [378]

:[377]
call.i instance_destroy(argc=0)
popz.v

:[378]
popenv [377]

:[379]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [383]

:[380]
pushi.e 784
pushenv [382]

:[381]
call.i instance_destroy(argc=0)
popz.v

:[382]
popenv [381]

:[383]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [387]

:[384]
pushi.e 784
pushenv [386]

:[385]
call.i instance_destroy(argc=0)
popz.v

:[386]
popenv [385]

:[387]
push.v self.blcon
call.i instance_exists(argc=1)
conv.v.b
bf [391]

:[388]
push.v self.blcon
conv.v.i
pushenv [390]

:[389]
call.i instance_destroy(argc=0)
popz.v

:[390]
popenv [389]

:[391]
pushi.e 52
pop.v.i self.cn
pushi.e 0
pop.v.i self.choicer
pushi.e 10
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[392]
push.v self.cn
pushi.e 53
cmp.i.v EQ
bf [395]

:[393]
pushi.e 22
pop.v.i global.typer
pushi.e 54
pop.v.i self.cn
push.v self.choice
pushi.e 1
cmp.i.v EQ
bf [395]

:[394]
push.s "obj_papdate_780"@19929
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papdate_781"@19931
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papdate_782"@19933
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papdate_783"@19935
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 188
conv.i.v
push.v self.y
pushi.e 22
add.i.v
push.v self.x
pushi.e 145
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 784
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 25
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd

:[395]
push.v self.cn
pushi.e 54
cmp.i.v EQ
bf [397]

:[396]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [398]

:[397]
push.e 0

:[398]
bf [404]

:[399]
push.v self.blcon
call.i instance_exists(argc=1)
conv.v.b
bf [403]

:[400]
push.v self.blcon
conv.v.i
pushenv [402]

:[401]
call.i instance_destroy(argc=0)
popz.v

:[402]
popenv [401]

:[403]
pushi.e 109
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.present
pushi.e 55
pop.v.i self.cn
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[404]
push.v self.cn
pushi.e 56
cmp.i.v EQ
bf [406]

:[405]
pushi.e 57
pop.v.i self.cn
push.s "obj_papdate_802"@19937
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 188
conv.i.v
push.v self.y
pushi.e 22
add.i.v
push.v self.x
pushi.e 145
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 784
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 25
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd

:[406]
push.v self.cn
pushi.e 57
cmp.i.v EQ
bf [408]

:[407]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 1
cmp.i.v EQ
b [409]

:[408]
push.e 0

:[409]
bf [414]

:[410]
push.v 784.halt
pushi.e 0
cmp.i.v NEQ
bf [414]

:[411]
pushi.e 0
pop.v.i self.choice
pushi.e 1
pop.v.i self.choicer
pushi.e 1
pop.v.i global.typer
push.s "obj_papdate_815"@19939
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 787
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
call.i instance_create(argc=3)
pop.v.v self.iii
push.v self.iii
conv.v.i
pushenv [413]

:[412]
pushi.e 0
pop.v.i self.halt

:[413]
popenv [412]
pushi.e 58
pop.v.i self.cn

:[414]
push.v self.cn
pushi.e 58
cmp.i.v EQ
bf [416]

:[415]
push.v self.choicer
pushi.e 2
cmp.i.v EQ
b [417]

:[416]
push.e 0

:[417]
bf [435]

:[418]
push.v self.blconwd
call.i instance_exists(argc=1)
conv.v.b
bf [422]

:[419]
push.v self.blconwd
conv.v.i
pushenv [421]

:[420]
call.i instance_destroy(argc=0)
popz.v

:[421]
popenv [420]

:[422]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [426]

:[423]
pushi.e 784
pushenv [425]

:[424]
call.i instance_destroy(argc=0)
popz.v

:[425]
popenv [424]

:[426]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [430]

:[427]
pushi.e 784
pushenv [429]

:[428]
call.i instance_destroy(argc=0)
popz.v

:[429]
popenv [428]

:[430]
push.v self.blcon
call.i instance_exists(argc=1)
conv.v.b
bf [434]

:[431]
push.v self.blcon
conv.v.i
pushenv [433]

:[432]
call.i instance_destroy(argc=0)
popz.v

:[433]
popenv [432]

:[434]
pushi.e 59
pop.v.i self.cn
pushi.e 0
pop.v.i self.choicer
pushi.e 10
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[435]
push.v self.cn
pushi.e 60
cmp.i.v EQ
bf [440]

:[436]
pushi.e -180
push.v self.friendgraph
conv.v.i
pop.v.i [stacktop]self.x
pushi.e 144
push.v self.friendgraph
conv.v.i
pop.v.i [stacktop]self.y
pushi.e 0
push.v self.friendgraph
conv.v.i
pop.v.i [stacktop]self.vspeed
push.v self.datetense
call.i caster_stop(argc=1)
popz.v
pushi.e 22
pop.v.i global.typer
push.v self.choice
pushi.e 0
cmp.i.v EQ
bf [438]

:[437]
push.s "obj_papdate_842"@19941
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papdate_843"@19943
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papdate_844"@19945
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papdate_845"@19947
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
b [439]

:[438]
push.s "obj_papdate_849"@19949
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papdate_850"@19951
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papdate_851"@19953
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[439]
pushi.e 61
pop.v.i self.cn
pushi.e 188
conv.i.v
push.v self.y
pushi.e 22
add.i.v
push.v self.x
pushi.e 145
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 784
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 25
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd

:[440]
push.v self.cn
pushi.e 61
cmp.i.v EQ
bf [442]

:[441]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [443]

:[442]
push.e 0

:[443]
bf [447]

:[444]
pushi.e 10
push.v self.friendgraph
conv.v.i
pop.v.i [stacktop]self.hspeed
push.v self.friendgraph
conv.v.i
push.v [stacktop]self.x
pushi.e 90
cmp.i.v GT
bf [446]

:[445]
pushi.e 0
push.v self.friendgraph
conv.v.i
pop.v.i [stacktop]self.hspeed

:[446]
pushi.e 62
pop.v.i self.cn
pushi.e 1
conv.i.v
push.d 0.85
conv.d.v
push.v self.datefight
call.i caster_loop(argc=3)
popz.v
push.s "obj_papdate_864"@19955
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papdate_865"@19957
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papdate_866"@19959
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papdate_867"@19961
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_papdate_868"@19963
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_papdate_869"@19965
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_papdate_870"@19967
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 25
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd

:[447]
push.v self.cn
pushi.e 61
cmp.i.v GTE
bf [450]

:[448]
push.v self.friendgraph
conv.v.i
push.v [stacktop]self.x
pushi.e 70
cmp.i.v GT
bf [450]

:[449]
pushi.e 0
push.v self.friendgraph
conv.v.i
pop.v.i [stacktop]self.hspeed

:[450]
push.v self.cn
pushi.e 62
cmp.i.v EQ
bf [452]

:[451]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 1
cmp.i.v EQ
b [453]

:[452]
push.e 0

:[453]
bf [463]

:[454]
push.v 784.halt
pushi.e 0
cmp.i.v NEQ
bf [456]

:[455]
push.v 784.stringno
pushi.e 5
cmp.i.v EQ
b [457]

:[456]
push.e 0

:[457]
bf [463]

:[458]
push.v self.friendgraph
conv.v.i
push.v [stacktop]self.x
pushi.e 90
cmp.i.v GT
bf [460]

:[459]
pushi.e 0
push.v self.friendgraph
conv.v.i
pop.v.i [stacktop]self.hspeed

:[460]
pushi.e 0
pop.v.i self.choice
pushi.e 1
pop.v.i self.choicer
pushi.e 1
pop.v.i global.typer
push.s "obj_papdate_885"@19969
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 787
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
call.i instance_create(argc=3)
pop.v.v self.iii
push.v self.iii
conv.v.i
pushenv [462]

:[461]
pushi.e 0
pop.v.i self.halt

:[462]
popenv [461]
pushi.e 63
pop.v.i self.cn

:[463]
push.v self.cn
pushi.e 63
cmp.i.v EQ
bf [465]

:[464]
push.v self.choicer
pushi.e 2
cmp.i.v EQ
b [466]

:[465]
push.e 0

:[466]
bf [488]

:[467]
push.v self.friendgraph
conv.v.i
push.v [stacktop]self.x
pushi.e 90
cmp.i.v GT
bf [469]

:[468]
pushi.e 0
push.v self.friendgraph
conv.v.i
pop.v.i [stacktop]self.hspeed

:[469]
push.v self.blconwd
call.i instance_exists(argc=1)
conv.v.b
bf [473]

:[470]
push.v self.blconwd
conv.v.i
pushenv [472]

:[471]
call.i instance_destroy(argc=0)
popz.v

:[472]
popenv [471]

:[473]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [477]

:[474]
pushi.e 784
pushenv [476]

:[475]
call.i instance_destroy(argc=0)
popz.v

:[476]
popenv [475]

:[477]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [481]

:[478]
pushi.e 784
pushenv [480]

:[479]
call.i instance_destroy(argc=0)
popz.v

:[480]
popenv [479]

:[481]
push.v self.blcon
call.i instance_exists(argc=1)
conv.v.b
bf [485]

:[482]
push.v self.blcon
conv.v.i
pushenv [484]

:[483]
call.i instance_destroy(argc=0)
popz.v

:[484]
popenv [483]

:[485]
pushi.e 64
pop.v.i self.cn
push.v self.choice
pushi.e 1
cmp.i.v EQ
bf [487]

:[486]
push.d 65.5
pop.v.d self.cn

:[487]
pushi.e 0
pop.v.i self.choicer
pushi.e 10
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[488]
push.v self.cn
pushi.e 65
cmp.i.v EQ
bf [492]

:[489]
push.d 66.5
pop.v.d self.cn
pushi.e 1
pop.v.i global.typer
push.s "obj_papdate_911"@19971
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papdate_912"@19973
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papdate_913"@19975
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
call.i instance_create(argc=3)
pop.v.v self.iii
push.v self.iii
conv.v.i
pushenv [491]

:[490]
pushi.e 0
pop.v.i self.halt

:[491]
popenv [490]

:[492]
push.v self.cn
push.d 66.5
cmp.d.v EQ
bf [494]

:[493]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [495]

:[494]
push.e 0

:[495]
bf [498]

:[496]
pushi.e 0
pop.v.i self.face_index
push.v self.friendgraph
conv.v.i
push.v [stacktop]self.x
pushi.e 90
cmp.i.v GT
bf [498]

:[497]
pushi.e 0
push.v self.friendgraph
conv.v.i
pop.v.i [stacktop]self.hspeed

:[498]
push.v self.cn
push.d 66.5
cmp.d.v EQ
bf [500]

:[499]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [501]

:[500]
push.e 0

:[501]
bf [511]

:[502]
pushi.e 22
pop.v.i global.typer
push.v self.iii
call.i instance_exists(argc=1)
conv.v.b
bf [506]

:[503]
push.v self.iii
conv.v.i
pushenv [505]

:[504]
call.i instance_destroy(argc=0)
popz.v

:[505]
popenv [504]

:[506]
pushi.e 67
pop.v.i self.cn
push.v self.choice
pushi.e 0
cmp.i.v EQ
bf [508]

:[507]
push.s "obj_papdate_928"@19977
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papdate_929"@19979
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papdate_930"@19981
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papdate_931"@19983
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[508]
push.v self.choice
pushi.e 1
cmp.i.v EQ
bf [510]

:[509]
push.s "obj_papdate_935"@19985
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papdate_936"@19987
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papdate_937"@19989
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papdate_938"@19991
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[510]
pushi.e 188
conv.i.v
push.v self.y
pushi.e 22
add.i.v
push.v self.x
pushi.e 145
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 784
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 25
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd

:[511]
push.v self.cn
pushi.e 67
cmp.i.v EQ
bf [513]

:[512]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [514]

:[513]
push.e 0

:[514]
bf [516]

:[515]
pushi.e 68
pop.v.i self.cn
pushi.e 100
push.v self.friendgraph
conv.v.i
pop.v.i [stacktop]self.ideallength
push.s "obj_papdate_948"@19993
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 25
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd
pushi.e 51
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 10
pop.v.i self.shudder
pushi.e 6
pop.v.i global.faceemotion
pushi.e 1
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
pushi.e 119
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 185
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.g
pushi.e 4
push.v self.g
conv.v.i
pop.v.i [stacktop]self.vshake
pushi.e 4
push.v self.g
conv.v.i
pop.v.i [stacktop]self.hshake
pushi.e 2
push.v self.g
conv.v.i
pop.v.i [stacktop]self.shakespeed

:[516]
push.v self.cn
pushi.e 69
cmp.i.v EQ
bf [522]

:[517]
pushi.e 70
pop.v.i self.cn
pushi.e 120
push.v self.friendgraph
conv.v.i
pop.v.i [stacktop]self.ideallength
push.s "obj_papdate_967"@19995
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [521]

:[518]
pushi.e 784
pushenv [520]

:[519]
call.i instance_destroy(argc=0)
popz.v

:[520]
popenv [519]

:[521]
pushi.e 784
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 25
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd
pushi.e 51
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 14
pop.v.i self.shudder
pushi.e 6
pop.v.i global.faceemotion
pushi.e 1
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
pushi.e 119
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 185
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.g
pushi.e 4
push.v self.g
conv.v.i
pop.v.i [stacktop]self.vshake
pushi.e 4
push.v self.g
conv.v.i
pop.v.i [stacktop]self.hshake
pushi.e 2
push.v self.g
conv.v.i
pop.v.i [stacktop]self.shakespeed

:[522]
push.v self.cn
pushi.e 71
cmp.i.v EQ
bf [528]

:[523]
push.v self.datefight
call.i caster_stop(argc=1)
popz.v
pushi.e 72
pop.v.i self.cn
pushi.e 999
push.v self.friendgraph
conv.v.i
pop.v.i [stacktop]self.ideallength
push.s "obj_papdate_987"@19997
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [527]

:[524]
pushi.e 784
pushenv [526]

:[525]
call.i instance_destroy(argc=0)
popz.v

:[526]
popenv [525]

:[527]
pushi.e 784
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 25
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd
pushi.e 51
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 18
pop.v.i self.shudder
pushi.e 6
pop.v.i global.faceemotion
pushi.e 1
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
pushi.e 119
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 185
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.g
pushi.e 4
push.v self.g
conv.v.i
pop.v.i [stacktop]self.vshake
pushi.e 4
push.v self.g
conv.v.i
pop.v.i [stacktop]self.hshake
pushi.e 2
push.v self.g
conv.v.i
pop.v.i [stacktop]self.shakespeed

:[528]
push.v self.cn
pushi.e 73
cmp.i.v EQ
bf [532]

:[529]
push.v self.blcon
conv.v.i
pushenv [531]

:[530]
call.i instance_destroy(argc=0)
popz.v

:[531]
popenv [530]
pushi.e 74
pop.v.i self.cn
pushi.e 151
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.g
push.d 0.01
push.v self.g
conv.v.i
pop.v.d [stacktop]self.tspeed
pushi.e 110
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[532]
push.v self.cn
pushi.e 75
cmp.i.v EQ
bf [540]

:[533]
pushi.e 999
push.v self.friendgraph
conv.v.i
pop.v.i [stacktop]self.x
push.s "music/papyrus.ogg"@2632
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.papyrus
pushi.e 76
pop.v.i self.cn
pushi.e 320
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_wview
pushi.e 240
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_hview
pushi.e 22
pop.v.i global.typer
pushi.e -5
pushi.e 66
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [535]

:[534]
push.s "obj_papdate_1021"@19999
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papdate_1022"@20001
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papdate_1023"@20003
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papdate_1024"@20005
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_papdate_1025"@20007
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_papdate_1026"@20009
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_papdate_1027"@20011
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_papdate_1028"@20013
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
b [536]

:[535]
push.s "obj_papdate_1032"@20014
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papdate_1033"@20016
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papdate_1034"@20017
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papdate_1035"@20018
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_papdate_1036"@20020
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_papdate_1037"@20021
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_papdate_1038"@20022
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_papdate_1039"@20024
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg

:[536]
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [538]

:[537]
pushi.e 45
pop.v.i local.writery
b [539]

:[538]
pushi.e 100
pop.v.i local.writery

:[539]
pushi.e 784
conv.i.v
pushloc.v local.writery
pushi.e 60
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.myw
push.i -100000
push.v self.myw
conv.v.i
pop.v.i [stacktop]self.depth

:[540]
push.v self.cn
pushi.e 76
cmp.i.v EQ
bf [542]

:[541]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [543]

:[542]
push.e 0

:[543]
bf [545]

:[544]
pushi.e 1
push.v self.g
conv.v.i
pop.v.i [stacktop]self.image_alpha
push.d -0.05
push.v self.g
conv.v.i
pop.v.d [stacktop]self.tspeed
pushi.e 77
pop.v.i self.cn
pushi.e 20
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 480
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_hview
pushi.e 640
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_wview

:[545]
push.v self.cn
pushi.e 78
cmp.i.v EQ
bf [550]

:[546]
pushi.e 79
pop.v.i self.cn
pushi.e 8
pop.v.i global.faceemotion
pushi.e -5
pushi.e 66
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [548]

:[547]
push.s "obj_papdate_1079"@20026
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papdate_1080"@20028
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papdate_1081"@20030
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papdate_1082"@20031
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_papdate_1083"@20033
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_papdate_1084"@20035
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_papdate_1085"@20037
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_papdate_1086"@20039
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_papdate_1087"@20041
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_papdate_1088"@20043
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_papdate_1089"@20045
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_papdate_1090"@20047
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_papdate_1091"@20049
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_papdate_1092"@20051
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_papdate_1093"@20053
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_papdate_1094"@20055
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_papdate_1095"@20057
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_papdate_1096"@20059
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
push.s "obj_papdate_1097"@20061
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]global.msg
push.s "obj_papdate_1098"@20063
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 19
pop.v.v [array]global.msg
push.s "obj_papdate_1099"@20065
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 20
pop.v.v [array]global.msg
push.s "obj_papdate_1100"@20067
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 21
pop.v.v [array]global.msg
push.s "obj_papdate_1101"@20068
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 22
pop.v.v [array]global.msg
push.s "obj_papdate_1102"@20070
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 23
pop.v.v [array]global.msg
push.s "obj_papdate_1103"@20072
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 24
pop.v.v [array]global.msg
push.s "obj_papdate_1104"@20074
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 25
pop.v.v [array]global.msg
push.s "obj_papdate_1105"@20076
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 26
pop.v.v [array]global.msg
push.s "obj_papdate_1106"@20078
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 27
pop.v.v [array]global.msg
push.s "obj_papdate_1107"@20080
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 28
pop.v.v [array]global.msg
push.s "obj_papdate_1108"@20082
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 29
pop.v.v [array]global.msg
push.s "obj_papdate_1109"@20084
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 30
pop.v.v [array]global.msg
push.s "obj_papdate_1110"@20086
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 31
pop.v.v [array]global.msg
push.s "obj_papdate_1111"@20088
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 32
pop.v.v [array]global.msg
push.s "obj_papdate_1112"@20090
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 33
pop.v.v [array]global.msg
push.s "obj_papdate_1113"@20092
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 34
pop.v.v [array]global.msg
push.s "obj_papdate_1114"@20094
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 35
pop.v.v [array]global.msg
push.s "obj_papdate_1115"@20096
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 36
pop.v.v [array]global.msg
b [549]

:[548]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.papyrus
call.i caster_loop(argc=3)
popz.v
pushi.e 8
pop.v.i global.faceemotion
push.s "obj_papdate_1121"@20098
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papdate_1122"@20100
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papdate_1123"@20102
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papdate_1124"@20104
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_papdate_1125"@20106
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_papdate_1126"@20108
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_papdate_1127"@20110
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_papdate_1128"@20112
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_papdate_1129"@20114
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_papdate_1130"@20116
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_papdate_1131"@20118
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_papdate_1132"@20120
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_papdate_1133"@20122
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_papdate_1134"@20123
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg

:[549]
pushi.e 188
conv.i.v
push.v self.y
pushi.e 22
add.i.v
push.v self.x
pushi.e 145
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 784
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 25
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd

:[550]
push.v self.cn
pushi.e 79
cmp.i.v EQ
bf [552]

:[551]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [553]

:[552]
push.e 0

:[553]
bf [557]

:[554]
push.v self.blcon
conv.v.i
pushenv [556]

:[555]
call.i instance_destroy(argc=0)
popz.v

:[556]
popenv [555]
pushi.e 80
pop.v.i self.cn
pushi.e 15
pop.v.i self.hspeed
pushi.e 60
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[557]
push.v self.cn
pushi.e 81
cmp.i.v EQ
bf [559]

:[558]
pushi.e -30
pop.v.i self.hspeed
pushi.e 82
pop.v.i self.cn
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[559]
push.v self.cn
pushi.e 83
cmp.i.v EQ
bf [561]

:[560]
pushi.e 0
pop.v.i self.hspeed
push.s "obj_papdate_1175"@20125
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papdate_1176"@20127
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papdate_1177"@20129
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papdate_1178"@20131
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_papdate_1179"@20133
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 210
conv.i.v
call.i scr_phoneget(argc=1)
popz.v
pushi.e 188
conv.i.v
push.v self.y
pushi.e 22
add.i.v
push.v self.x
pushi.e 145
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 784
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 25
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd
pushi.e 84
pop.v.i self.cn

:[561]
push.v self.cn
pushi.e 84
cmp.i.v EQ
bf [563]

:[562]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [564]

:[563]
push.e 0

:[564]
bf [568]

:[565]
pushi.e 30
pop.v.i self.hspeed
push.v self.blcon
conv.v.i
pushenv [567]

:[566]
call.i instance_destroy(argc=0)
popz.v

:[567]
popenv [566]
pushi.e 85
pop.v.i self.cn
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.datevolume

:[568]
push.v self.cn
pushi.e 86
cmp.i.v EQ
bf [570]

:[569]
pushi.e 87
pop.v.i self.cn
pushi.e 151
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.d
push.d 0.03
push.v self.d
conv.v.i
pop.v.d [stacktop]self.tspeed
pushi.e 1084
push.v self.d
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 50
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[570]
push.v self.cn
pushi.e 87
cmp.i.v EQ
bf [574]

:[571]
push.v self.datevolume
push.d 0.03
sub.d.v
pop.v.v self.datevolume
push.v self.datevolume
push.d 0.04
cmp.d.v LT
bf [573]

:[572]
pushi.e 0
pop.v.i self.datevolume
pushi.e 88
pop.v.i self.cn

:[573]
push.v self.datevolume
push.v self.papyrus
call.i caster_set_volume(argc=2)
popz.v

:[574]
push.v self.cn
pushi.e 88
cmp.i.v EQ
bf [end]

:[575]
pushi.e 0
pop.v.i global.border
call.i SCR_BORDERSETUP(argc=0)
popz.v
pushi.e 4
pushi.e -5
pushi.e 88
pop.v.i [array]global.flag
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "PD"@47567
conv.s.v
push.s "Papyrus"@6857
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.pd
push.v self.pd
pushi.e 1
add.i.v
push.s "PD"@47567
conv.s.v
push.s "Papyrus"@6857
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v
pushi.e 0
pop.v.i global.interact
pushi.e 149
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
pushi.e 77
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]