.localvar 0 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
push.v self.cn
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
pushi.e 1047
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
push.v 1576.x
pushi.e 6
add.i.v
pop.v.v 1576.x
pushi.e 2
conv.i.v
pushi.e 120
conv.i.v
pushi.e 4
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.sl1
pushi.e 2
conv.i.v
pushi.e 140
conv.i.v
pushi.e 4
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.sl2
pushi.e 1
pop.v.i self.cn

:[6]
push.v self.cn
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
push.v 1576.x
pushi.e 460
cmp.i.v GT
b [9]

:[8]
push.e 0

:[9]
bf [14]

:[10]
pushi.e 1047
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [14]

:[11]
pushi.e 1047
pushenv [13]

:[12]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.alarm
pushi.e 1
add.i.v
pop.i.v [array]self.alarm

:[13]
popenv [12]

:[14]
push.v self.cn
pushi.e 1
cmp.i.v EQ
bf [17]

:[15]
push.v 1576.x
pushi.e 510
cmp.i.v GT
bf [17]

:[16]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [18]

:[17]
push.e 0

:[18]
bf [24]

:[19]
pushi.e 1
pop.v.i global.interact
pushi.e 1047
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [23]

:[20]
pushi.e 1047
pushenv [22]

:[21]
call.i instance_destroy(argc=0)
popz.v

:[22]
popenv [21]

:[23]
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.m
push.d 0.01
push.v self.m
conv.v.i
pop.v.d [stacktop]self.fadespeed
pushi.e 2
pop.v.i self.cn
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[24]
push.v self.cn
pushi.e 3
cmp.i.v EQ
bf [26]

:[25]
pushi.e 290
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.x
push.v self.undyne
conv.v.i
push.v [stacktop]self.rsprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 1
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 0.1
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 4
pop.v.i self.cn

:[26]
push.v self.cn
pushi.e 4
cmp.i.v EQ
bf [29]

:[27]
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
pushi.e 480
cmp.i.v GT
bf [29]

:[28]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 5
pop.v.i self.cn
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[29]
push.v self.cn
pushi.e 6
cmp.i.v EQ
bf [31]

:[30]
pushi.e 1
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.fun
pushi.e 1554
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 0.2
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 7
pop.v.i self.cn

:[31]
push.v self.cn
pushi.e 7
cmp.i.v EQ
bf [34]

:[32]
push.v self.undyne
conv.v.i
push.v [stacktop]self.image_index
pushi.e 2
cmp.i.v EQ
bf [34]

:[33]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 8
pop.v.i self.cn
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[34]
push.v self.cn
pushi.e 9
cmp.i.v EQ
bf [36]

:[35]
push.d 0.5
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 10
pop.v.i self.cn

:[36]
push.v self.cn
pushi.e 10
cmp.i.v EQ
bf [41]

:[37]
push.v self.undyne
conv.v.i
push.v [stacktop]self.image_index
pushi.e 2
cmp.i.v EQ
bf [39]

:[38]
pushi.e 47
conv.i.v
call.i snd_play(argc=1)
popz.v

:[39]
push.v self.undyne
conv.v.i
push.v [stacktop]self.image_index
pushi.e 5
cmp.i.v EQ
bf [41]

:[40]
pushi.e 1
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.d
pushi.e 11
pop.v.i self.cn
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[41]
push.v self.cn
pushi.e 12
cmp.i.v EQ
bf [43]

:[42]
pushi.e 2
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_index
push.d 0.2
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 1555
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 13
pop.v.i self.cn

:[43]
push.v self.cn
pushi.e 13
cmp.i.v EQ
bf [46]

:[44]
push.v self.undyne
conv.v.i
push.v [stacktop]self.image_index
pushi.e 13
cmp.i.v GTE
bf [46]

:[45]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 14
pop.v.i self.cn
pushi.e 120
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[46]
push.v self.cn
pushi.e 15
cmp.i.v EQ
bf [48]

:[47]
pushi.e -1
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 16
pop.v.i self.cn

:[48]
push.v self.cn
pushi.e 16
cmp.i.v EQ
bf [51]

