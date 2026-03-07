.localvar 0 arguments

:[0]
push.v self.cn
pushi.e -1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_adate_125"@8915
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
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
popz.v
pushi.e 0
pop.v.i self.cn

:[2]
push.v self.cn
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [9]

:[6]
pushi.e 784
pushenv [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
popenv [7]
pushi.e 177
pop.v.i self.al
push.v 177.x
pop.v.v self.xx
push.v 177.y
pop.v.v self.yy
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.msc
pushi.e 74
pop.v.i global.typer
push.s "obj_adate_142"@8917
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
push.v self.yy
push.v self.xx
pushi.e 250
sub.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 2
pop.v.i self.cn

:[9]
push.v self.cn
pushi.e 2
cmp.i.v EQ
bf [11]

:[10]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushi.e 3
pop.v.i self.cn
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[14]
push.v self.cn
pushi.e 4
cmp.i.v EQ
bf [17]

:[15]
push.v self.al
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 8
sub.i.v
pop.i.v [stacktop]self.x
push.v self.al
conv.v.i
push.v [stacktop]self.x
pushi.e 350
cmp.i.v LT
bf [17]

:[16]
pushi.e 5
pop.v.i self.cn

:[17]
push.v self.cn
pushi.e 5
cmp.i.v EQ
bf [19]

:[18]
push.v 177.x
pop.v.v self.xx
push.v 177.y
pop.v.v self.yy
pushi.e 5
pop.v.i global.faceemotion
pushi.e 3
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.msc
pushi.e 74
pop.v.i global.typer
push.s "obj_adate_170"@8919
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_adate_171"@8921
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_adate_172"@8923
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_adate_173"@8925
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
push.v self.yy
push.v self.xx
pushi.e 260
sub.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 6
pop.v.i self.cn

:[19]
push.v self.cn
pushi.e 6
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
push.d 6.1
pop.v.d self.cn
pushi.e 55
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.datemusic
call.i caster_play(argc=3)
pop.v.v global.currentsong
pushi.e 1
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_adate_186"@8927
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
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
popz.v

:[24]
push.v self.cn
push.d 7.1
cmp.d.v EQ
bf [28]

:[25]
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mfo
pushi.e 784
pushenv [27]

:[26]
call.i instance_destroy(argc=0)
popz.v

:[27]
popenv [26]
pushi.e 74
pop.v.i global.typer
pushi.e 9
pop.v.i global.faceemotion
pushi.e 4
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.s "obj_adate_199"@8929
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_adate_200"@8931
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
push.v self.yy
push.v self.xx
pushi.e 260
sub.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 8
pop.v.i self.cn

:[28]
push.v self.cn
pushi.e 8
cmp.i.v EQ
bf [30]

:[29]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [31]

:[30]
push.e 0

:[31]
bf [33]

:[32]
pushi.e 1
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_adate_209"@8933
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
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
popz.v
pushi.e 9
pop.v.i self.cn

:[33]
push.v self.cn
pushi.e 9
cmp.i.v EQ
bf [35]

:[34]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [36]

:[35]
push.e 0

:[36]
bf [40]

:[37]
push.v self.mfo
conv.v.i
pushenv [39]

:[38]
call.i instance_destroy(argc=0)
popz.v

:[39]
popenv [38]
pushi.e 74
pop.v.i global.typer
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.lab
call.i caster_loop(argc=3)
pop.v.v global.currentsong
pushi.e 9
pop.v.i global.faceemotion
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.s "obj_adate_221"@8935
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_adate_222"@8937
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_adate_223"@8939
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_adate_224"@8941
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_adate_225"@8943
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_adate_226"@8945
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_adate_227"@8947
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_adate_228"@8949
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_adate_229"@8951
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_adate_230"@8953
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_adate_231"@8955
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_adate_232"@8957
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_adate_233"@8959
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_adate_234"@8961
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_adate_235"@8963
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_adate_236"@8965
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_adate_237"@8967
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
push.v self.yy
push.v self.xx
pushi.e 260
sub.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 10
pop.v.i self.cn

:[40]
push.v self.cn
pushi.e 10
cmp.i.v EQ
bf [56]

:[41]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [55]

:[42]
push.v 784.stringno
pushi.e 6
cmp.i.v EQ
bf [44]

:[43]
pushi.e 5
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 1
push.v self.al
conv.v.i
pop.v.i [stacktop]self.item
pushi.e 0
push.v self.al
conv.v.i
pop.v.i [stacktop]self.aa

:[44]
push.v 784.stringno
pushi.e 8
cmp.i.v EQ
bf [46]

:[45]
pushi.e 6
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 0
push.v self.al
conv.v.i
pop.v.i [stacktop]self.item
pushi.e 0
push.v self.al
conv.v.i
pop.v.i [stacktop]self.aa

:[46]
push.v 784.stringno
pushi.e 10
cmp.i.v EQ
bf [48]

:[47]
pushi.e 5
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 1
push.v self.al
conv.v.i
pop.v.i [stacktop]self.item
pushi.e 1
push.v self.al
conv.v.i
pop.v.i [stacktop]self.aa

:[48]
push.v 784.stringno
pushi.e 12
cmp.i.v EQ
bf [50]

:[49]
pushi.e 6
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 0
push.v self.al
conv.v.i
pop.v.i [stacktop]self.item
pushi.e 1
push.v self.al
conv.v.i
pop.v.i [stacktop]self.aa

:[50]
push.v 784.stringno
pushi.e 13
cmp.i.v EQ
bf [52]

:[51]
pushi.e 5
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 1
push.v self.al
conv.v.i
pop.v.i [stacktop]self.item
pushi.e 2
push.v self.al
conv.v.i
pop.v.i [stacktop]self.aa

:[52]
push.v 784.stringno
pushi.e 15
cmp.i.v EQ
bf [54]

:[53]
pushi.e 6
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 0
push.v self.al
conv.v.i
pop.v.i [stacktop]self.item
pushi.e 2
push.v self.al
conv.v.i
pop.v.i [stacktop]self.aa

:[54]
b [56]

:[55]
pushi.e 11
pop.v.i self.cn
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mfo
push.d 0.02
push.v self.mfo
conv.v.i
pop.v.d [stacktop]self.fadespeed
pushi.e 1
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_adate_301"@8969
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
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
popz.v

:[56]
push.v self.cn
pushi.e 11
cmp.i.v EQ
bf [58]

:[57]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [59]

:[58]
push.e 0

:[59]
bf [61]

:[60]
pushi.e 74
pop.v.i global.typer
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.s "obj_adate_314"@8971
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
push.v self.yy
push.v self.xx
pushi.e 260
sub.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 12
pop.v.i self.cn

:[61]
push.v self.cn
pushi.e 12
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
bf [66]

:[65]
pushi.e 13
pop.v.i self.cn
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[66]
push.v self.cn
pushi.e 14
cmp.i.v EQ
bf [68]

:[67]
pushi.e 1
pop.v.i global.faceemotion
pushi.e 15
pop.v.i self.cn
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[68]
push.v self.cn
pushi.e 16
cmp.i.v EQ
bf [70]

:[69]
pushi.e 2
pop.v.i global.faceemotion
pushi.e 17
pop.v.i self.cn
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[70]
push.v self.cn
pushi.e 18
cmp.i.v EQ
bf [72]

:[71]
pushi.e 3
pop.v.i global.faceemotion
pushi.e 19
pop.v.i self.cn
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[72]
push.v self.cn
pushi.e 20
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
push.v self.mfo
conv.v.i
pushenv [78]

:[77]
call.i instance_destroy(argc=0)
popz.v

:[78]
popenv [77]
pushi.e 74
pop.v.i global.typer
pushi.e 3
pop.v.i global.faceemotion
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.s "obj_adate_352"@8973
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_adate_353"@8975
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
push.v self.yy
push.v self.xx
pushi.e 260
sub.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 21
pop.v.i self.cn

:[79]
push.v self.cn
pushi.e 21
cmp.i.v EQ
bf [81]

:[80]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 1
cmp.i.v EQ
b [82]

:[81]
push.e 0

:[82]
bf [90]

:[83]
push.v 784.stringno
pushi.e 1
cmp.i.v EQ
bf [85]

:[84]
push.v 784.halt
pushi.e 0
cmp.i.v NEQ
b [86]

:[85]
push.e 0

:[86]
bf [90]

:[87]
pushi.e 0
pop.v.i self.choice
pushi.e 1
pop.v.i self.choicer
pushi.e 1
pop.v.i global.typer
push.s "obj_adate_367"@8977
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
pushenv [89]

:[88]
pushi.e 0
pop.v.i self.halt

:[89]
popenv [88]
pushi.e 22
pop.v.i self.cn

:[90]
push.v self.cn
pushi.e 22
cmp.i.v EQ
bf [92]

:[91]
push.v self.choicer
pushi.e 2
cmp.i.v EQ
b [93]

:[92]
push.e 0

:[93]
bf [99]

:[94]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [98]

:[95]
pushi.e 784
pushenv [97]

:[96]
call.i instance_destroy(argc=0)
popz.v

:[97]
popenv [96]

:[98]
pushi.e 23
pop.v.i self.cn
pushi.e 0
pop.v.i self.choicer
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[99]
push.v self.cn
pushi.e 24
cmp.i.v EQ
bf [104]

:[100]
pushi.e 74
pop.v.i global.typer
push.v self.choice
pushi.e 0
cmp.i.v EQ
bf [102]

:[101]
pushi.e 6
pop.v.i global.faceemotion
push.s "obj_adate_391"@8979
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
b [103]

:[102]
pushi.e 6
pop.v.i global.faceemotion
push.s "obj_adate_396"@8981
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[103]
pushi.e 1
conv.i.v
push.v self.yy
push.v self.xx
pushi.e 260
sub.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 25
pop.v.i self.cn

:[104]
push.v self.cn
pushi.e 25
cmp.i.v EQ
bf [106]

:[105]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [107]

:[106]
push.e 0

:[107]
bf [109]

:[108]
pushi.e 3
pop.v.i global.faceemotion
pushi.e 100
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 26
pop.v.i self.cn

:[109]
push.v self.cn
pushi.e 27
cmp.i.v EQ
bf [111]

:[110]
pushi.e 74
pop.v.i global.typer
pushi.e 6
pop.v.i global.faceemotion
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.s "obj_adate_414"@8983
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_adate_415"@8985
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_adate_416"@8987
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_adate_417"@8989
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_adate_418"@8991
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
push.v self.yy
push.v self.xx
pushi.e 260
sub.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 28
pop.v.i self.cn

:[111]
push.v self.cn
pushi.e 28
cmp.i.v EQ
bf [113]

:[112]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [114]

:[113]
push.e 0

:[114]
bf [116]

:[115]
pushi.e -8
push.v self.al
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 50
conv.i.v
call.i snd_play(argc=1)
popz.v
push.d 28.1
pop.v.d self.cn
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[116]
push.v self.cn
push.d 29.1
cmp.d.v EQ
bf [118]

:[117]
pushi.e 1
pop.v.i self.fadeouter
pushi.e 29
pop.v.i self.cn
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[118]
push.v self.cn
pushi.e 30
cmp.i.v EQ
bf [122]

:[119]
pushi.e 175
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 113
pop.v.i global.currentroom
push.s "music/ambientwater.ogg"@2645
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.watersfx
push.d 0.9
conv.d.v
pushi.e 0
conv.i.v
push.v self.watersfx
call.i caster_loop(argc=3)
pop.v.v global.currentsong
pushi.e 153
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mfi
pushi.e 2
pop.v.i self.fadeouter
pushi.e 177
pushenv [121]

:[120]
call.i instance_destroy(argc=0)
popz.v

:[121]
popenv [120]
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 177
conv.i.v
pushi.e 180
conv.i.v
pushbltn.v self.room_width
pushi.e 160
add.i.v
call.i instance_create(argc=3)
pop.v.v self.al
pushi.e 176
conv.i.v
push.v self.al
conv.v.i
push.v [stacktop]self.y
push.v self.al
conv.v.i
push.v [stacktop]self.sprite_height
pushi.e 2
mul.i.v
add.v.v
pushi.e 20
sub.i.v
pushi.e 500
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.trashcan
pushi.e -8
push.v self.al
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 31
pop.v.i self.cn

:[122]
push.v self.cn
pushi.e 31
cmp.i.v EQ
bf [126]

:[123]
push.v self.al
conv.v.i
push.v [stacktop]self.x
pushi.e 350
cmp.i.v LT
bf [126]

:[124]
pushi.e 0
push.v self.al
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 350
push.v self.al
conv.v.i
pop.v.i [stacktop]self.x
pushi.e 32
pop.v.i self.cn
push.v self.skip
pushi.e 1
cmp.i.v EQ
bf [126]

:[125]
pushi.e 110
pop.v.i self.cn

:[126]
push.v self.cn
pushi.e 32
cmp.i.v EQ
bf [128]

:[127]
push.v self.al
conv.v.i
push.v [stacktop]self.x
pop.v.v self.xx
push.v self.al
conv.v.i
push.v [stacktop]self.y
pop.v.v self.yy
pushi.e 0
pop.v.i global.msc
pushi.e 74
pop.v.i global.typer
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.s "obj_adate_476"@8993
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_adate_477"@8995
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_adate_478"@8997
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_adate_479"@8999
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_adate_480"@9001
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
push.v self.yy
push.v self.xx
pushi.e 260
sub.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 33
pop.v.i self.cn

:[128]
push.v self.cn
pushi.e 33
cmp.i.v EQ
bf [130]

:[129]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [131]

:[130]
push.e 0

:[131]
bf [133]

:[132]
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mfo
push.d 0.04
push.v self.mfo
conv.v.i
pop.v.d [stacktop]self.fadespeed
pushi.e 3
pop.v.i global.faceemotion
pushi.e 34
pop.v.i self.cn
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[133]
push.v self.cn
pushi.e 35
cmp.i.v EQ
bf [137]

:[134]
push.v self.mfo
conv.v.i
pushenv [136]

:[135]
call.i instance_destroy(argc=0)
popz.v

:[136]
popenv [135]
push.s "music/date_tense.ogg"@2842
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.datetense
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.datetense
call.i caster_loop(argc=3)
pop.v.v global.currentsong
pushi.e 74
pop.v.i global.typer
pushi.e 3
pop.v.i global.faceemotion
pushi.e 2
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.s "obj_adate_503"@9003
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_adate_504"@9005
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_adate_505"@9007
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_adate_506"@9009
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_adate_507"@9011
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_adate_508"@9013
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
push.v self.yy
push.v self.xx
pushi.e 260
sub.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 36
pop.v.i self.cn
push.v self.al
conv.v.i
push.v [stacktop]self.y
pop.v.v self.nowy

:[137]
push.v self.cn
pushi.e 36
cmp.i.v EQ
bf [139]

:[138]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [140]

:[139]
push.e 0

:[140]
bf [145]

:[141]
push.v self.al
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 10
sub.i.v
pop.i.v [stacktop]self.x
push.v self.al
conv.v.i
push.v [stacktop]self.y
push.v self.nowy
pushi.e 22
sub.i.v
cmp.v.v GT
bf [143]

:[142]
push.v self.al
conv.v.i
dup.i 0
push.v [stacktop]self.y
pushi.e 1
sub.i.v
pop.i.v [stacktop]self.y

:[143]
push.v self.al
conv.v.i
push.v [stacktop]self.x
push.v self.trashcan
conv.v.i
push.v [stacktop]self.x
pushi.e 240
sub.i.v
cmp.v.v LT
bf [145]

:[144]
pushi.e 37
pop.v.i self.cn

:[145]
push.v self.cn
pushi.e 37
cmp.i.v EQ
bf [150]

:[146]
push.v self.al
conv.v.i
push.v [stacktop]self.y
push.v self.nowy
pushi.e 22
sub.i.v
cmp.v.v GT
bf [148]

:[147]
push.v self.al
conv.v.i
dup.i 0
push.v [stacktop]self.y
pushi.e 1
sub.i.v
pop.i.v [stacktop]self.y

:[148]
pushi.e 2
push.v self.al
conv.v.i
pop.v.i [stacktop]self.depth
push.v self.al
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 10
add.i.v
pop.i.v [stacktop]self.x
push.v self.al
conv.v.i
push.v [stacktop]self.x
push.v self.trashcan
conv.v.i
push.v [stacktop]self.x
pushi.e 70
sub.i.v
cmp.v.v GT
bf [150]

:[149]
pushi.e 38
pop.v.i self.cn

:[150]
push.v self.cn
pushi.e 38
cmp.i.v EQ
bf [152]

:[151]
pushi.e 1
pop.v.i global.facechoice
pushi.e 178
conv.i.v
push.v self.trashcan
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
pushi.e -100
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.und
push.v self.und
conv.v.i
dup.i 0
push.v [stacktop]self.y
push.v self.und
conv.v.i
push.v [stacktop]self.sprite_height
pushi.e 2
mul.i.v
pushi.e 66
add.i.v
sub.v.v
pop.i.v [stacktop]self.y
pushi.e 16
push.v self.und
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 39
pop.v.i self.cn

:[152]
push.v self.cn
pushi.e 39
cmp.i.v EQ
bf [155]

:[153]
push.v self.und
conv.v.i
push.v [stacktop]self.x
pushi.e 80
cmp.i.v GT
bf [155]

:[154]
pushi.e 80
push.v self.und
conv.v.i
pop.v.i [stacktop]self.x
pushi.e 0
push.v self.und
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 40
pop.v.i self.cn
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[155]
push.v self.cn
pushi.e 41
cmp.i.v EQ
bf [157]

:[156]
pushi.e 39
pop.v.i global.typer
push.v self.und
conv.v.i
push.v [stacktop]self.x
pop.v.v self.xxx
push.v self.und
conv.v.i
push.v [stacktop]self.y
pop.v.v self.yyy
push.s "obj_adate_556"@9015
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_adate_557"@9017
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_adate_558"@9019
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_adate_559"@9021
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_adate_560"@9023
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_adate_561"@9025
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_adate_562"@9027
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
push.v self.yyy
pushi.e 20
add.i.v
push.v self.xxx
pushi.e 100
add.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 42
pop.v.i self.cn

:[157]
push.v self.cn
pushi.e 42
cmp.i.v EQ
bf [159]

:[158]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 1
cmp.i.v EQ
b [160]

:[159]
push.e 0

:[160]
bf [168]

:[161]
push.v 784.stringno
pushi.e 6
cmp.i.v EQ
bf [163]

:[162]
push.v 784.halt
pushi.e 0
cmp.i.v NEQ
b [164]

:[163]
push.e 0

:[164]
bf [168]

:[165]
pushi.e 2
push.v self.al
conv.v.i
pop.v.i [stacktop]self.shake
pushi.e 0
pop.v.i self.choice
pushi.e 1
pop.v.i self.choicer
pushi.e 1
pop.v.i global.typer
push.s "obj_adate_576"@9029
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
pushenv [167]

:[166]
pushi.e 0
pop.v.i self.halt

:[167]
popenv [166]
pushi.e 43
pop.v.i self.cn

:[168]
push.v self.cn
pushi.e 43
cmp.i.v EQ
bf [170]

:[169]
push.v self.choicer
pushi.e 2
cmp.i.v EQ
b [171]

:[170]
push.e 0

:[171]
bf [177]

:[172]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [176]

:[173]
pushi.e 784
pushenv [175]

:[174]
call.i instance_destroy(argc=0)
popz.v

:[175]
popenv [174]

:[176]
pushi.e 44
pop.v.i self.cn
pushi.e 0
pop.v.i self.choicer
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[177]
push.v self.cn
pushi.e 45
cmp.i.v EQ
bf [182]

:[178]
pushi.e 0
push.v self.al
conv.v.i
pop.v.i [stacktop]self.shake
pushi.e 39
pop.v.i global.typer
push.v self.choice
pushi.e 0
cmp.i.v EQ
bf [180]

:[179]
pushi.e 0
pop.v.i global.facechoice
push.s "obj_adate_602"@9031
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_adate_603"@9033
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_adate_604"@9035
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
b [181]

:[180]
pushi.e 1
pop.v.i global.facechoice
push.s "obj_adate_609"@9037
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_adate_610"@9039
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_adate_611"@9041
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[181]
pushi.e 0
conv.i.v
push.v self.yyy
pushi.e 20
add.i.v
push.v self.xxx
pushi.e 100
add.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 46
pop.v.i self.cn

:[182]
push.v self.cn
pushi.e 46
cmp.i.v EQ
bf [184]

:[183]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [185]

:[184]
push.e 0

:[185]
bf [187]

:[186]
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mfo
pushi.e 20
push.v self.und
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 47
pop.v.i self.cn
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[187]
push.v self.cn
pushi.e 48
cmp.i.v EQ
bf [191]

:[188]
pushi.e 92
pushenv [190]

:[189]
call.i instance_destroy(argc=0)
popz.v

:[190]
popenv [189]
pushi.e 49
pop.v.i self.cn
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 3
pop.v.i global.faceemotion

:[191]
push.v self.cn
pushi.e 49
cmp.i.v EQ
bf [194]

:[192]
pushi.e 2
push.v self.al
conv.v.i
pop.v.i [stacktop]self.depth
push.v self.al
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 10
sub.i.v
pop.i.v [stacktop]self.x
push.v self.al
conv.v.i
push.v [stacktop]self.x
push.v self.trashcan
conv.v.i
push.v [stacktop]self.x
pushi.e 240
sub.i.v
cmp.v.v LT
bf [194]

:[193]
pushi.e 50
pop.v.i self.cn

:[194]
push.v self.cn
pushi.e 50
cmp.i.v EQ
bf [196]

:[195]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [197]

:[196]
push.e 0

:[197]
bf [202]

:[198]
pushi.e 0
push.v self.al
conv.v.i
pop.v.i [stacktop]self.depth
push.v self.al
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 10
add.i.v
pop.i.v [stacktop]self.x
push.v self.al
conv.v.i
push.v [stacktop]self.y
push.v self.nowy
cmp.v.v LT
bf [200]

:[199]
push.v self.al
conv.v.i
dup.i 0
push.v [stacktop]self.y
pushi.e 4
add.i.v
pop.i.v [stacktop]self.y

:[200]
push.v self.al
conv.v.i
push.v [stacktop]self.x
push.v self.xx
cmp.v.v GT
bf [202]

:[201]
push.v self.nowy
push.v self.al
conv.v.i
pop.v.v [stacktop]self.y
pushi.e 51
pop.v.i self.cn
push.v self.xx
push.v self.al
conv.v.i
pop.v.v [stacktop]self.x

:[202]
push.v self.cn
pushi.e 51
cmp.i.v EQ
bf [204]

:[203]
pushi.e 52
pop.v.i self.cn
push.s "music/lab.ogg"@2855
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.lab
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[204]
push.v self.cn
pushi.e 53
cmp.i.v EQ
bf [206]

:[205]
push.d 0.75
conv.d.v
pushi.e 1
conv.i.v
push.v self.lab
call.i caster_loop(argc=3)
pop.v.v global.currentsong
pushi.e 74
pop.v.i global.typer
pushi.e 3
pop.v.i global.faceemotion
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.s "obj_adate_669"@9043
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_adate_670"@9045
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_adate_671"@9047
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_adate_672"@9049
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_adate_673"@9051
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_adate_674"@9053
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_adate_675"@9055
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_adate_676"@9057
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_adate_677"@9059
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_adate_678"@9061
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_adate_679"@9063
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_adate_680"@9065
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_adate_681"@9067
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_adate_682"@9069
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_adate_683"@9071
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_adate_684"@9073
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_adate_685"@9075
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_adate_686"@9077
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
push.s "obj_adate_687"@9079
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]global.msg
push.s "obj_adate_688"@9081
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 19
pop.v.v [array]global.msg
push.s "obj_adate_689"@9083
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 20
pop.v.v [array]global.msg
push.s "obj_adate_690"@9085
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 21
pop.v.v [array]global.msg
push.s "obj_adate_691"@9087
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 22
pop.v.v [array]global.msg
push.s "obj_adate_692"@9089
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 23
pop.v.v [array]global.msg
push.s "obj_adate_693"@9090
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 24
pop.v.v [array]global.msg
push.s "obj_adate_694"@9092
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 25
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
push.v self.yy
push.v self.xx
pushi.e 260
sub.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 54
pop.v.i self.cn

