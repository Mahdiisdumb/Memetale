.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v 1576.x
pushi.e 400
cmp.i.v GT
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 1172
conv.i.v
push.v 1576.ystart
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 40
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.al
pushi.e 1735
push.v self.al
conv.v.i
pop.v.i [stacktop]self.mask_index
pushi.e 1
push.v self.al
conv.v.i
pop.v.i [stacktop]self.fun
push.d 0.2
push.v self.al
conv.v.i
pop.v.d [stacktop]self.image_speed
push.v self.al
conv.v.i
push.v [stacktop]self.rsprite
push.v self.al
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 2
push.v self.al
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 2
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i global.interact

:[6]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [8]

:[7]
pushi.e 0
push.v self.al
conv.v.i
pop.v.i [stacktop]self.speed
pushi.e 0
push.v self.al
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 4
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[8]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [10]

:[9]
pushi.e 1
pushi.e -5
pushi.e 430
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.msc
pushi.e 47
pop.v.i global.typer
pushi.e 6
pop.v.i global.facechoice
pushi.e 6
pop.v.i global.faceemotion
push.s "obj_alphysfollow_event_108"@9598
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_alphysfollow_event_109"@9600
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 6
pop.v.i self.con
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[10]
push.v self.con
pushi.e 6
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
bf [15]

:[14]
pushi.e 0
pop.v.i global.interact
pushi.e 7
pop.v.i self.con
pushi.e 1
pop.v.i self.follow
push.v 1576.x
pop.v.v self.nowx
push.v 1576.x
push.v self.al
conv.v.i
push.v [stacktop]self.x
sub.v.v
pop.v.v self.nowax

:[15]
push.v self.follow
pushi.e 1
cmp.i.v EQ
bf [21]

:[16]
push.v self.al
conv.v.i
push.v [stacktop]self.x
push.v 1576.x
push.v self.nowax
sub.v.v
cmp.v.v LTE
bf [18]

:[17]
push.v 1576.x
push.v self.nowax
sub.v.v
push.v self.al
conv.v.i
pop.v.v [stacktop]self.x
push.v 1576.image_speed
push.v self.al
conv.v.i
pop.v.v [stacktop]self.image_speed
b [19]

:[18]
pushi.e 0
push.v self.al
conv.v.i
pop.v.i [stacktop]self.image_speed

:[19]
push.v 1576.x
pushi.e 1050
cmp.i.v GT
bf [21]

:[20]
pushi.e 0
pop.v.i self.follow
pushi.e 0
push.v self.al
conv.v.i
pop.v.i [stacktop]self.image_speed

:[21]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [24]

:[22]
push.v 1576.x
push.v self.nowx
pushi.e 200
add.i.v
cmp.v.v GT
bf [24]

:[23]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [25]

:[24]
push.e 0

:[25]
bf [27]

:[26]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pushi.e -5
pushi.e 430
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.msc
pushi.e 47
pop.v.i global.typer
pushi.e 5
pop.v.i global.faceemotion
pushi.e 6
pop.v.i global.facechoice
push.s "obj_alphysfollow_event_148"@9602
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_alphysfollow_event_149"@9604
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_alphysfollow_event_150"@9606
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 8
pop.v.i self.con
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[27]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [29]

:[28]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [30]

:[29]
push.e 0

:[30]
bf [32]

:[31]
pushi.e 0
pop.v.i global.interact
pushi.e 9
pop.v.i self.con
pushi.e 1
pop.v.i self.follow
push.v 1576.x
pop.v.v self.nowx
push.v 1576.x
push.v self.al
conv.v.i
push.v [stacktop]self.x
sub.v.v
pop.v.v self.nowax

:[32]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [35]

:[33]
push.v 1576.x
push.v self.nowx
pushi.e 200
add.i.v
cmp.v.v GT
bf [35]

:[34]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [36]

:[35]
push.e 0

:[36]
bf [38]

:[37]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pushi.e -5
pushi.e 430
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.msc
pushi.e 47
pop.v.i global.typer
pushi.e 4
pop.v.i global.faceemotion
pushi.e 6
pop.v.i global.facechoice
push.s "obj_alphysfollow_event_175"@9608
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_alphysfollow_event_176"@9610
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 10
pop.v.i self.con
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[38]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [40]

:[39]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [41]

:[40]
push.e 0

:[41]
bf [43]

:[42]
pushi.e 0
pop.v.i global.interact
pushi.e 11
pop.v.i self.con
pushi.e 1
pop.v.i self.follow
push.v 1576.x
pop.v.v self.nowx
push.v 1576.x
push.v self.al
conv.v.i
push.v [stacktop]self.x
sub.v.v
pop.v.v self.nowax

:[43]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [45]

:[44]
pushi.e 51
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[45]
push.v self.con
pushi.e 52
cmp.i.v EQ
bf [47]

:[46]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pushi.e -5
pushi.e 430
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.msc
pushi.e 47
pop.v.i global.typer
pushi.e 0
pop.v.i global.faceemotion
pushi.e 6
pop.v.i global.facechoice
push.s "obj_alphysfollow_event_206"@9612
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1736
pop.v.i 1172.sprite_index
pushi.e 53
pop.v.i self.con
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[47]
push.v self.con
pushi.e 53
cmp.i.v EQ
bf [49]

:[48]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [50]

