.localvar 0 arguments
.localvar 1 xx 2883
.localvar 2 yy 2884
.localvar 3 scale 2885
.localvar 4 angle 2886

:[0]
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
push.v self.y
push.v self.shake
sub.v.v
push.v self.shake
pushi.e 2
mul.i.v
call.i random(argc=1)
add.v.v
push.v self.x
push.v self.shake
sub.v.v
push.v self.shake
pushi.e 2
mul.i.v
call.i random(argc=1)
add.v.v
push.v self.image_index
call.i round(argc=1)
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.phase
pushi.e -1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 364
pop.v.i self.sprite_index

:[2]
push.v self.phase
pushi.e 0
cmp.i.v GT
bf [4]

:[3]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 365
pop.v.i self.sprite_index

:[7]
push.v self.phase
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
push.v self.quiztimer
pushi.e 280
cmp.i.v LT
b [10]

:[9]
push.e 0

:[10]
bf [21]

:[11]
push.v self.correct
pushi.e 0
cmp.i.v EQ
bf [13]

:[12]
pushi.e 352
pop.v.i self.sprite_index

:[13]
push.v self.correct
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
pushi.e 353
pop.v.i self.sprite_index

:[15]
push.v self.correct
pushi.e 2
cmp.i.v EQ
bf [17]

:[16]
pushi.e 354
pop.v.i self.sprite_index

:[17]
push.v self.correct
pushi.e 3
cmp.i.v EQ
bf [19]

:[18]
pushi.e 358
pop.v.i self.sprite_index

:[19]
push.v self.q
pushi.e 7
cmp.i.v EQ
bf [21]

:[20]
pushi.e 366
pop.v.i self.sprite_index

:[21]
push.v self.phase
pushi.e 2
cmp.i.v EQ
bf [23]

:[22]
push.v self.quiztimer
pushi.e 320
cmp.i.v GT
b [24]

:[23]
push.e 0

:[24]
bf [26]

:[25]
pushi.e 366
pop.v.i self.sprite_index

:[26]
push.v self.phase
pushi.e 2
cmp.i.v GT
bf [28]

:[27]
push.v self.q
pushi.e 10
cmp.i.v LT
b [29]

:[28]
push.e 0

:[29]
bf [33]

:[30]
pushi.e 361
pop.v.i self.sprite_index
pushi.e 341
pop.v.i 302.arms
push.v self.correct
push.v self.answer
cmp.v.v EQ
bf [33]

:[31]
pushi.e 340
pop.v.i 302.arms
pushi.e 355
pop.v.i self.sprite_index
push.v self.q
pushi.e 7
cmp.i.v EQ
bf [33]

:[32]
pushi.e 366
pop.v.i self.sprite_index

:[33]
push.v self.q
pushi.e 8
cmp.i.v EQ
bf [35]

:[34]
push.v self.quiztimer
pushi.e 300
cmp.i.v LT
b [36]

:[35]
push.e 0

:[36]
bf [44]

:[37]
push.v self.quiztimer
pushi.e 2
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [39]

:[38]
push.v self.mettamt
pushi.e 1
add.i.v
pop.v.v self.mettamt

:[39]
pushi.e 301
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [41]

:[40]
push.v self.phase
pushi.e 2
cmp.i.v EQ
b [42]

:[41]
push.e 0

:[42]
bf [44]

:[43]
pushi.e 301
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[44]
push.v self.q
pushi.e 9
cmp.i.v EQ
bf [47]

:[45]
pushi.e -1
pushi.e 4
push.v [array]self.alarm
pushi.e 140
cmp.i.v LT
bf [47]

:[46]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [48]

:[47]
push.e 0

:[48]
bf [50]

:[49]
pushi.e 356
pop.v.i self.sprite_index
pushi.e -2
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i global.msc
push.d 0.3
pop.v.d self.image_speed
pushi.e 52
pop.v.i global.typer
push.s "obj_questionasker_538"@21923
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_questionasker_539"@21925
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_questionasker_540"@21927
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_questionasker_541"@21929
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_questionasker_542"@21931
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_questionasker_543"@21933
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
push.v self.y
pushi.e 120
sub.i.v
push.v self.x
pushi.e 10
sub.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 1
pop.v.i self.con

:[50]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [59]

:[51]
pushi.e 0
pop.v.i self.go
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [53]

:[52]
pushi.e 1
pop.v.i self.go