:[206]
push.v self.cn
pushi.e 54
cmp.i.v EQ
bf [208]

:[207]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 1
cmp.i.v EQ
b [209]

:[208]
push.e 0

:[209]
bf [217]

:[210]
push.v 784.stringno
pushi.e 25
cmp.i.v EQ
bf [212]

:[211]
push.v 784.halt
pushi.e 0
cmp.i.v NEQ
b [213]

:[212]
push.e 0

:[213]
bf [217]

:[214]
pushi.e 0
pop.v.i self.choice
pushi.e 1
pop.v.i self.choicer
pushi.e 1
pop.v.i global.typer
push.s "obj_adate_708"@9094
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
pushenv [216]

:[215]
pushi.e 0
pop.v.i self.halt

:[216]
popenv [215]
pushi.e 55
pop.v.i self.cn

:[217]
push.v self.cn
pushi.e 55
cmp.i.v EQ
bf [219]

:[218]
push.v self.choicer
pushi.e 2
cmp.i.v EQ
b [220]

:[219]
push.e 0

:[220]
bf [226]

:[221]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [225]

:[222]
pushi.e 784
pushenv [224]

:[223]
call.i instance_destroy(argc=0)
popz.v

:[224]
popenv [223]

:[225]
pushi.e 56
pop.v.i self.cn
pushi.e 0
pop.v.i self.choicer
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[226]
push.v self.cn
pushi.e 57
cmp.i.v EQ
bf [231]

