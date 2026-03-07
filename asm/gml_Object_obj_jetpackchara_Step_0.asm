.localvar 0 arguments

:[0]
push.v self.won
pushi.e 0
cmp.i.v EQ
bf [7]

:[1]
push.v 1575.left
conv.v.b
bf [4]

:[2]
push.v self.x
pushi.e 330
cmp.i.v GT
bf [4]

:[3]
push.v self.x
pushi.e 4
sub.i.v
pop.v.v self.x

:[4]
push.v 1575.right
conv.v.b
bf [7]

:[5]
push.v self.x
pushi.e 620
cmp.i.v LT
bf [7]

:[6]
push.v self.x
pushi.e 4
add.i.v
pop.v.v self.x

:[7]
push.v self.won
pushi.e 0
cmp.i.v EQ
bf [10]

:[8]
push.v 1198.fakev
pushi.e 15
cmp.i.v LT
bf [10]

:[9]
push.v 1198.fakev
push.d 0.25
add.d.v
pop.v.v 1198.fakev

:[10]
push.v 1198.fakev
pop.v.v self.myfakev
push.v self.dist
push.v self.myfakev
sub.v.v
pop.v.v self.dist
push.v self.dist
pushi.e 200
cmp.i.v LT
bt [12]

:[11]
push.v self.timertime
pushi.e 90
cmp.i.v LT
b [13]

:[12]
push.e 1

:[13]
bf [15]

:[14]
pushi.e 0
pop.v.i self.eligible

:[15]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [18]

:[16]
push.v self.mett
conv.v.i
push.v [stacktop]self.x
push.v self.xx
pushi.e 150
add.i.v
cmp.v.v LT
bf [18]

:[17]
pushi.e 2
pop.v.i self.con

:[18]
push.v self.dist
pushi.e 600
cmp.i.v LT
bf [21]

:[19]
push.v self.mett
call.i instance_exists(argc=1)
conv.v.b
bf [21]

:[20]
pushi.e -1
push.v self.mett
conv.v.i
pushi.e 1
pop.v.i [array]self.alarm

:[21]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [26]

:[22]
pushi.e 1
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.overmode
push.v self.dist
push.v self.maxdist
div.v.v
push.d 0.75
cmp.d.v LT
bf [24]

:[23]
pushi.e 1
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.movemode

:[24]
push.v self.dist
push.v self.maxdist
div.v.v
push.d 0.35
cmp.d.v LT
bf [26]

:[25]
pushi.e 2
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.overmode

:[26]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [37]

:[27]
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.overmode
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.movemode
pushi.e 4
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.mode
pushi.e 9
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.con
pushi.e 0
pop.v.i self.wrong
push.v self.mett
conv.v.i
push.v [stacktop]self.y
pushi.e 200
cmp.i.v LT
bf [29]

:[28]
push.v self.mett
conv.v.i
dup.i 0
push.v [stacktop]self.y
pushi.e 5
add.i.v
pop.i.v [stacktop]self.y

:[29]
push.v self.mett
conv.v.i
push.v [stacktop]self.x
pushi.e 580
cmp.i.v LT
bf [31]

:[30]
push.v self.mett
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 4
add.i.v
pop.i.v [stacktop]self.x
pushi.e 1
pop.v.i self.wrong

:[31]
push.v self.mett
conv.v.i
push.v [stacktop]self.x
pushi.e 590
cmp.i.v GT
bf [33]

:[32]
push.v self.mett
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 4
sub.i.v
pop.i.v [stacktop]self.x
pushi.e 1
pop.v.i self.wrong

:[33]
push.v self.wrong
pushi.e 0
cmp.i.v EQ
bf [37]

:[34]
pushi.e 1186
pushenv [36]

:[35]
pushi.e 1
pop.v.i self.finished

:[36]
popenv [35]
pushi.e 11
pop.v.i self.con
pushi.e -98
pop.v.i 1198.seg
pushi.e 1
pop.v.i 1198.on