:[53]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 1
cmp.i.v EQ
bf [56]

:[54]
push.v 784.stringno
pushi.e 5
cmp.i.v EQ
bf [56]

:[55]
pushi.e 1
pop.v.i self.go

:[56]
push.v self.go
pushi.e 1
cmp.i.v EQ
bf [59]

:[57]
push.v self.image_speed
push.d 0.004
sub.d.v
pop.v.v self.image_speed
push.v self.image_speed
pushi.e 0
cmp.i.v LTE
bf [59]

:[58]
pushi.e 2
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm
pushi.e 357
pop.v.i self.sprite_index

:[59]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [61]

:[60]
pushi.e 51
pop.v.i global.typer
pushi.e -2
pop.v.i self.phase
push.s "obj_questionasker_566"@21935
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_questionasker_567"@21937
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_questionasker_568"@21939
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_questionasker_569"@21941
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_questionasker_570"@21943
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 4
pop.v.i self.con
pushi.e 357
pop.v.i self.sprite_index
pushi.e 3
conv.i.v
push.v 302.y
pushi.e 100
sub.i.v
push.v 302.x
pushi.e 95
add.i.v
call.i scr_blcon(argc=3)
popz.v

:[61]
push.v self.con
pushi.e 4
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
push.d 0.2
pop.v.d self.image_speed
pushi.e 363
pop.v.i self.sprite_index
pushi.e 5
pop.v.i self.con
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[66]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [74]

:[67]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [70]

:[68]
push.v 784.stringno
pushi.e 1
cmp.i.v EQ
bf [70]

:[69]
pushi.e 360
pop.v.i self.sprite_index

:[70]
push.v 784.stringno
pushi.e 3
cmp.i.v EQ
bf [72]

:[71]
pushi.e 359
pop.v.i self.sprite_index

:[72]
push.d 0.1
pop.v.d self.image_speed
push.v 784.stringno
pushi.e 4
cmp.i.v EQ
bf [74]

:[73]
pushi.e 361
pop.v.i self.sprite_index

:[74]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [86]

:[75]
pushi.e 362
pop.v.i self.sprite_index
pushi.e 51
pop.v.i global.typer
pushi.e -2
pop.v.i self.phase
push.s "obj_questionasker_598"@21945
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_questionasker_599"@21946
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_questionasker_600"@21947
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_questionasker_601"@21948
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_questionasker_602"@21949
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 30
pop.v.i self.con
push.v self.answer
pushi.e 0
cmp.i.v EQ
bf [77]

:[76]
push.s "obj_questionasker_607"@21951
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_questionasker_608"@21953
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_questionasker_609"@21955
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_questionasker_610"@21957
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "LOOLLLL IF YOU CAME TO THIS PART OF THE CODE TO SEE WHO I HAVE A CRUSH ON YOURE OUT OF LUCK"@48422
pop.v.s self.fsgsfgsx
push.s "obj_questionasker_613"@21959
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_questionasker_614"@21961
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_questionasker_615"@21963
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_questionasker_616"@21965
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg

:[77]
push.v self.answer
pushi.e 1
cmp.i.v EQ
bf [79]

:[78]
push.s "obj_questionasker_624"@21967
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_questionasker_625"@21969
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_questionasker_626"@21971
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_questionasker_627"@21973
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_questionasker_628"@21975
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_questionasker_629"@21977
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_questionasker_630"@21979
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_questionasker_631"@21981
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_questionasker_632"@21983
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_questionasker_633"@21985
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_questionasker_634"@21987
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg

:[79]
push.v self.answer
pushi.e 2
cmp.i.v EQ
bf [81]

:[80]
pushi.e 366
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.shake
push.s "obj_questionasker_642"@21989
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_questionasker_643"@21991
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_questionasker_644"@21993
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_questionasker_645"@21995
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_questionasker_646"@21997
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_questionasker_647"@21999
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_questionasker_648"@22001
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_questionasker_649"@22003
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_questionasker_650"@22005
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_questionasker_651"@22007
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg

:[81]
push.v self.answer
pushi.e 3
cmp.i.v EQ
bf [83]

:[82]
pushi.e 355
pop.v.i self.sprite_index
push.d 0.2
pop.v.d self.image_speed
push.s "obj_questionasker_657"@22009
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_questionasker_658"@22011
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_questionasker_659"@22013
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_questionasker_660"@22015
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_questionasker_661"@22017
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_questionasker_662"@22019
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_questionasker_663"@22021
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_questionasker_664"@22023
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_questionasker_665"@22025
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_questionasker_666"@22027
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
pushi.e 20
pop.v.i self.con