:[227]
pushi.e 74
pop.v.i global.typer
push.v self.choice
pushi.e 0
cmp.i.v EQ
bf [229]

:[228]
pushi.e 9
pop.v.i global.faceemotion
push.s "obj_adate_732"@9096
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_adate_733"@9098
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_adate_734"@9100
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_adate_735"@9102
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_adate_736"@9104
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_adate_737"@9106
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_adate_738"@9108
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_adate_739"@9110
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_adate_740"@9112
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_adate_741"@9113
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_adate_742"@9115
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_adate_743"@9117
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_adate_744"@9119
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_adate_745"@9121
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_adate_746"@9123
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_adate_747"@9125
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_adate_748"@9127
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_adate_749"@9129
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
b [230]

:[229]
pushi.e 7
pop.v.i global.faceemotion
pushi.e 4
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.s "obj_adate_755"@9131
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_adate_756"@9133
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_adate_757"@9135
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_adate_758"@9137
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_adate_759"@9139
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_adate_760"@9141
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_adate_761"@9142
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_adate_762"@9143
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_adate_763"@9145
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_adate_764"@9147
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_adate_765"@9149
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_adate_766"@9151
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_adate_767"@9153
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_adate_768"@9155
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_adate_769"@9156
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_adate_770"@9158
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_adate_771"@9160
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_adate_772"@9162
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
push.s "obj_adate_773"@9164
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]global.msg