:[49]
push.v self.undyne
conv.v.i
push.v [stacktop]self.image_index
pushi.e 1
cmp.i.v LTE
bf [51]

:[50]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.d
push.v self.undyne
conv.v.i
push.v [stacktop]self.rsprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 17
pop.v.i self.cn
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[51]
push.v self.cn
pushi.e 18
cmp.i.v EQ
bf [53]

:[52]
pushi.e 19
pop.v.i self.cn
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[53]
push.v self.cn
pushi.e 20
cmp.i.v EQ
bf [55]

:[54]
pushi.e 21
pop.v.i self.cn
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[55]
push.v self.cn
pushi.e 22
cmp.i.v EQ
bf [57]

:[56]
push.v self.undyne
conv.v.i
push.v [stacktop]self.lsprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e -2
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 0.2
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 23
pop.v.i self.cn

:[57]
push.v self.cn
pushi.e 23
cmp.i.v EQ
bf [62]

:[58]
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
pushi.e 300
cmp.i.v LT
bf [62]

:[59]
push.v self.undyne
conv.v.i
pushenv [61]

:[60]
call.i instance_destroy(argc=0)
popz.v

:[61]
popenv [60]
pushi.e 24
pop.v.i self.cn
pushi.e 0
pop.v.i global.interact
pushi.e 0
pushi.e -5
pushi.e 17
pop.v.i [array]global.flag

:[62]
push.v self.cn
pushi.e 24
cmp.i.v EQ
bf [68]

:[63]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1576
conv.i.v
pushi.e 900
conv.i.v
pushi.e 220
conv.i.v
pushi.e 100
conv.i.v
pushi.e 200
conv.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bt [65]

:[64]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1576
conv.i.v
pushi.e 900
conv.i.v
pushi.e 790
conv.i.v
pushi.e 100
conv.i.v
pushi.e 780
conv.i.v
call.i collision_rectangle(argc=7)
conv.v.b
b [66]

:[65]
push.e 1

:[66]
bf [68]

:[67]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
push.s "music/ambientwater.ogg"@2645
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
pushi.e 1
pop.v.i global.interact
pushi.e 25
pop.v.i self.cn

:[68]
push.v self.cn
pushi.e 25
cmp.i.v EQ
bf [76]

:[69]
push.v 1576.y
pushi.e 120
cmp.i.v GT
bf [71]

:[70]
pushi.e 100
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.y
pushi.e 0
pop.v.i self.up
b [72]

:[71]
pushi.e 130
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.y
pushi.e 1
pop.v.i self.up

:[72]
push.v 1576.x
pushi.e 400
cmp.i.v LT
bf [74]

:[73]
pushi.e 1
pop.v.i self.left
pushi.e -4
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.hspeed
push.v self.mkid
conv.v.i
push.v [stacktop]self.lsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index
b [75]

:[74]
pushi.e 0
pop.v.i self.left
pushi.e 4
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.hspeed
push.v self.mkid
conv.v.i
push.v [stacktop]self.rsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[75]
pushi.e 27
pop.v.i self.cn

:[76]
push.v self.cn
pushi.e 27
cmp.i.v EQ
bf [83]

:[77]
push.v self.mkid
conv.v.i
push.v [stacktop]self.x
push.v 1576.x
sub.v.v
call.i abs(argc=1)
pushi.e 45
cmp.i.v LT
bf [83]

:[78]
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 28
pop.v.i self.cn
push.v self.left
pushi.e 1
cmp.i.v EQ
bf [80]

:[79]
push.v self.mkid
conv.v.i
push.v [stacktop]self.lsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[80]
push.v self.left
pushi.e 0
cmp.i.v EQ
bf [82]

:[81]
push.v self.mkid
conv.v.i
push.v [stacktop]self.rsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[82]
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[83]
push.v self.cn
pushi.e 29
cmp.i.v EQ
bf [88]

:[84]
pushi.e 30
pop.v.i self.cn
push.v self.left
pushi.e 1
cmp.i.v EQ
bf [86]

:[85]
push.v self.mkid
conv.v.i
push.v [stacktop]self.rsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index
b [87]