:[83]
push.v self.con
pushi.e 20
cmp.i.v NEQ
bf [85]

:[84]
pushi.e 1
pop.v.i self.shake

:[85]
pushi.e 3
conv.i.v
push.v 302.y
pushi.e 100
sub.i.v
push.v 302.x
pushi.e 95
add.i.v
call.i scr_blcon(argc=3)
popz.v

:[86]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [88]

:[87]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 1
cmp.i.v EQ
b [89]

:[88]
push.e 0

:[89]
bf [96]

:[90]
push.v 784.stringno
pushi.e 2
cmp.i.v EQ
bf [92]

:[91]
pushi.e 366
pop.v.i self.sprite_index

:[92]
push.v 784.stringno
pushi.e 4
cmp.i.v EQ
bf [94]

:[93]
pushi.e 359
pop.v.i self.sprite_index

:[94]
push.v 784.stringno
pushi.e 8
cmp.i.v EQ
bf [96]

:[95]
pushi.e 366
pop.v.i self.sprite_index

:[96]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [98]

:[97]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [99]

:[98]
push.e 0

:[99]
bf [101]

:[100]
pushi.e 21
pop.v.i self.con
pushi.e 364
pop.v.i self.sprite_index
pushi.e 52
pop.v.i global.typer
push.s "obj_questionasker_691"@22029
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_questionasker_692"@22031
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_questionasker_693"@22033
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
push.v self.y
pushi.e 120
sub.i.v
push.v self.x
pushi.e 10
sub.i.v
call.i scr_blcon(argc=3)
popz.v

:[101]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [103]

:[102]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [104]

:[103]
push.e 0

:[104]
bf [106]

:[105]
pushi.e 359
pop.v.i self.sprite_index
pushi.e 51
pop.v.i global.typer
pushi.e -2
pop.v.i self.phase
push.s "obj_questionasker_704"@22035
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_questionasker_705"@22037
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_questionasker_706"@22039
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_questionasker_707"@22041
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 22
pop.v.i self.con
pushi.e 3
conv.i.v
push.v 302.y
pushi.e 100
sub.i.v
push.v 302.x
pushi.e 95
add.i.v
call.i scr_blcon(argc=3)
popz.v

:[106]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [108]

:[107]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [109]

:[108]
push.e 0

:[109]
bf [111]

:[110]
pushi.e 364
pop.v.i self.sprite_index
pushglb.v global.batmusic
call.i caster_pause(argc=1)
popz.v
pushi.e 23
pop.v.i self.con
pushi.e 150
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm

:[111]
push.v self.con
pushi.e 24
cmp.i.v EQ
bf [113]

:[112]
pushi.e 359
pop.v.i self.sprite_index
pushglb.v global.batmusic
call.i caster_resume(argc=1)
popz.v
pushi.e 30
pop.v.i self.con
push.s "obj_questionasker_725"@22043
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
push.v 302.y
pushi.e 100
sub.i.v
push.v 302.x
pushi.e 95
add.i.v
call.i scr_blcon(argc=3)
popz.v

:[113]
push.v self.con
pushi.e 30
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
bf [120]

:[117]
pushi.e 302
pushenv [119]

:[118]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[119]
popenv [118]
pushi.e 20
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm
pushi.e 31
pop.v.i self.con

:[120]
push.v self.con
pushi.e 32
cmp.i.v EQ
bf [122]

:[121]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [123]

:[122]
push.e 0

:[123]
bf [129]

:[124]
pushi.e 0
pop.v.i self.shake
pushi.e 338
pop.v.i 302.arms
pushi.e 364
pop.v.i self.sprite_index
pushi.e 51
pop.v.i global.typer
pushi.e -2
pop.v.i self.phase
pushi.e 307
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [128]

:[125]
pushi.e 307
pushenv [127]

:[126]
call.i instance_destroy(argc=0)
popz.v

:[127]
popenv [126]