:[230]
pushi.e 1
conv.i.v
push.v self.yy
push.v self.xx
pushi.e 260
sub.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 58
pop.v.i self.cn

:[231]
push.v self.cn
pushi.e 58
cmp.i.v EQ
bf [233]

:[232]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [234]

:[233]
push.e 0

:[234]
bf [236]

:[235]
pushi.e 59
pop.v.i self.cn
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[236]
push.v self.cn
pushi.e 60
cmp.i.v EQ
bf [240]

:[237]
pushi.e 0
pop.v.i self.choice
pushi.e 1
pop.v.i self.choicer
pushi.e 1
pop.v.i global.typer
push.s "obj_adate_794"@9166
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
pushenv [239]

:[238]
pushi.e 0
pop.v.i self.halt

:[239]
popenv [238]
pushi.e 61
pop.v.i self.cn

:[240]
push.v self.cn
pushi.e 61
cmp.i.v EQ
bf [242]

:[241]
push.v self.choicer
pushi.e 2
cmp.i.v EQ
b [243]

:[242]
push.e 0

:[243]
bf [249]

:[244]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [248]

:[245]
pushi.e 784
pushenv [247]

:[246]
call.i instance_destroy(argc=0)
popz.v

:[247]
popenv [246]

:[248]
pushi.e 62
pop.v.i self.cn
pushi.e 0
pop.v.i self.choicer
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[249]
push.v self.cn
pushi.e 63
cmp.i.v EQ
bf [253]

:[250]
pushi.e 0
pop.v.i global.msc
push.v self.al
conv.v.i
push.v [stacktop]self.x
pop.v.v self.xx
push.v self.al
conv.v.i
push.v [stacktop]self.y
pop.v.v self.yy
push.v self.skip
pushi.e 1
cmp.i.v EQ
bf [252]

:[251]
pushi.e -3
conv.i.v
call.i caster_stop(argc=1)
popz.v
push.d 0.75
conv.d.v
pushi.e 1
conv.i.v
push.v self.lab
call.i caster_loop(argc=3)
pop.v.v global.currentsong

:[252]
pushi.e 74
pop.v.i global.typer
pushi.e 4
pop.v.i global.faceemotion
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.s "obj_adate_827"@9168
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_adate_828"@9169
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_adate_829"@9171
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_adate_830"@9173
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
push.v self.yy
push.v self.xx
pushi.e 260
sub.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 64
pop.v.i self.cn

:[253]
push.v self.cn
pushi.e 64
cmp.i.v EQ
bf [255]

:[254]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 1
cmp.i.v EQ
b [256]

:[255]
push.e 0

:[256]
bf [264]

:[257]
push.v 784.stringno
pushi.e 3
cmp.i.v EQ
bf [259]

:[258]
push.v 784.halt
pushi.e 0
cmp.i.v NEQ
b [260]

:[259]
push.e 0

:[260]
bf [264]

:[261]
pushi.e 0
pop.v.i self.choice
pushi.e 1
pop.v.i self.choicer
pushi.e 1
pop.v.i global.typer
push.s "obj_adate_844"@9175
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
pushenv [263]

:[262]
pushi.e 0
pop.v.i self.halt

:[263]
popenv [262]
pushi.e 65
pop.v.i self.cn

:[264]
push.v self.cn
pushi.e 65
cmp.i.v EQ
bf [266]

:[265]
push.v self.choicer
pushi.e 2
cmp.i.v EQ
b [267]

:[266]
push.e 0

:[267]
bf [276]

:[268]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [272]

:[269]
pushi.e 784
pushenv [271]

:[270]
call.i instance_destroy(argc=0)
popz.v

:[271]
popenv [270]

:[272]
push.v self.choice
pushi.e 0
cmp.i.v EQ
bf [274]

:[273]
pushi.e 69
pop.v.i self.cn
b [275]

:[274]
pushi.e 89
pop.v.i self.cn

:[275]
pushi.e 0
pop.v.i self.choicer
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[276]
push.v self.cn
pushi.e 70
cmp.i.v EQ
bf [278]

:[277]
pushi.e 74
pop.v.i global.typer
pushi.e 6
pop.v.i global.faceemotion
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.s "obj_adate_868"@9177
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_adate_869"@9179
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_adate_870"@9181
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
push.v self.yy
push.v self.xx
pushi.e 260
sub.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 71
pop.v.i self.cn

:[278]
push.v self.cn
pushi.e 71
cmp.i.v EQ
bf [280]

:[279]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 1
cmp.i.v EQ
b [281]

:[280]
push.e 0

:[281]
bf [289]

:[282]
push.v 784.stringno
pushi.e 2
cmp.i.v EQ
bf [284]

:[283]
push.v 784.halt
pushi.e 0
cmp.i.v NEQ
b [285]

:[284]
push.e 0

:[285]
bf [289]

:[286]
pushi.e 0
pop.v.i self.choice
pushi.e 1
pop.v.i self.choicer
pushi.e 1
pop.v.i global.typer
push.s "obj_adate_884"@9183
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
pushenv [288]

:[287]
pushi.e 0
pop.v.i self.halt

:[288]
popenv [287]
pushi.e 72
pop.v.i self.cn

:[289]
push.v self.cn
pushi.e 72
cmp.i.v EQ
bf [291]

:[290]
push.v self.choicer
pushi.e 2
cmp.i.v EQ
b [292]

:[291]
push.e 0

:[292]
bf [298]

:[293]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [297]

:[294]
pushi.e 784
pushenv [296]

:[295]
call.i instance_destroy(argc=0)
popz.v

:[296]
popenv [295]

:[297]
pushi.e 73
pop.v.i self.cn
pushi.e 0
pop.v.i self.choicer
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[298]
push.v self.cn
pushi.e 74
cmp.i.v EQ
bf [303]

:[299]
pushi.e 74
pop.v.i global.typer
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.v self.choice
pushi.e 0
cmp.i.v EQ
bf [301]

:[300]
push.s "obj_adate_907"@9185
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_adate_908"@9186
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_adate_909"@9188
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
b [302]

:[301]
push.s "obj_adate_913"@9190
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_adate_914"@9192
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_adate_915"@9194
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_adate_916"@9196
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_adate_917"@9197
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_adate_918"@9198
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg

:[302]
pushi.e 1
conv.i.v
push.v self.yy
push.v self.xx
pushi.e 260
sub.i.v
call.i scr_blcon(argc=3)
popz.v
push.d 74.1
pop.v.d self.cn

:[303]
push.v self.cn
push.d 74.1
cmp.d.v EQ
bf [305]

:[304]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [306]

:[305]
push.e 0

:[306]
bf [308]

:[307]
push.d 74.2
pop.v.d self.cn
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[308]
push.v self.cn
push.d 75.2
cmp.d.v EQ
bf [310]

:[309]
pushi.e 75
pop.v.i self.cn

:[310]
push.v self.cn
pushi.e 75
cmp.i.v EQ
bf [312]

:[311]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [313]

:[312]
push.e 0

:[313]
bf [317]

:[314]
pushi.e 0
pop.v.i self.choice
pushi.e 1
pop.v.i self.choicer
pushi.e 1
pop.v.i global.typer
push.s "obj_adate_941"@9200
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
pushenv [316]

:[315]
pushi.e 0
pop.v.i self.halt

:[316]
popenv [315]
pushi.e 76
pop.v.i self.cn

:[317]
push.v self.cn
pushi.e 76
cmp.i.v EQ
bf [319]

:[318]
push.v self.choicer
pushi.e 2
cmp.i.v EQ
b [320]

:[319]
push.e 0

:[320]
bf [326]

:[321]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [325]

:[322]
pushi.e 784
pushenv [324]

:[323]
call.i instance_destroy(argc=0)
popz.v

:[324]
popenv [323]

:[325]
pushi.e 77
pop.v.i self.cn
pushi.e 0
pop.v.i self.choicer
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[326]
push.v self.cn
pushi.e 78
cmp.i.v EQ
bf [331]

:[327]
pushi.e 74
pop.v.i global.typer
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.v self.choice
pushi.e 0
cmp.i.v EQ
bf [329]

:[328]
push.s "obj_adate_963"@9202
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_adate_964"@9204
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_adate_965"@9206
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_adate_966"@9208
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_adate_967"@9210
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_adate_968"@9212
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_adate_969"@9214
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_adate_970"@9216
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_adate_971"@9218
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_adate_972"@9220
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
b [330]

:[329]
push.s "obj_adate_976"@9222
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_adate_977"@9224
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_adate_978"@9225
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_adate_979"@9227
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_adate_980"@9229
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_adate_981"@9231
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg

:[330]
pushi.e 1
conv.i.v
push.v self.yy
push.v self.xx
pushi.e 260
sub.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 79
pop.v.i self.cn