:[49]
push.e 0

:[50]
bf [52]

:[51]
pushi.e 3
pop.v.i global.facing
pushi.e 54
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[52]
push.v self.con
pushi.e 55
cmp.i.v EQ
bf [54]

:[53]
pushi.e 1734
pop.v.i 1172.sprite_index
pushi.e 1
pop.v.i global.interact
pushi.e 2
pushi.e -5
pushi.e 430
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.msc
pushi.e 47
pop.v.i global.typer
pushi.e 1
pop.v.i global.faceemotion
pushi.e 6
pop.v.i global.facechoice
push.s "obj_alphysfollow_event_228"@9614
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_alphysfollow_event_229"@9616
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_alphysfollow_event_230"@9618
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_alphysfollow_event_231"@9619
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_alphysfollow_event_232"@9621
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_alphysfollow_event_233"@9622
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_alphysfollow_event_234"@9624
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 56
pop.v.i self.con
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[54]
push.v self.con
pushi.e 56
cmp.i.v EQ
bf [56]

:[55]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 1
cmp.i.v EQ
b [57]

:[56]
push.e 0

:[57]
bf [60]

:[58]
push.v 784.stringno
pushi.e 6
cmp.i.v EQ
bf [60]

:[59]
push.v self.al
conv.v.i
push.v [stacktop]self.usprite
push.v self.al
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[60]
push.v self.con
pushi.e 56
cmp.i.v EQ
bf [62]

:[61]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [63]

:[62]
push.e 0

:[63]
bf [65]

:[64]
pushi.e 1738
pop.v.i 1172.sprite_index
pushi.e 57
pop.v.i self.con
pushi.e 45
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[65]
push.v self.con
pushi.e 58
cmp.i.v EQ
bf [67]

:[66]
pushi.e 1
pop.v.i global.interact
pushi.e 2
pushi.e -5
pushi.e 430
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.msc
pushi.e 47
pop.v.i global.typer
pushi.e 6
pop.v.i global.faceemotion
pushi.e 6
pop.v.i global.facechoice
push.s "obj_alphysfollow_event_262"@9626
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_alphysfollow_event_263"@9628
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_alphysfollow_event_264"@9630
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_alphysfollow_event_265"@9632
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_alphysfollow_event_266"@9634
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_alphysfollow_event_267"@9636
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 1738
pop.v.i 1172.sprite_index
pushi.e 59
pop.v.i self.con
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[67]
push.v self.con
pushi.e 59
cmp.i.v EQ
bf [69]

:[68]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [70]

:[69]
push.e 0

:[70]
bf [72]

:[71]
pushi.e 60
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[72]
push.v self.con
pushi.e 61
cmp.i.v EQ
bf [74]

:[73]
pushi.e 1737
push.v self.al
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 62
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[74]
push.v self.con
pushi.e 63
cmp.i.v EQ
bf [76]

:[75]
pushi.e 1
pop.v.i global.interact
pushi.e 2
pushi.e -5
pushi.e 430
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.msc
pushi.e 47
pop.v.i global.typer
pushi.e 6
pop.v.i global.faceemotion
pushi.e 6
pop.v.i global.facechoice
push.s "obj_alphysfollow_event_295"@9638
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_alphysfollow_event_296"@9640
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_alphysfollow_event_297"@9642
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 1737
pop.v.i 1172.sprite_index
pushi.e 64
pop.v.i self.con
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[76]
push.v self.con
pushi.e 64
cmp.i.v EQ
bf [78]

:[77]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [79]

:[78]
push.e 0

:[79]
bf [81]

:[80]
pushi.e 65
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[81]
push.v self.con
pushi.e 66
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
bf [86]

:[85]
pushi.e 1738
pop.v.i 1172.sprite_index
pushi.e 0
pop.v.i self.follow
push.d 0.2
push.v self.al
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e -1
push.v self.al
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 67
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[86]
push.v self.con
pushi.e 68
cmp.i.v EQ
bf [88]

:[87]
pushi.e 0
push.v self.al
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.al
conv.v.i
pop.v.i [stacktop]self.speed
push.d 68.1
pop.v.d self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[88]
push.v self.con
push.d 69.1
cmp.d.v EQ
bf [90]

:[89]
pushi.e 69
pop.v.i self.con

:[90]
push.v self.con
pushi.e 69
cmp.i.v EQ
bf [92]

:[91]
pushi.e 1
pop.v.i global.interact
pushi.e 2
pushi.e -5
pushi.e 430
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.msc
pushi.e 47
pop.v.i global.typer
pushi.e 7
pop.v.i global.faceemotion
pushi.e 6
pop.v.i global.facechoice
push.s "obj_alphysfollow_event_345"@9644
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1738
pop.v.i 1172.sprite_index
pushi.e 70
pop.v.i self.con
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[92]
push.v self.con
pushi.e 70
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
bf [end]

:[96]
pushi.e -4
push.v self.al
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 0.3334
push.v self.al
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 2
pop.v.i global.facing
pushi.e 71
pop.v.i self.con
pushi.e 0
pop.v.i self.follow
pushi.e 0
pop.v.i global.interact
pushi.e 1
pushi.e -5
pushi.e 492
pop.v.i [array]global.flag
pushi.e 199
pop.v.i global.plot
call.i instance_destroy(argc=0)
popz.v

:[end]