:[128]
push.s "obj_questionasker_745"@22045
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_questionasker_746"@22047
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_questionasker_747"@22049
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_questionasker_748"@22051
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_questionasker_749"@22053
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_questionasker_750"@22055
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_questionasker_751"@22057
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_questionasker_752"@22059
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_questionasker_753"@22061
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_questionasker_754"@22063
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_questionasker_755"@22065
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
pushi.e 34
pop.v.i self.con
pushi.e 1
conv.i.v
push.v 302.y
pushi.e 120
sub.i.v
push.v 302.x
pushi.e 320
sub.i.v
call.i scr_blcon(argc=3)
popz.v

:[129]
push.v self.con
pushi.e 34
cmp.i.v EQ
bf [131]

:[130]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [132]

:[131]
push.e 0

:[132]
bf [134]

:[133]
pushi.e 1083
pop.v.i 302.arms
pushi.e 35
pop.v.i self.con
pushi.e 0
pop.v.i 302.siner
pushi.e 0
pop.v.i 302.sineron
pushi.e 350
pop.v.i 302.sprite_index
pushi.e 0
pop.v.i 302.image_index
push.d 0.25
pop.v.d 302.image_speed

:[134]
push.v self.con
pushi.e 35
cmp.i.v EQ
bf [137]

:[135]
push.v 302.image_index
pushi.e 5
cmp.i.v GTE
bf [137]

:[136]
pushi.e 36
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i 302.image_speed

:[137]
push.v self.con
pushi.e 37
cmp.i.v EQ
bf [139]

:[138]
pushi.e 2
pop.v.i 302.shaker
pushi.e 38
pop.v.i self.con
pushi.e 25
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm

:[139]
push.v self.con
pushi.e 39
cmp.i.v EQ
bf [141]

:[140]
push.d 0.334
pop.v.d 302.image_speed
pushi.e 351
pop.v.i 302.sprite_index
push.d -0.4
pop.v.d 302.gravity
pushi.e 270
pop.v.i 302.gravity_direction
pushi.e 40
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm

:[141]
push.v self.con
pushi.e 41
cmp.i.v EQ
bf [143]

:[142]
pushi.e 42
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm
pushi.e 365
pop.v.i self.sprite_index

:[143]
push.v self.con
pushi.e 43
cmp.i.v EQ
bf [145]

:[144]
pushi.e 150
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v
pushi.e 12
pushi.e -1
pushi.e 9
pop.v.i [array]self.alarm
pushi.e 44
pop.v.i self.con

:[145]
push.v self.phase
pushi.e 1
cmp.i.v GTE
bf [147]

:[146]
push.v self.phase
pushi.e 3
cmp.i.v LT
b [148]

:[147]
push.e 0

:[148]
bf [170]

:[149]
pushi.e 337
pop.v.i 302.arms
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.q
pushi.e 10
cmp.i.v EQ
bf [151]

:[150]
pushi.e 21165
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i make_color_hsv(argc=3)
call.i draw_set_color(argc=1)
popz.v

:[151]
pushi.e 1
conv.i.v
call.i scr_setfont(argc=1)
popz.v
pushi.e 205
pop.v.i local.xx
pushi.e 50
pop.v.i local.yy
pushi.e 1
pop.v.i local.scale
pushi.e 0
pop.v.i local.angle
push.v self.q
pushi.e 4
cmp.i.v EQ
bf [153]

:[152]
push.v local.xx
pushi.e 35
sub.i.v
pop.v.v local.xx
push.v local.yy
pushi.e 30
sub.i.v
pop.v.v local.yy
push.d 0.5
pop.v.d local.scale
pushi.e 6
pop.v.i local.angle

:[153]
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [169]

:[154]
push.v self.q
pushi.e 1
cmp.i.v EQ
bt [156]

:[155]
push.v self.q
pushi.e 7
cmp.i.v EQ
b [157]

:[156]
push.e 1

:[157]
bf [159]

:[158]
push.v local.xx
pushi.e 10
sub.i.v
pop.v.v local.xx

:[159]
push.v self.q
pushi.e 5
cmp.i.v EQ
bt [162]

:[160]
push.v self.q
pushi.e 8
cmp.i.v EQ
bt [162]

:[161]
push.v self.q
pushi.e 10
cmp.i.v EQ
b [163]

:[162]
push.e 1

:[163]
bf [165]

:[164]
push.v local.yy
pushi.e 25
sub.i.v
pop.v.v local.yy

:[165]
push.v self.q
pushi.e 4
cmp.i.v EQ
bf [167]

:[166]
push.v local.xx
pushi.e 23
sub.i.v
pop.v.v local.xx