:[331]
push.v self.cn
pushi.e 79
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
bf [339]

:[335]
push.d 0.75
pop.v.d self.pitch
pushi.e 2
push.v self.al
conv.v.i
pop.v.i [stacktop]self.shake
pushi.e 75
pop.v.i global.typer
push.v self.choice
pushi.e 0
cmp.i.v EQ
bf [337]

:[336]
pushi.e 7
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 11
pop.v.i global.faceemotion
push.s "obj_adate_997"@9233
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_adate_998"@9235
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_adate_999"@9237
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_adate_1000"@9239
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
b [338]

:[337]
pushi.e 7
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 11
pop.v.i global.faceemotion
push.s "obj_adate_1006"@9241
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_adate_1007"@9243
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_adate_1008"@9245
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[338]
pushi.e 1
conv.i.v
push.v self.yy
push.v self.xx
pushi.e 260
sub.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 110
pop.v.i self.cn

:[339]
push.v self.cn
pushi.e 90
cmp.i.v EQ
bf [341]

:[340]
pushi.e 74
pop.v.i global.typer
pushi.e 9
pop.v.i global.faceemotion
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.s "obj_adate_1023"@9247
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_adate_1024"@9249
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_adate_1025"@9251
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_adate_1026"@9253
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_adate_1027"@9255
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_adate_1028"@9257
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_adate_1029"@9259
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
push.v self.yy
push.v self.xx
pushi.e 260
sub.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 91
pop.v.i self.cn

:[341]
push.v self.cn
pushi.e 91
cmp.i.v EQ
bf [343]

:[342]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 1
cmp.i.v EQ
b [344]

:[343]
push.e 0

:[344]
bf [352]

:[345]
push.v 784.stringno
pushi.e 6
cmp.i.v EQ
bf [347]

:[346]
push.v 784.halt
pushi.e 0
cmp.i.v NEQ
b [348]

:[347]
push.e 0

:[348]
bf [352]

:[349]
pushi.e 0
pop.v.i self.choice
pushi.e 1
pop.v.i self.choicer
pushi.e 1
pop.v.i global.typer
push.s "obj_adate_1043"@9261
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
pushenv [351]

:[350]
pushi.e 0
pop.v.i self.halt

:[351]
popenv [350]
pushi.e 92
pop.v.i self.cn

:[352]
push.v self.cn
pushi.e 92
cmp.i.v EQ
bf [354]

:[353]
push.v self.choicer
pushi.e 2
cmp.i.v EQ
b [355]

:[354]
push.e 0

:[355]
bf [361]

:[356]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [360]

:[357]
pushi.e 784
pushenv [359]

:[358]
call.i instance_destroy(argc=0)
popz.v

:[359]
popenv [358]

:[360]
pushi.e 93
pop.v.i self.cn
pushi.e 0
pop.v.i self.choicer
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[361]
push.v self.cn
pushi.e 94
cmp.i.v EQ
bf [366]

:[362]
pushi.e 74
pop.v.i global.typer
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.v self.choice
pushi.e 0
cmp.i.v EQ
bf [364]

:[363]
pushi.e 3
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 2
pop.v.i global.faceemotion
push.s "obj_adate_1069"@9263
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_adate_1070"@9265
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_adate_1071"@9267
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_adate_1072"@9269
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
b [365]

:[364]
pushi.e 1
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 9
pop.v.i global.faceemotion
push.s "obj_adate_1078"@9271
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_adate_1079"@9273
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_adate_1080"@9275
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_adate_1081"@9277
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_adate_1082"@9279
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_adate_1083"@9281
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_adate_1084"@9283
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_adate_1085"@9285
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg

:[365]
pushi.e 1
conv.i.v
push.v self.yy
push.v self.xx
pushi.e 260
sub.i.v
call.i scr_blcon(argc=3)
popz.v
push.d 94.1
pop.v.d self.cn

:[366]
push.v self.cn
push.d 94.1
cmp.d.v EQ
bf [368]

:[367]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [369]

:[368]
push.e 0

:[369]
bf [371]

:[370]
push.d 94.2
pop.v.d self.cn
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[371]
push.v self.cn
push.d 95.2
cmp.d.v EQ
bf [373]

:[372]
pushi.e 95
pop.v.i self.cn

:[373]
push.v self.cn
pushi.e 95
cmp.i.v EQ
bf [375]

:[374]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [376]

:[375]
push.e 0

:[376]
bf [380]

:[377]
pushi.e 0
pop.v.i self.choice
pushi.e 1
pop.v.i self.choicer
pushi.e 1
pop.v.i global.typer
push.s "obj_adate_1108"@9287
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
pushenv [379]

:[378]
pushi.e 0
pop.v.i self.halt

:[379]
popenv [378]
pushi.e 96
pop.v.i self.cn

:[380]
push.v self.cn
pushi.e 96
cmp.i.v EQ
bf [382]

:[381]
push.v self.choicer
pushi.e 2
cmp.i.v EQ
b [383]

:[382]
push.e 0

:[383]
bf [389]

:[384]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [388]

:[385]
pushi.e 784
pushenv [387]

:[386]
call.i instance_destroy(argc=0)
popz.v

:[387]
popenv [386]

:[388]
pushi.e 97
pop.v.i self.cn
pushi.e 0
pop.v.i self.choicer
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[389]
push.v self.cn
pushi.e 98
cmp.i.v EQ
bf [394]

:[390]
pushi.e 74
pop.v.i global.typer
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.v self.choice
pushi.e 0
cmp.i.v EQ
bf [392]

:[391]
pushi.e 4
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 9
pop.v.i global.faceemotion
push.s "obj_adate_1132"@9289
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_adate_1133"@9291
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_adate_1134"@9293
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_adate_1135"@9295
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_adate_1136"@9297
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_adate_1137"@9299
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
b [393]

:[392]
pushi.e 1
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 9
pop.v.i global.faceemotion
push.s "obj_adate_1143"@9301
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_adate_1144"@9303
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_adate_1145"@9305
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_adate_1146"@9307
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_adate_1147"@9308
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_adate_1148"@9310
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_adate_1149"@9312
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_adate_1150"@9314
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_adate_1151"@9316
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg

:[393]
pushi.e 1
conv.i.v
push.v self.yy
push.v self.xx
pushi.e 260
sub.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 99
pop.v.i self.cn

:[394]
push.v self.cn
pushi.e 99
cmp.i.v EQ
bf [396]

:[395]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [397]

:[396]
push.e 0

:[397]
bf [402]

:[398]
push.d 0.75
pop.v.d self.pitch
pushi.e 2
push.v self.al
conv.v.i
pop.v.i [stacktop]self.shake
pushi.e 75
pop.v.i global.typer
push.v self.choice
pushi.e 0
cmp.i.v EQ
bf [400]

:[399]
pushi.e 7
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 11
pop.v.i global.faceemotion
push.s "obj_adate_1167"@9318
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_adate_1168"@9320
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_adate_1169"@9322
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
b [401]

:[400]
pushi.e 7
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 11
pop.v.i global.faceemotion
push.s "obj_adate_1176"@9324
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_adate_1177"@9326
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[401]
pushi.e 1
conv.i.v
push.v self.yy
push.v self.xx
pushi.e 260
sub.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 110
pop.v.i self.cn

:[402]
push.v self.cn
pushi.e 110
cmp.i.v EQ
bf [404]

:[403]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [405]

:[404]
push.e 0

:[405]
bf [409]

:[406]
push.v self.pitch
pushi.e 2
cmp.i.v LT
bf [408]

:[407]
push.v self.pitch
push.d 0.01
add.d.v
pop.v.v self.pitch

:[408]
push.v self.pitch
pushglb.v global.currentsong
call.i caster_set_pitch(argc=2)
popz.v

:[409]
push.v self.cn
pushi.e 110
cmp.i.v EQ
bf [411]

:[410]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [412]

:[411]
push.e 0

:[412]
bf [416]

:[413]
pushi.e 5
pop.v.i global.facechoice
pushi.e 178
pushenv [415]

:[414]
call.i instance_destroy(argc=0)
popz.v

:[415]
popenv [414]
pushi.e 178
conv.i.v
push.v self.trashcan
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
pushi.e -100
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.und
push.v self.und
conv.v.i
dup.i 0
push.v [stacktop]self.y
push.v self.und
conv.v.i
push.v [stacktop]self.sprite_height
pushi.e 2
mul.i.v
pushi.e 66
add.i.v
sub.v.v
pop.i.v [stacktop]self.y
pushi.e 20
push.v self.und
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 111
pop.v.i self.cn

:[416]
push.v self.cn
pushi.e 111
cmp.i.v EQ
bf [419]

:[417]
push.v self.und
conv.v.i
push.v [stacktop]self.x
pushi.e 60
cmp.i.v GT
bf [419]

:[418]
pushi.e 1
pop.v.i 177.set
pushi.e 0
pop.v.i 177.shake
pushi.e 8
pop.v.i global.faceemotion
pushi.e 60
push.v self.und
conv.v.i
pop.v.i [stacktop]self.x
pushi.e 0
push.v self.und
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 112
pop.v.i self.cn
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[419]
push.v self.cn
pushi.e 111
cmp.i.v EQ
bt [421]