:[37]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [45]

:[38]
push.v self.mett
conv.v.i
push.v [stacktop]self.y
pushi.e 200
cmp.i.v LT
bf [40]

:[39]
push.v self.mett
conv.v.i
dup.i 0
push.v [stacktop]self.y
pushi.e 5
add.i.v
pop.i.v [stacktop]self.y

:[40]
push.v self.mett
conv.v.i
push.v [stacktop]self.x
pushi.e 580
cmp.i.v LT
bf [42]

:[41]
push.v self.mett
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 4
add.i.v
pop.i.v [stacktop]self.x

:[42]
push.v 1198.fakev
pushi.e 2
cmp.i.v GT
bf [44]

:[43]
push.v 1198.fakev
pushi.e 1
sub.i.v
pop.v.v 1198.fakev
b [45]

:[44]
pushi.e 12
pop.v.i self.con
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[45]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [52]

:[46]
push.v 1198.seg
pushi.e -104
cmp.i.v LTE
bf [48]

:[47]
pushi.e 0
pop.v.i 1198.fakev
pushi.e 13
pop.v.i self.con

:[48]
push.v self.mett
conv.v.i
push.v [stacktop]self.y
pushi.e 200
cmp.i.v LT
bf [50]

:[49]
push.v self.mett
conv.v.i
dup.i 0
push.v [stacktop]self.y
pushi.e 5
add.i.v
pop.i.v [stacktop]self.y

:[50]
push.v self.mett
conv.v.i
push.v [stacktop]self.x
pushi.e 580
cmp.i.v LT
bf [52]

:[51]
push.v self.mett
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 4
add.i.v
pop.i.v [stacktop]self.x

:[52]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [54]

:[53]
push.v 1576.x
pop.v.v self.remx
push.v 1576.y
pop.v.v self.remy
pushi.e 400
pop.v.i 1576.x
pushi.e 100
pop.v.i 1576.y
pushi.e 27
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
pushi.e 0
pop.v.i global.facechoice
push.s "obj_jetpackchara_198"@14605
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_jetpackchara_199"@14607
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_jetpackchara_200"@14609
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_jetpackchara_201"@14611
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_jetpackchara_203"@14613
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
pop.v.v self.ggg
pushi.e 0
push.v self.ggg
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 14
pop.v.i self.con

:[54]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [56]

:[55]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [57]

:[56]
push.e 0

:[57]
bf [60]

:[58]
push.v self.mett
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 8
add.i.v
pop.i.v [stacktop]self.x
push.v self.mett
conv.v.i
push.v [stacktop]self.x
pushi.e 800
cmp.i.v GT
bf [60]

:[59]
pushi.e 15
pop.v.i self.con

:[60]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [63]

:[61]
push.v self.mett
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 8
sub.i.v
pop.i.v [stacktop]self.x
push.v self.mett
conv.v.i
push.v [stacktop]self.x
push.v self.xx
pushi.e 240
add.i.v
cmp.v.v LT
bf [63]

:[62]
pushi.e 16
pop.v.i self.con

:[63]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [65]

:[64]
push.s "obj_jetpackchara_223"@14615
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_jetpackchara_224"@14617
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_jetpackchara_225"@14619
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
pop.v.v self.ggg
pushi.e 0
push.v self.ggg
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 17
pop.v.i self.con

:[65]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [67]

:[66]
pushi.e 780
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [68]

:[67]
push.e 0

:[68]
bf [70]

:[69]
push.v self.mett
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 8
add.i.v
pop.i.v [stacktop]self.x
pushi.e -3
pop.v.i 1198.fakev
pushi.e 18
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[70]
push.v self.con
pushi.e 18
cmp.i.v EQ
bf [76]

:[71]
push.v self.x
pushi.e 467
cmp.i.v LT
bf [73]