:[167]
push.v self.q
pushi.e 9
cmp.i.v EQ
bf [169]

:[168]
push.v local.xx
pushi.e 36
sub.i.v
pop.v.v local.xx
push.v local.yy
pushi.e 40
sub.i.v
pop.v.v local.yy

:[169]
pushloc.v local.angle
pushloc.v local.scale
pushloc.v local.scale
push.v self.qtext
pushloc.v local.yy
pushi.e 1
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
add.v.v
pushloc.v local.xx
pushi.e 1
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
add.v.v
call.i draw_text_transformed(argc=6)
popz.v

:[170]
push.v self.phase
pushi.e 2
cmp.i.v EQ
bf [181]

:[171]
push.v self.q
pushi.e 10
cmp.i.v NEQ
bf [173]

:[172]
push.v self.q
pushi.e 9
cmp.i.v NEQ
b [174]

:[173]
push.e 0

:[174]
bf [176]

:[175]
push.v self.quiztimer
pushi.e 1
sub.i.v
pop.v.v self.quiztimer

:[176]
push.v self.q
pushi.e 7
cmp.i.v EQ
bf [178]

:[177]
push.v self.quiztimer
pushi.e 2
add.i.v
pop.v.v self.quiztimer

:[178]
push.v self.quiztimer
pushi.e 10
conv.i.d
div.d.v
call.i ceil(argc=1)
pop.v.v self.drawtime
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i scr_setfont(argc=1)
popz.v
push.v self.drawtime
pushi.e 0
cmp.i.v GT
bf [180]

:[179]
push.v self.drawtime
pushi.e 260
conv.i.v
pushi.e 300
conv.i.v
call.i draw_text(argc=3)
popz.v
b [181]

:[180]
pushi.e 3
pop.v.i self.phase

:[181]
push.v self.phase
pushi.e 3
cmp.i.v EQ
bf [202]

:[182]
pushi.e 0
pop.v.i global.msc
pushi.e 51
pop.v.i global.typer
push.v self.q
pushi.e 10
cmp.i.v NEQ
bf [201]

:[183]
pushi.e 301
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [187]

:[184]
pushi.e 301
pushenv [186]

:[185]
call.i instance_destroy(argc=0)
popz.v

:[186]
popenv [185]

:[187]
pushi.e 304
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [191]

:[188]
pushi.e 304
pushenv [190]

:[189]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[190]
popenv [189]

:[191]
pushi.e 4
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm
push.v self.correct
push.v self.answer
cmp.v.v EQ
bf [193]

:[192]
push.v self.q
pushi.e 7
cmp.i.v NEQ
b [194]

:[193]
push.e 0

:[194]
bf [198]

:[195]
pushi.e 26
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 60
dup.i 0
push.i 0
cmp.i.i LTE
bt [197]

:[196]
pushi.e 110
conv.i.v
pushi.e -10
conv.i.v
pushi.e 640
conv.i.v
call.i random(argc=1)
call.i instance_create(argc=3)
popz.v
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [196]

:[197]
popz.i

:[198]
push.v self.q
pushi.e 7
cmp.i.v EQ
bf [200]

:[199]
pushi.e 27
conv.i.v
call.i snd_play(argc=1)
popz.v

:[200]
pushi.e 4
pop.v.i self.phase
pushi.e 70
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
b [202]

:[201]
push.v self.answer
pop.v.v self.correct
pushi.e 4
pop.v.i self.phase
pushi.e 6
pop.v.i self.con
pushi.e 28
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 30
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm

:[202]
push.v self.phase
pushi.e 5
cmp.i.v EQ
bf [end]

:[203]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [207]

:[204]
pushi.e 784
pushenv [206]

:[205]
call.i instance_destroy(argc=0)
popz.v

:[206]
popenv [205]

:[207]
pushi.e 297
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [211]

:[208]
pushi.e 297
pushenv [210]

:[209]
call.i instance_destroy(argc=0)
popz.v

:[210]
popenv [209]

:[211]
pushi.e 3
pop.v.i global.mnfight
pushi.e -1
pop.v.i self.phase
pushi.e 338
pop.v.i 302.arms
pushi.e 302
pushenv [213]

:[212]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[213]
popenv [212]
pushi.e 307
pushenv [215]

:[214]
call.i instance_destroy(argc=0)
popz.v

:[215]
popenv [214]

:[end]