:[420]
push.v self.cn
pushi.e 112
cmp.i.v EQ
b [422]

:[421]
push.e 1

:[422]
bf [428]

:[423]
pushglb.v global.currentsong
call.i caster_is_playing(argc=1)
conv.v.b
bf [428]

:[424]
push.v self.pitch
pushi.e 0
cmp.i.v GT
bf [426]

:[425]
push.v self.pitch
push.d 0.04
sub.d.v
pop.v.v self.pitch
b [427]

:[426]
pushglb.v global.currentsong
call.i caster_stop(argc=1)
popz.v

:[427]
push.v self.pitch
pushglb.v global.currentsong
call.i caster_set_pitch(argc=2)
popz.v
push.v self.pitch
pushi.e 2
conv.i.d
div.d.v
pushglb.v global.currentsong
call.i caster_set_volume(argc=2)
popz.v

:[428]
push.v self.cn
pushi.e 113
cmp.i.v EQ
bf [430]

:[429]
pushglb.v global.currentsong
call.i caster_stop(argc=1)
popz.v
pushi.e 39
pop.v.i global.typer
push.v self.und
conv.v.i
push.v [stacktop]self.x
pop.v.v self.xxx
push.v self.und
conv.v.i
push.v [stacktop]self.y
pop.v.v self.yyy
push.s "obj_adate_1236"@9328
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
push.v self.yyy
pushi.e 20
add.i.v
push.v self.xxx
pushi.e 90
add.i.v
call.i scr_blcon(argc=3)
popz.v
push.d 113.1
pop.v.d self.cn

:[430]
push.v self.cn
push.d 113.1
cmp.d.v EQ
bf [432]

:[431]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [433]

:[432]
push.e 0

:[433]
bf [435]

:[434]
push.d 113.2
pop.v.d self.cn
pushi.e 5
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 10
push.v self.al
conv.v.i
pop.v.i [stacktop]self.hspeed

:[435]
push.v self.cn
push.d 114.2
cmp.d.v EQ
bf [437]

:[436]
pushi.e 114
pop.v.i self.cn

:[437]
push.v self.cn
pushi.e 114
cmp.i.v EQ
bf [439]

:[438]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [440]

:[439]
push.e 0

:[440]
bf [442]

:[441]
push.v self.al
conv.v.i
push.v [stacktop]self.x
pop.v.v self.xx
push.v self.al
conv.v.i
push.v [stacktop]self.y
pop.v.v self.yy
pushi.e 0
push.v self.al
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 74
pop.v.i global.typer
pushi.e 1
pop.v.i global.faceemotion
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.s "obj_adate_1259"@9330
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
push.v self.yy
push.v self.xx
pushi.e 250
sub.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 115
pop.v.i self.cn

:[442]
push.v self.cn
pushi.e 115
cmp.i.v EQ
bf [444]

:[443]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [445]

:[444]
push.e 0

:[445]
bf [447]

:[446]
pushi.e 39
pop.v.i global.typer
push.v self.und
conv.v.i
push.v [stacktop]self.x
pop.v.v self.xxx
push.v self.und
conv.v.i
push.v [stacktop]self.y
pop.v.v self.yyy
push.s "obj_adate_1271"@9332
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_adate_1272"@9334
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_adate_1273"@9336
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_adate_1274"@9338
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_adate_1275"@9340
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_adate_1276"@9342
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
push.v self.yyy
pushi.e 20
add.i.v
push.v self.xxx
pushi.e 90
add.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 116
pop.v.i self.cn

:[447]
push.v self.cn
pushi.e 116
cmp.i.v EQ
bf [449]

:[448]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [450]

:[449]
push.e 0

:[450]
bf [452]

:[451]
pushi.e 74
pop.v.i global.typer
pushi.e 1
pop.v.i global.faceemotion
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.s "obj_adate_1287"@9344
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_adate_1288"@9346
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_adate_1289"@9348
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_adate_1290"@9350
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
push.v self.yy
push.v self.xx
pushi.e 250
sub.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 117
pop.v.i self.cn

:[452]
push.v self.cn
pushi.e 117
cmp.i.v EQ
bf [454]

:[453]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [455]

:[454]
push.e 0

:[455]
bf [457]

:[456]
pushi.e 39
pop.v.i global.typer
push.v self.und
conv.v.i
push.v [stacktop]self.x
pop.v.v self.xxx
push.v self.und
conv.v.i
push.v [stacktop]self.y
pop.v.v self.yyy
push.s "obj_adate_1300"@9352
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
push.v self.yyy
pushi.e 20
add.i.v
push.v self.xxx
pushi.e 90
add.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 118
pop.v.i self.cn

:[457]
push.v self.cn
pushi.e 118
cmp.i.v EQ
bf [459]

:[458]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [460]

:[459]
push.e 0

:[460]
bf [462]

:[461]
pushi.e 74
pop.v.i global.typer
pushi.e 8
pop.v.i global.faceemotion
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.s "obj_adate_1311"@9354
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_adate_1312"@9356
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_adate_1313"@9358
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
push.v self.yy
push.v self.xx
pushi.e 250
sub.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 119
pop.v.i self.cn

:[462]
push.v self.cn
pushi.e 119
cmp.i.v EQ
bf [464]

:[463]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [465]

:[464]
push.e 0

:[465]
bf [467]

:[466]
push.s "music/confession.ogg"@2701
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.confession
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.confession
call.i caster_loop(argc=3)
pop.v.v global.currentsong
pushi.e 74
pop.v.i global.typer
pushi.e 7
pop.v.i global.faceemotion
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.s "obj_adate_1326"@9360
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
push.v self.yy
push.v self.xx
pushi.e 250
sub.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 120
pop.v.i self.cn

:[467]
push.v self.cn
pushi.e 120
cmp.i.v EQ
bf [469]

:[468]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [470]

:[469]
push.e 0

:[470]
bf [472]

:[471]
pushi.e 39
pop.v.i global.typer
push.v self.und
conv.v.i
push.v [stacktop]self.x
pop.v.v self.xxx
push.v self.und
conv.v.i
push.v [stacktop]self.y
pop.v.v self.yyy
push.s "obj_adate_1336"@9362
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
push.v self.yyy
pushi.e 20
add.i.v
push.v self.xxx
pushi.e 90
add.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 121
pop.v.i self.cn

:[472]
push.v self.cn
pushi.e 121
cmp.i.v EQ
bf [474]

:[473]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [475]

:[474]
push.e 0

:[475]
bf [477]

:[476]
pushi.e 90
push.v self.trashcan
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e -1
push.v self.al
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 0
push.v self.und
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 74
pop.v.i global.typer
pushi.e 3
pop.v.i global.faceemotion
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.s "obj_adate_1349"@9364
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_adate_1350"@9366
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
push.v self.yy
push.v self.xx
pushi.e 250
sub.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 122
pop.v.i self.cn

:[477]
push.v self.cn
pushi.e 122
cmp.i.v EQ
bf [479]

:[478]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [480]

:[479]
push.e 0

:[480]
bf [482]

:[481]
pushi.e -10
push.v self.al
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 121.1
pop.v.d self.cn
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[482]
push.v self.cn
push.d 122.1
cmp.d.v EQ
bf [484]

:[483]
push.v self.al
conv.v.i
push.v [stacktop]self.x
pop.v.v self.xx
pushi.e 0
push.v self.al
conv.v.i
pop.v.i [stacktop]self.hspeed
push.s "obj_adate_1366"@9368
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_adate_1367"@9370
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
push.v self.yy
push.v self.xx
pushi.e 110
add.i.v
call.i scr_blcon_ofs(argc=5)
popz.v
push.d 122.3
pop.v.d self.cn

:[484]
push.v self.cn
push.d 122.3
cmp.d.v EQ
bf [486]

:[485]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [487]

:[486]
push.e 0

:[487]
bf [489]

:[488]
pushi.e -10
push.v self.al
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 121.4
pop.v.d self.cn
pushi.e 5
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[489]
push.v self.cn
push.d 122.4
cmp.d.v EQ
bf [491]

:[490]
push.v self.al
conv.v.i
push.v [stacktop]self.x
pop.v.v self.xx
pushi.e 0
push.v self.al
conv.v.i
pop.v.i [stacktop]self.hspeed
push.s "obj_adate_1383"@9372
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_adate_1384"@9374
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
push.v self.yy
push.v self.xx
pushi.e 110
add.i.v
call.i scr_blcon_ofs(argc=5)
popz.v
push.d 122.5
pop.v.d self.cn

:[491]
push.v self.cn
push.d 122.5
cmp.d.v EQ
bf [493]

:[492]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [494]

:[493]
push.e 0

:[494]
bf [496]

:[495]
pushi.e -10
push.v self.al
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 121.6
pop.v.d self.cn
pushi.e 5
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[496]
push.v self.cn
push.d 122.6
cmp.d.v EQ
bf [498]