:[72]
push.v self.x
pushi.e 3
add.i.v
pop.v.v self.x

:[73]
push.v self.x
pushi.e 473
cmp.i.v GT
bf [75]

:[74]
push.v self.x
pushi.e 3
sub.i.v
pop.v.v self.x

:[75]
push.v self.mett
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 8
add.i.v
pop.i.v [stacktop]self.x

:[76]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [100]

:[77]
pushi.e 0
pop.v.i 1198.fakev
push.v self.y
pushi.e 367
cmp.i.v LT
bf [79]

:[78]
push.v self.y
pushi.e 3
add.i.v
pop.v.v self.y
b [80]

:[79]
pushi.e 367
pop.v.i self.y

:[80]
push.v self.x
pushi.e 467
cmp.i.v LT
bf [82]

:[81]
push.v self.x
pushi.e 4
add.i.v
pop.v.v self.x

:[82]
push.v self.x
pushi.e 473
cmp.i.v GT
bf [84]

:[83]
push.v self.x
pushi.e 4
sub.i.v
pop.v.v self.x

:[84]
push.v self.x
pushi.e 467
cmp.i.v GTE
bf [86]

:[85]
push.v self.x
pushi.e 473
cmp.i.v LTE
b [87]

:[86]
push.e 0

:[87]
bf [89]

:[88]
pushi.e 470
pop.v.i self.x

:[89]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 240
cmp.i.v LT
bf [91]

:[90]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_yview
pushi.e 6
add.i.v
pop.i.v [array]self.view_yview
b [92]

:[91]
pushi.e 240
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_yview

:[92]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 240
cmp.i.v EQ
bf [95]

:[93]
push.v self.x
pushi.e 470
cmp.i.v EQ
bf [95]

:[94]
push.v self.y
pushi.e 367
cmp.i.v EQ
b [96]

:[95]
push.e 0

:[96]
bf [100]

:[97]
push.v self.mett
conv.v.i
pushenv [99]

:[98]
call.i instance_destroy(argc=0)
popz.v

:[99]
popenv [98]
pushi.e 240
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_yview
pushi.e 20
pop.v.i self.con

:[100]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [102]

:[101]
pushi.e 21
pop.v.i self.con
pushi.e 70
pop.v.i 1197.con

:[102]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [117]

:[103]
push.v 1198.fakev
pushi.e 0
cmp.i.v LT
bf [105]

:[104]
push.v 1198.fakev
push.d 0.25
add.d.v
pop.v.v 1198.fakev

:[105]
push.v 1198.fakev
pushi.e 0
cmp.i.v GT
bf [107]

:[106]
push.v 1198.fakev
push.d 0.25
sub.d.v
pop.v.v 1198.fakev

:[107]
push.v 1198.fakev
call.i abs(argc=1)
push.d 0.5
cmp.d.v LT
bf [109]

:[108]
pushi.e 0
pop.v.i 1198.fakev

:[109]
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.overmode
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.movemode
pushi.e -1
push.v self.mett
conv.v.i
pushi.e 1
pop.v.i [array]self.alarm
push.v self.mett
conv.v.i
push.v [stacktop]self.y
pushi.e 200
cmp.i.v LT
bf [111]

:[110]
push.v self.mett
conv.v.i
dup.i 0
push.v [stacktop]self.y
pushi.e 5
add.i.v
pop.i.v [stacktop]self.y

:[111]
push.v self.mett
conv.v.i
push.v [stacktop]self.x
pushi.e 580
cmp.i.v LT
bf [113]

:[112]
push.v self.mett
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 4
add.i.v
pop.i.v [stacktop]self.x

:[113]
push.v 1198.fakev
call.i abs(argc=1)
push.d 0.5
cmp.d.v LT
bf [117]

:[114]
pushi.e 1186
pushenv [116]

:[115]
pushi.e 1
pop.v.i self.finished