:[86]
push.v self.mkid
conv.v.i
push.v [stacktop]self.lsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[87]
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[88]
push.v self.cn
pushi.e 31
cmp.i.v EQ
bf [94]

:[89]
push.v self.up
pushi.e 1
cmp.i.v EQ
bf [91]

:[90]
push.v self.mkid
conv.v.i
push.v [stacktop]self.usprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[91]
push.v self.up
pushi.e 0
cmp.i.v EQ
bf [93]

:[92]
push.v self.mkid
conv.v.i
push.v [stacktop]self.dsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[93]
pushi.e 32
pop.v.i self.cn
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[94]
push.v self.cn
pushi.e 33
cmp.i.v EQ
bf [102]

:[95]
push.v self.left
pushi.e 1
cmp.i.v EQ
bf [97]

:[96]
push.v self.mkid
conv.v.i
push.v [stacktop]self.ltsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[97]
push.v self.left
pushi.e 0
cmp.i.v EQ
bf [99]

:[98]
push.v self.mkid
conv.v.i
push.v [stacktop]self.rtsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[99]
pushi.e 3
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.myinteract
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
pushi.e 0
pop.v.i global.facechoice
push.s "obj_undyneencounter2_329"@29410
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undyneencounter2_330"@29412
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_undyneencounter2_331"@29414
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_undyneencounter2_332"@29416
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_undyneencounter2_333"@29418
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_undyneencounter2_334"@29420
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_undyneencounter2_335"@29422
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e -5
pushi.e 284
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [101]

:[100]
push.s "obj_undyneencounter2_338"@29424
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_undyneencounter2_339"@29426
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_undyneencounter2_340"@29428
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_undyneencounter2_341"@29430
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg

:[101]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 34
pop.v.i self.cn

:[102]
push.v self.cn
pushi.e 34
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
bf [109]

:[106]
pushi.e 6
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.myinteract
push.d 0.3
push.v self.mkid
conv.v.i
pop.v.d [stacktop]self.image_speed
push.v self.mkid
conv.v.i
push.v [stacktop]self.rsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.d 34.1
pop.v.d self.cn
push.v self.left
pushi.e 1
cmp.i.v EQ
bf [108]

:[107]
pushi.e 7
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
b [109]

:[108]
pushi.e 12
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[109]
push.v self.cn
push.d 35.1
cmp.d.v EQ
bf [111]

:[110]
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 1
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.fun
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.image_index
push.d 0.334
push.v self.mkid
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 1479
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 35.2
pop.v.d self.cn

:[111]
push.v self.cn
push.d 35.2
cmp.d.v EQ
bf [114]

:[112]
push.v self.mkid
conv.v.i
push.v [stacktop]self.image_index
pushi.e 19
cmp.i.v GTE
bf [114]

:[113]
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.image_index
push.v self.mkid
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 13
add.i.v
pop.i.v [stacktop]self.x
push.v self.mkid
conv.v.i
push.v [stacktop]self.rsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.d 35.3
pop.v.d self.cn
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[114]
push.v self.cn
push.d 36.3
cmp.d.v EQ
bf [116]

:[115]
pushi.e 37
pop.v.i self.cn
pushi.e 4
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[116]
push.v self.cn
pushi.e 38
cmp.i.v EQ
bf [end]

:[117]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.border
pushi.e 0
pushi.e -5
pushi.e 15
pop.v.i [array]global.flag
pushi.e 0
pushi.e -5
pushi.e 16
pop.v.i [array]global.flag
call.i SCR_BORDERSETUP(argc=0)
popz.v
pushi.e 1
conv.i.v
push.d 0.8
conv.d.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
pushi.e 37
pop.v.i self.cn
pushi.e 110
pop.v.i global.plot
call.i instance_destroy(argc=0)
popz.v
push.v self.sl1
conv.v.i
pushenv [119]

:[118]
call.i instance_destroy(argc=0)
popz.v

:[119]
popenv [118]
push.v self.sl2
conv.v.i
pushenv [121]

:[120]
call.i instance_destroy(argc=0)
popz.v

:[121]
popenv [120]

:[end]