:[497]
push.v self.al
conv.v.i
push.v [stacktop]self.x
pop.v.v self.xx
pushi.e 0
push.v self.al
conv.v.i
pop.v.i [stacktop]self.hspeed
push.s "obj_adate_1400"@9376
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_adate_1401"@9378
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
push.v self.yy
push.v self.xx
pushi.e 110
add.i.v
call.i scr_blcon_ofs(argc=5)
popz.v
push.d 122.8
pop.v.d self.cn

:[498]
push.v self.cn
push.d 122.8
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
bf [503]

:[502]
pushi.e -9
push.v self.al
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 121.9
pop.v.d self.cn
pushi.e 5
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[503]
push.v self.cn
push.d 122.9
cmp.d.v EQ
bf [505]

:[504]
push.v self.al
conv.v.i
push.v [stacktop]self.x
pop.v.v self.xx
pushi.e 0
push.v self.al
conv.v.i
pop.v.i [stacktop]self.hspeed
push.s "obj_adate_1417"@9380
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_adate_1418"@9382
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_adate_1419"@9384
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
push.v self.yy
push.v self.xx
pushi.e 110
add.i.v
call.i scr_blcon_ofs(argc=5)
popz.v
pushi.e 125
pop.v.i self.cn

:[505]
push.v self.cn
pushi.e 125
cmp.i.v EQ
bf [507]

:[506]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [508]

:[507]
push.e 0

:[508]
bf [510]

:[509]
pushi.e 39
pop.v.i global.typer
push.v self.und
conv.v.i
push.v [stacktop]self.x
pop.v.v self.xxx
push.v self.und
conv.v.i
push.v [stacktop]self.y
pop.v.v self.yyy
push.s "obj_adate_1433"@9386
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
push.v self.yyy
pushi.e 10
sub.i.v
push.v self.xxx
pushi.e 90
add.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 127
pop.v.i self.cn

:[510]
push.v self.cn
pushi.e 127
cmp.i.v EQ
bf [512]

:[511]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [513]

:[512]
push.e 0

:[513]
bf [515]

:[514]
pushi.e 74
pop.v.i global.typer
pushi.e 5
pop.v.i global.faceemotion
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.s "obj_adate_1444"@9388
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_adate_1445"@9390
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_adate_1446"@9392
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
push.v self.yy
push.v self.xx
pushi.e 110
add.i.v
call.i scr_blcon_ofs(argc=5)
popz.v
pushi.e 130
pop.v.i self.cn

:[515]
push.v self.cn
pushi.e 130
cmp.i.v EQ
bf [517]

:[516]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [518]

:[517]
push.e 0

:[518]
bf [520]

:[519]
pushi.e 39
pop.v.i global.typer
push.v self.und
conv.v.i
push.v [stacktop]self.x
pop.v.v self.xxx
push.v self.und
conv.v.i
push.v [stacktop]self.y
pop.v.v self.yyy
pushi.e 0
push.v self.und
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 0
push.v self.al
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 173
conv.i.v
push.v self.und
conv.v.i
push.v [stacktop]self.y
pushi.e 56
sub.i.v
push.v self.und
conv.v.i
push.v [stacktop]self.x
pushi.e 34
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.thrower
push.s "obj_adate_1459"@9393
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
push.v self.yyy
pushi.e 10
sub.i.v
push.v self.xxx
pushi.e 90
add.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 131
pop.v.i self.cn

:[520]
push.v self.cn
pushi.e 131
cmp.i.v EQ
bf [522]

:[521]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [523]

:[522]
push.e 0

:[523]
bf [525]

:[524]
pushi.e 74
pop.v.i global.typer
pushi.e 5
pop.v.i global.faceemotion
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.s "obj_adate_1470"@9395
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
push.v self.yy
push.v self.xx
pushi.e 110
add.i.v
call.i scr_blcon_ofs(argc=5)
popz.v
pushi.e 132
pop.v.i self.cn

:[525]
push.v self.cn
pushi.e 132
cmp.i.v EQ
bf [527]

:[526]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [528]

:[527]
push.e 0

:[528]
bf [530]

:[529]
pushi.e 1
push.v self.thrower
conv.v.i
pop.v.i [stacktop]self.con
pushi.e 39
pop.v.i global.typer
push.v self.und
conv.v.i
push.v [stacktop]self.x
pop.v.v self.xxx
push.v self.und
conv.v.i
push.v [stacktop]self.y
pop.v.v self.yyy
push.s "obj_adate_1481"@9397
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_adate_1482"@9399
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_adate_1483"@9401
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
push.v self.yyy
pushi.e 40
add.i.v
push.v self.xxx
pushi.e 140
add.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 133
pop.v.i self.cn

:[530]
push.v self.cn
pushi.e 133
cmp.i.v EQ
bf [532]

:[531]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [533]

:[532]
push.e 0

:[533]
bf [535]

:[534]
pushi.e 134
pop.v.i self.cn
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[535]
push.v self.cn
pushi.e 135
cmp.i.v EQ
bf [537]

:[536]
pushglb.v global.currentsong
call.i caster_stop(argc=1)
popz.v
pushi.e 3
push.v self.thrower
conv.v.i
pop.v.i [stacktop]self.con
pushi.e 136
pop.v.i self.cn
pushi.e 100
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[537]
push.v self.cn
pushi.e 137
cmp.i.v EQ
bf [543]

:[538]
push.v self.thrower
conv.v.i
pushenv [540]

:[539]
call.i instance_destroy(argc=0)
popz.v

:[540]
popenv [539]
pushi.e 0
pop.v.i global.facechoice
pushi.e 1
push.v self.und
conv.v.i
pop.v.i [stacktop]self.set
pushi.e 1
push.v self.und
conv.v.i
pop.v.i [stacktop]self.visible
push.v self.trashcan
conv.v.i
pushenv [542]

:[541]
pushi.e 1
pop.v.i self.fadein
pushi.e 1
pop.v.i self.con

:[542]
popenv [541]
pushi.e 138
pop.v.i self.cn
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[543]
push.v self.cn
pushi.e 139
cmp.i.v EQ
bf [545]

:[544]
push.s "music/undynetruetheme.ogg"@2853
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.utheme
pushi.e 1
conv.i.v
push.d 0.9
conv.d.v
push.v self.utheme
call.i caster_loop(argc=3)
pop.v.v global.currentsong
push.s "obj_adate_1522"@9403
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_adate_1523"@9405
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_adate_1524"@9407
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_adate_1525"@9409
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_adate_1526"@9411
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_adate_1527"@9413
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_adate_1528"@9415
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_adate_1529"@9417
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_adate_1530"@9419
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_adate_1531"@9421
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_adate_1532"@9423
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_adate_1533"@9425
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_adate_1534"@9427
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
pushi.e 39
pop.v.i global.typer
push.v self.und
conv.v.i
push.v [stacktop]self.x
pop.v.v self.xxx
push.v self.und
conv.v.i
push.v [stacktop]self.y
pop.v.v self.yyy
pushi.e 0
conv.i.v
push.v self.yyy
pushi.e 10
sub.i.v
push.v self.xxx
pushi.e 90
add.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 140
pop.v.i self.cn

:[545]
push.v self.cn
pushi.e 140
cmp.i.v EQ
bf [547]

:[546]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [548]

:[547]
push.e 0

:[548]
bf [550]

:[549]
pushi.e 3
push.v self.trashcan
conv.v.i
pop.v.i [stacktop]self.shake
pushi.e 141
pop.v.i self.cn
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[550]
push.v self.cn
pushi.e 142
cmp.i.v EQ
bf [552]

:[551]
pushi.e 0
push.v self.trashcan
conv.v.i
pop.v.i [stacktop]self.shake
pushi.e 0
pop.v.i global.faceemotion
pushi.e 1
push.v self.trashcan
conv.v.i
pop.v.i [stacktop]self.aturn
pushi.e 143
pop.v.i self.cn
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[552]
push.v self.cn
pushi.e 144
cmp.i.v EQ
bf [554]

:[553]
push.v self.trashcan
conv.v.i
push.v [stacktop]self.x
pop.v.v self.xx
push.v self.trashcan
conv.v.i
push.v [stacktop]self.y
push.v self.trashcan
conv.v.i
push.v [stacktop]self.sprite_height
pushi.e 2
mul.i.v
sub.v.v
pushi.e 20
add.i.v
pop.v.v self.yy
pushi.e 74
pop.v.i global.typer
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_adate_1566"@9429
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_adate_1567"@9431
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
push.v self.yy
push.v self.xx
pushi.e 320
sub.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 145
pop.v.i self.cn

:[554]
push.v self.cn
pushi.e 145
cmp.i.v EQ
bf [556]

:[555]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [557]

:[556]
push.e 0

:[557]
bf [559]

:[558]
push.s "obj_adate_1574"@9433
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 39
pop.v.i global.typer
push.v self.und
conv.v.i
push.v [stacktop]self.x
pop.v.v self.xxx
push.v self.und
conv.v.i
push.v [stacktop]self.y
pop.v.v self.yyy
pushi.e 0
conv.i.v
push.v self.yyy
pushi.e 10
sub.i.v
push.v self.xxx
pushi.e 90
add.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 146
pop.v.i self.cn