:[116]
popenv [115]
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i 1198.fakev
pushi.e 31
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[117]
push.v self.con
pushi.e 32
cmp.i.v EQ
bf [119]

:[118]
pushi.e 0
pop.v.i global.msc
push.s "obj_jetpackchara_301"@14620
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_jetpackchara_302"@14621
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_jetpackchara_303"@14623
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_jetpackchara_304"@14625
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_jetpackchara_305"@14627
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_jetpackchara_306"@14629
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_jetpackchara_307"@14631
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
call.i scr_regulartext(argc=0)
popz.v
pushi.e 105
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 33
pop.v.i self.con

:[119]
push.v self.con
pushi.e 33
cmp.i.v EQ
bf [124]

:[120]
push.v self.mett
conv.v.i
push.v [stacktop]self.y
pushi.e 240
cmp.i.v LT
bf [122]

:[121]
push.v self.mett
conv.v.i
dup.i 0
push.v [stacktop]self.y
pushi.e 5
add.i.v
pop.i.v [stacktop]self.y

:[122]
push.v self.mett
conv.v.i
push.v [stacktop]self.x
pushi.e 580
cmp.i.v LT
bf [124]

:[123]
push.v self.mett
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 4
add.i.v
pop.i.v [stacktop]self.x

:[124]
push.v self.con
pushi.e 33
cmp.i.v EQ
bf [126]

:[125]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [127]

:[126]
push.e 0

:[127]
bf [129]

:[128]
pushi.e 1
pushi.e -5
pushi.e 377
pop.v.i [array]global.flag
pushi.e 27
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
push.s "obj_jetpackchara_324"@14633
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_jetpackchara_325"@14634
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_jetpackchara_326"@14636
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_jetpackchara_327"@14638
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_jetpackchara_328"@14640
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_jetpackchara_329"@14641
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_jetpackchara_330"@14643
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_jetpackchara_331"@14644
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_jetpackchara_332"@14646
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_jetpackchara_333"@14648
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_jetpackchara_334"@14650
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_jetpackchara_335"@14652
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_jetpackchara_336"@14654
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 34
pop.v.i self.con

:[129]
push.v self.con
pushi.e 34
cmp.i.v EQ
bf [131]

:[130]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [132]

:[131]
push.e 0

:[132]
bf [135]

:[133]
push.v self.mett
conv.v.i
push.v [stacktop]self.y
pushi.e 240
cmp.i.v LT
bf [135]

:[134]
push.v self.mett
conv.v.i
dup.i 0
push.v [stacktop]self.y
pushi.e 5
add.i.v
pop.i.v [stacktop]self.y

:[135]
push.v self.con
pushi.e 34
cmp.i.v EQ
bf [137]

:[136]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [138]

:[137]
push.e 0

:[138]
bf [142]

:[139]
push.v self.mett
conv.v.i
pushenv [141]

:[140]
pushi.e -4
pop.v.i self.vspeed

:[141]
popenv [140]
pushi.e 17
pop.v.i self.con

:[142]
push.v self.dist
pushi.e 1
cmp.i.v LTE
bf [145]

:[143]
push.v self.timertime
pushi.e 0
cmp.i.v GTE
bf [145]

:[144]
push.v self.won
pushi.e 0
cmp.i.v EQ
b [146]

:[145]
push.e 0

:[146]
bf [148]

:[147]
pushi.e 1
pop.v.i self.won
pushi.e 10
pop.v.i self.con

:[148]
push.v self.dist
pushi.e 1
cmp.i.v GT
bf [151]

:[149]
push.v self.timertime
pushi.e 0
cmp.i.v LTE
bf [151]

:[150]
push.v self.won
pushi.e 0
cmp.i.v EQ
b [152]

:[151]
push.e 0

:[152]
bf [end]

:[153]
pushi.e 2
pop.v.i self.won
pushi.e 30
pop.v.i self.con

:[end]