:[559]
push.v self.cn
pushi.e 146
cmp.i.v EQ
bf [561]

:[560]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [562]

:[561]
push.e 0

:[562]
bf [564]

:[563]
pushi.e 0
pop.v.i global.faceemotion
pushglb.v global.currentsong
call.i caster_stop(argc=1)
popz.v
pushi.e 174
conv.i.v
pushi.e 400
conv.i.v
pushi.e 400
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.pap
pushi.e 147
pop.v.i self.cn
pushi.e 110
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[564]
push.v self.cn
pushi.e 148
cmp.i.v EQ
bf [566]

:[565]
pushi.e 3
pop.v.i global.faceemotion
push.s "obj_adate_1594"@9435
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 39
pop.v.i global.typer
pushi.e 0
conv.i.v
push.v self.yyy
pushi.e 120
add.i.v
push.v self.xxx
pushi.e 90
add.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 149
pop.v.i self.cn

:[566]
push.v self.cn
pushi.e 149
cmp.i.v EQ
bf [568]

:[567]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [569]

:[568]
push.e 0

:[569]
bf [571]

:[570]
pushi.e 2
push.v self.pap
conv.v.i
pop.v.i [stacktop]self.con
pushi.e 150
pop.v.i self.cn
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[571]
push.v self.cn
pushi.e 151
cmp.i.v EQ
bf [575]

:[572]
pushi.e 2
pop.v.i global.faceemotion
pushi.e 22
pop.v.i global.typer
push.s "obj_adate_1612"@9437
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_adate_1613"@9439
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
push.v self.pap
conv.v.i
push.v [stacktop]self.y
pushi.e 80
sub.i.v
push.v self.pap
conv.v.i
push.v [stacktop]self.x
pushi.e 150
sub.i.v
call.i scr_blcon(argc=3)
popz.v
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [574]

:[573]
push.v 784.writingxend
pushi.e 8
sub.i.v
pop.v.v 784.writingxend

:[574]
pushi.e 153
pop.v.i self.cn

:[575]
push.v self.cn
pushi.e 153
cmp.i.v EQ
bf [577]

:[576]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [578]

:[577]
push.e 0

:[578]
bf [580]

:[579]
pushi.e 2
pop.v.i global.faceemotion
push.s "obj_adate_1622"@9441
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 39
pop.v.i global.typer
pushi.e 0
conv.i.v
push.v self.yyy
pushi.e 20
add.i.v
push.v self.xxx
pushi.e 90
add.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 155
pop.v.i self.cn

:[580]
push.v self.cn
pushi.e 155
cmp.i.v EQ
bf [582]

:[581]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [583]

:[582]
push.e 0

:[583]
bf [585]

:[584]
push.v self.trashcan
conv.v.i
push.v [stacktop]self.x
pop.v.v self.xx
push.v self.trashcan
conv.v.i
push.v [stacktop]self.y
push.v self.trashcan
conv.v.i
push.v [stacktop]self.sprite_height
pushi.e 2
mul.i.v
sub.v.v
pushi.e 20
add.i.v
pop.v.v self.yy
pushi.e 74
pop.v.i global.typer
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_adate_1636"@9443
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_adate_1637"@9445
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
push.v self.yy
pushi.e 140
sub.i.v
push.v self.xx
pushi.e 80
sub.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 156
pop.v.i self.cn

:[585]
push.v self.cn
pushi.e 156
cmp.i.v EQ
bf [587]

:[586]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [588]

:[587]
push.e 0

:[588]
bf [592]

:[589]
pushi.e 92
pushenv [591]

:[590]
call.i instance_destroy(argc=0)
popz.v

:[591]
popenv [590]
pushi.e 10
push.v self.pap
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 10
push.v self.trashcan
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 157
pop.v.i self.cn
pushi.e 80
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[592]
push.v self.cn
pushi.e 158
cmp.i.v EQ
bf [594]

:[593]
pushi.e 0
push.v self.und
conv.v.i
pop.v.i [stacktop]self.set
pushi.e 1
pop.v.i global.facechoice
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
push.s "music/undynetruetheme.ogg"@2853
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
pushi.e 2
conv.i.v
push.d 0.65
conv.d.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
push.s "obj_adate_1659"@9447
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_adate_1660"@9449
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_adate_1661"@9451
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_adate_1662"@9453
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_adate_1663"@9455
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 39
pop.v.i global.typer
pushi.e 0
conv.i.v
push.v self.yyy
pushi.e 20
sub.i.v
push.v self.xxx
pushi.e 90
add.i.v
call.i scr_blcon(argc=3)
popz.v
push.d 158.1
pop.v.d self.cn

:[594]
push.v self.cn
push.d 158.1
cmp.d.v EQ
bf [596]

:[595]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [597]

:[596]
push.e 0

:[597]
bf [599]

:[598]
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.d 158.2
pop.v.d self.cn

:[599]
push.v self.cn
push.d 159.2
cmp.d.v EQ
bf [601]

:[600]
pushi.e 159
pop.v.i self.cn

:[601]
push.v self.cn
pushi.e 159
cmp.i.v EQ
bf [603]

:[602]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [604]

:[603]
push.e 0

:[604]
bf [608]

:[605]
pushi.e 0
pop.v.i self.choice
pushi.e 1
pop.v.i self.choicer
pushi.e 1
pop.v.i global.typer
push.s "obj_adate_1688"@9457
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
pushenv [607]

:[606]
pushi.e 0
pop.v.i self.halt

:[607]
popenv [606]
pushi.e 160
pop.v.i self.cn

:[608]
push.v self.cn
pushi.e 160
cmp.i.v EQ
bf [610]

:[609]
push.v self.choicer
pushi.e 2
cmp.i.v EQ
b [611]

:[610]
push.e 0

:[611]
bf [617]

:[612]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [616]

:[613]
pushi.e 784
pushenv [615]

:[614]
call.i instance_destroy(argc=0)
popz.v

:[615]
popenv [614]

:[616]
pushi.e 161
pop.v.i self.cn
pushi.e 0
pop.v.i self.choicer
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[617]
push.v self.cn
pushi.e 162
cmp.i.v EQ
bf [622]

:[618]
push.v self.choice
pushi.e 0
cmp.i.v EQ
bf [620]

:[619]
push.s "obj_adate_1708"@9459
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_adate_1709"@9461
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_adate_1710"@9463
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
b [621]

:[620]
push.s "obj_adate_1714"@9465
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_adate_1715"@9467
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[621]
pushi.e 39
pop.v.i global.typer
pushi.e 0
conv.i.v
push.v self.yyy
pushi.e 20
sub.i.v
push.v self.xxx
pushi.e 90
add.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 163
pop.v.i self.cn

:[622]
push.v self.cn
pushi.e 163
cmp.i.v EQ
bf [624]

:[623]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [625]

:[624]
push.e 0

:[625]
bf [627]

:[626]
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mfo
pushi.e 164
pop.v.i self.cn
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[627]
push.v self.cn
pushi.e 165
cmp.i.v EQ
bf [629]

:[628]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [630]

:[629]
push.e 0

:[630]
bf [635]

:[631]
push.v self.choice
pushi.e 0
cmp.i.v EQ
bf [633]

:[632]
push.s "obj_adate_1736"@9469
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_adate_1737"@9471
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_adate_1738"@9473
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_adate_1739"@9475
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_adate_1740"@9477
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_adate_1741"@9479
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
b [634]

:[633]
push.s "obj_adate_1745"@9481
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_adate_1746"@9483
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_adate_1747"@9485
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_adate_1748"@9487
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_adate_1749"@9489
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_adate_1750"@9491
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_adate_1751"@9493
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg

:[634]
pushi.e 39
pop.v.i global.typer
pushi.e 0
conv.i.v
push.v self.yyy
pushi.e 20
sub.i.v
push.v self.xxx
pushi.e 90
add.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 166
pop.v.i self.cn

:[635]
push.v self.cn
pushi.e 166
cmp.i.v EQ
bf [637]

:[636]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [638]

:[637]
push.e 0

:[638]
bf [640]

:[639]
pushi.e 20
push.v self.und
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 167
pop.v.i self.cn
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[640]
push.v self.cn
pushi.e 168
cmp.i.v EQ
bf [642]

:[641]
pushi.e 150
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 169
pop.v.i self.cn
pushi.e 12
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[642]
push.v self.cn
pushi.e 170
cmp.i.v EQ
bf [644]

:[643]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "AD"@47571
conv.s.v
push.s "Alphys"@47572
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.adhd
push.v self.adhd
pushi.e 1
add.i.v
push.s "AD"@47571
conv.s.v
push.s "Alphys"@47572
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v
pushi.e 149
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 0
pushi.e -5
pushi.e 492
pop.v.i [array]global.flag
pushi.e 10
pushi.e -5
pushi.e 493
pop.v.i [array]global.flag
pushi.e 113
conv.i.v
call.i room_goto(argc=1)
popz.v

:[644]
pushi.e 189
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[645]
call.i scr_textskip(argc=0)
popz.v

:[end]