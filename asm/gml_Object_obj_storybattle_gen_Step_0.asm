.localvar 0 arguments

:[0]
push.v self.skipper
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [3]

:[2]
push.e 0

:[3]
bf [8]

:[4]
pushi.e 1
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [7]

:[5]
pushi.e -1
pushi.e 4
push.v [array]self.alarm
pushi.e 10
cmp.i.v GT
bf [7]

:[6]
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[7]
call.i scr_textskip(argc=0)
popz.v

:[8]
pushglb.v global.turntimer
pushi.e 2
cmp.i.v LT
bf [10]

:[9]
pushi.e 149
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushglb.v global.currentroom
call.i room_goto(argc=1)
popz.v
pushi.e 0
pop.v.i global.invc

:[10]
pushglb.v global.turntimer
pushi.e 14
cmp.i.v LT
bf [12]

:[11]
pushi.e 150
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
pushi.e 150
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.yyy
push.d 0.08
push.v self.yyy
conv.v.i
pop.v.d [stacktop]self.tspeed

:[15]
push.v self.off
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
push.v global.turntimer
pushi.e 1
sub.i.v
pop.v.v global.turntimer

:[17]
push.v self.activetimer
pushi.e 1
add.i.v
pop.v.v self.activetimer
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [19]

:[18]
push.v self.activetimer
pushi.e 15
cmp.i.v EQ
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
pushi.e 0
pop.v.i global.msc
pushi.e 55
pop.v.i global.typer
push.s "obj_storybattle_gen_295"@26528
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 187
conv.i.v
pushi.e 20
conv.i.v
pushi.e 50
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 33
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 784
conv.i.v
pushi.e 30
conv.i.v
pushi.e 80
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd1
pushi.e 6
pop.v.i self.con
pushi.e 110
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[22]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [24]

:[23]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [25]

:[24]
push.e 0

:[25]
bf [28]

:[26]
push.v self.blconwd1
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
bf [28]

:[27]
push.s "obj_storybattle_gen_307"@26530
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 187
conv.i.v
pushi.e 20
conv.i.v
pushi.e 400
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon2
pushi.e 33
push.v self.blcon2
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 784
conv.i.v
pushi.e 30
conv.i.v
pushi.e 430
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd2
pushi.e 8
pop.v.i self.con

:[28]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [35]

:[29]
push.v self.blconwd2
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [35]

:[30]
pushi.e 1
pop.v.i self.off
pushi.e 784
pushenv [32]

:[31]
call.i instance_destroy(argc=0)
popz.v

:[32]
popenv [31]
pushi.e 187
pushenv [34]

:[33]
call.i instance_destroy(argc=0)
popz.v

:[34]
popenv [33]

:[35]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [37]

:[36]
push.v self.activetimer
pushi.e 15
cmp.i.v EQ
b [38]

:[37]
push.e 0

:[38]
bf [40]

:[39]
pushi.e 0
pop.v.i global.msc
pushi.e 55
pop.v.i global.typer
push.s "obj_storybattle_gen_333"@26532
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 187
conv.i.v
pushi.e 20
conv.i.v
pushi.e 50
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 33
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 784
conv.i.v
pushi.e 30
conv.i.v
pushi.e 80
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd1
pushi.e 11
pop.v.i self.con
pushi.e 140
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[40]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [42]

:[41]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [43]

:[42]
push.e 0

:[43]
bf [46]

:[44]
push.v self.blconwd1
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
bf [46]

:[45]
push.s "obj_storybattle_gen_345"@26534
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 187
conv.i.v
pushi.e 20
conv.i.v
pushi.e 400
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon2
pushi.e 33
push.v self.blcon2
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 784
conv.i.v
pushi.e 30
conv.i.v
pushi.e 430
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd2
pushi.e 13
pop.v.i self.con

:[46]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [53]

:[47]
push.v self.blconwd2
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [53]

:[48]
pushi.e 1
pop.v.i self.off
pushi.e 784
pushenv [50]

:[49]
call.i instance_destroy(argc=0)
popz.v

:[50]
popenv [49]
pushi.e 187
pushenv [52]

:[51]
call.i instance_destroy(argc=0)
popz.v

:[52]
popenv [51]

:[53]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [55]

:[54]
push.v self.activetimer
pushi.e 15
cmp.i.v EQ
b [56]

:[55]
push.e 0

:[56]
bf [58]

:[57]
pushi.e 0
pop.v.i global.msc
pushi.e 55
pop.v.i global.typer
push.s "obj_storybattle_gen_370"@26536
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 187
conv.i.v
pushi.e 20
conv.i.v
pushi.e 30
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 33
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 784
conv.i.v
pushi.e 30
conv.i.v
pushi.e 60
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd1
pushi.e 16
pop.v.i self.con
pushi.e 140
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[58]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [60]

:[59]
pushi.e 0
pop.v.i global.msc
pushi.e 55
pop.v.i global.typer
push.s "obj_storybattle_gen_383"@26538
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 187
conv.i.v
pushi.e 20
conv.i.v
pushi.e 220
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon2
pushi.e 33
push.v self.blcon2
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 784
conv.i.v
pushi.e 30
conv.i.v
pushi.e 250
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd2
pushi.e 18
pop.v.i self.con
pushi.e 140
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[60]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [62]

:[61]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [63]

:[62]
push.e 0

:[63]
bf [66]

:[64]
push.v self.blconwd2
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
bf [66]

:[65]
push.s "obj_storybattle_gen_395"@26540
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 187
conv.i.v
pushi.e 20
conv.i.v
pushi.e 420
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon3
pushi.e 33
push.v self.blcon3
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 784
conv.i.v
pushi.e 30
conv.i.v
pushi.e 450
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd3
pushi.e 20
pop.v.i self.con

:[66]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [73]

:[67]
push.v self.blconwd3
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [73]

:[68]
pushi.e 1
pop.v.i self.off
pushi.e 784
pushenv [70]

:[69]
call.i instance_destroy(argc=0)
popz.v

:[70]
popenv [69]
pushi.e 187
pushenv [72]

:[71]
call.i instance_destroy(argc=0)
popz.v

:[72]
popenv [71]

:[73]
push.v self.con
pushi.e 25
cmp.i.v EQ
bf [75]

:[74]
push.v self.activetimer
pushi.e 15
cmp.i.v EQ
b [76]

:[75]
push.e 0

:[76]
bf [78]

:[77]
pushi.e 0
pop.v.i global.msc
pushi.e 55
pop.v.i global.typer
push.s "obj_storybattle_gen_421"@26542
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 187
conv.i.v
pushi.e 20
conv.i.v
pushi.e 50
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 33
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 784
conv.i.v
pushi.e 30
conv.i.v
pushi.e 80
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd1
pushi.e 26
pop.v.i self.con
pushi.e 70
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[78]
push.v self.con
pushi.e 27
cmp.i.v EQ
bf [80]

:[79]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [81]

:[80]
push.e 0

:[81]
bf [84]

:[82]
push.v self.blconwd1
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
bf [84]

:[83]
push.s "obj_storybattle_gen_433"@26544
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 187
conv.i.v
pushi.e 20
conv.i.v
pushi.e 400
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon2
pushi.e 33
push.v self.blcon2
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 784
conv.i.v
pushi.e 30
conv.i.v
pushi.e 430
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd2
pushi.e 28
pop.v.i self.con

:[84]
push.v self.con
pushi.e 28
cmp.i.v EQ
bf [91]

:[85]
push.v self.blconwd2
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [91]

:[86]
pushi.e 1
pop.v.i self.off
pushi.e 784
pushenv [88]

:[87]
call.i instance_destroy(argc=0)
popz.v

:[88]
popenv [87]
pushi.e 187
pushenv [90]

:[89]
call.i instance_destroy(argc=0)
popz.v

:[90]
popenv [89]

:[91]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [93]

:[92]
push.v self.activetimer
pushi.e 15
cmp.i.v EQ
b [94]

:[93]
push.e 0

:[94]
bf [96]

:[95]
pushi.e 0
pop.v.i global.msc
pushi.e 55
pop.v.i global.typer
push.s "obj_storybattle_gen_459"@26546
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 187
conv.i.v
pushi.e 20
conv.i.v
pushi.e 30
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 33
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 784
conv.i.v
pushi.e 30
conv.i.v
pushi.e 60
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd1
pushi.e 31
pop.v.i self.con
pushi.e 80
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[96]
push.v self.con
pushi.e 32
cmp.i.v EQ
bf [98]

:[97]
pushi.e 0
pop.v.i global.msc
pushi.e 55
pop.v.i global.typer
push.s "obj_storybattle_gen_472"@26548
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 187
conv.i.v
pushi.e 20
conv.i.v
pushi.e 220
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon2
pushi.e 33
push.v self.blcon2
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 784
conv.i.v
pushi.e 30
conv.i.v
pushi.e 250
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd2
pushi.e 33
pop.v.i self.con
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[98]
push.v self.con
pushi.e 34
cmp.i.v EQ
bf [100]

:[99]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [101]

:[100]
push.e 0

:[101]
bf [104]

:[102]
push.v self.blconwd2
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
bf [104]

:[103]
push.s "obj_storybattle_gen_484"@26550
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 187
conv.i.v
pushi.e 20
conv.i.v
pushi.e 420
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon3
pushi.e 33
push.v self.blcon3
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 784
conv.i.v
pushi.e 30
conv.i.v
pushi.e 450
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd3
pushi.e 35
pop.v.i self.con

:[104]
push.v self.con
pushi.e 35
cmp.i.v EQ
bf [111]

:[105]
push.v self.blconwd3
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [111]

:[106]
pushi.e 1
pop.v.i self.off
pushi.e 784
pushenv [108]

:[107]
call.i instance_destroy(argc=0)
popz.v

:[108]
popenv [107]
pushi.e 187
pushenv [110]

:[109]
call.i instance_destroy(argc=0)
popz.v

:[110]
popenv [109]

:[111]
push.v self.con
pushi.e 40
cmp.i.v EQ
bf [113]

:[112]
push.v self.activetimer
pushi.e 15
cmp.i.v EQ
b [114]

:[113]
push.e 0

:[114]
bf [116]

:[115]
pushi.e 0
pop.v.i global.msc
pushi.e 55
pop.v.i global.typer
push.s "obj_storybattle_gen_511"@26552
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 187
conv.i.v
pushi.e 20
conv.i.v
pushi.e 50
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 33
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 784
conv.i.v
pushi.e 30
conv.i.v
pushi.e 80
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd1
pushi.e 41
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[116]
push.v self.con
pushi.e 42
cmp.i.v EQ
bf [118]

:[117]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [119]

:[118]
push.e 0

:[119]
bf [122]

:[120]
push.v self.blconwd1
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
bf [122]

:[121]
push.s "obj_storybattle_gen_523"@26554
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 187
conv.i.v
pushi.e 20
conv.i.v
pushi.e 400
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon2
pushi.e 33
push.v self.blcon2
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 784
conv.i.v
pushi.e 30
conv.i.v
pushi.e 430
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd2
pushi.e 43
pop.v.i self.con

:[122]
push.v self.con
pushi.e 43
cmp.i.v EQ
bf [129]

:[123]
push.v self.blconwd2
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [129]

:[124]
pushi.e 784
pushenv [126]

:[125]
call.i instance_destroy(argc=0)
popz.v

:[126]
popenv [125]
pushi.e 187
pushenv [128]

:[127]
call.i instance_destroy(argc=0)
popz.v

:[128]
popenv [127]
pushi.e 44
pop.v.i self.con

:[129]
push.v self.con
pushi.e 44
cmp.i.v EQ
bf [131]

:[130]
pushi.e 0
pop.v.i global.msc
pushi.e 55
pop.v.i global.typer
push.s "obj_storybattle_gen_546"@26555
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 187
conv.i.v
pushi.e 20
conv.i.v
pushi.e 50
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 33
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 784
conv.i.v
pushi.e 30
conv.i.v
pushi.e 80
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd1
pushi.e 45
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[131]
push.v self.con
pushi.e 46
cmp.i.v EQ
bf [133]

:[132]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [134]

:[133]
push.e 0

:[134]
bf [137]

:[135]
push.v self.blconwd1
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
bf [137]

:[136]
push.s "obj_storybattle_gen_558"@26557
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 187
conv.i.v
pushi.e 20
conv.i.v
pushi.e 400
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon2
pushi.e 33
push.v self.blcon2
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 784
conv.i.v
pushi.e 30
conv.i.v
pushi.e 430
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd2
pushi.e 47
pop.v.i self.con

:[137]
push.v self.con
pushi.e 47
cmp.i.v EQ
bf [146]

:[138]
push.v self.blconwd2
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [146]

:[139]
pushi.e 784
pushenv [141]

:[140]
call.i instance_destroy(argc=0)
popz.v

:[141]
popenv [140]
pushi.e 187
pushenv [143]

:[142]
call.i instance_destroy(argc=0)
popz.v

:[143]
popenv [142]
pushi.e 188
pushenv [145]

:[144]
call.i instance_destroy(argc=0)
popz.v

:[145]
popenv [144]
pushi.e 1
pop.v.i self.off

:[146]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [148]

:[147]
push.v self.activetimer
pushi.e 15
cmp.i.v EQ
b [149]

:[148]
push.e 0

:[149]
bf [151]

:[150]
pushi.e 0
pop.v.i global.msc
pushi.e 55
pop.v.i global.typer
push.s "obj_storybattle_gen_583"@26559
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 188
conv.i.v
pushi.e 20
conv.i.v
pushi.e 190
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 784
conv.i.v
pushi.e 30
conv.i.v
pushi.e 230
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd1
pushi.e 51
pop.v.i self.con
pushi.e 140
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[151]
push.v self.con
pushi.e 52
cmp.i.v EQ
bf [153]

:[152]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [154]

:[153]
push.e 0

:[154]
bf [157]

:[155]
push.v self.blconwd1
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
bf [157]

:[156]
push.s "obj_storybattle_gen_594"@26561
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 187
conv.i.v
pushi.e 130
conv.i.v
pushi.e 220
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon2
pushi.e 39
push.v self.blcon2
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 784
conv.i.v
pushi.e 140
conv.i.v
pushi.e 260
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd2
pushi.e 47
pop.v.i self.con

:[157]
push.v self.con
pushi.e 60
cmp.i.v EQ
bf [159]

:[158]
push.v self.activetimer
pushi.e 15
cmp.i.v EQ
b [160]

:[159]
push.e 0

:[160]
bf [162]

:[161]
pushi.e 0
pop.v.i global.msc
pushi.e 55
pop.v.i global.typer
push.s "obj_storybattle_gen_609"@26563
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 187
conv.i.v
pushi.e 10
conv.i.v
pushi.e 30
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 33
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 784
conv.i.v
pushi.e 20
conv.i.v
pushi.e 60
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd1
pushi.e 61
pop.v.i self.con
pushi.e 140
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[162]
push.v self.con
pushi.e 62
cmp.i.v EQ
bf [164]

:[163]
pushi.e 0
pop.v.i global.msc
pushi.e 55
pop.v.i global.typer
push.s "obj_storybattle_gen_622"@26565
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 187
conv.i.v
pushi.e 10
conv.i.v
pushi.e 220
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon2
pushi.e 33
push.v self.blcon2
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 784
conv.i.v
pushi.e 20
conv.i.v
pushi.e 250
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd2
pushi.e 63
pop.v.i self.con
pushi.e 110
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[164]
push.v self.con
pushi.e 64
cmp.i.v EQ
bf [166]

:[165]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [167]

:[166]
push.e 0

:[167]
bf [170]

:[168]
push.v self.blconwd2
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
bf [170]

:[169]
push.s "obj_storybattle_gen_634"@26567
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 187
conv.i.v
pushi.e 10
conv.i.v
pushi.e 420
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon3
pushi.e 33
push.v self.blcon3
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 784
conv.i.v
pushi.e 20
conv.i.v
pushi.e 450
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd3
pushi.e 20
pop.v.i self.con

:[170]
push.v self.con
pushi.e 70
cmp.i.v EQ
bf [172]

:[171]
push.v self.activetimer
pushi.e 15
cmp.i.v EQ
b [173]

:[172]
push.e 0

:[173]
bf [175]

:[174]
pushi.e 0
pop.v.i global.msc
pushi.e 55
pop.v.i global.typer
push.s "obj_storybattle_gen_649"@26569
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 187
conv.i.v
pushi.e 10
conv.i.v
pushi.e 30
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 33
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 784
conv.i.v
pushi.e 20
conv.i.v
pushi.e 60
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd1
pushi.e 71
pop.v.i self.con
pushi.e 110
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[175]
push.v self.con
pushi.e 72
cmp.i.v EQ
bf [177]

:[176]
pushi.e 0
pop.v.i global.msc
pushi.e 55
pop.v.i global.typer
push.s "obj_storybattle_gen_662"@26571
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 187
conv.i.v
pushi.e 10
conv.i.v
pushi.e 220
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon2
pushi.e 33
push.v self.blcon2
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 784
conv.i.v
pushi.e 20
conv.i.v
pushi.e 250
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd2
pushi.e 73
pop.v.i self.con
pushi.e 110
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[177]
push.v self.con
pushi.e 74
cmp.i.v EQ
bf [179]

:[178]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [180]

:[179]
push.e 0

:[180]
bf [183]

:[181]
push.v self.blconwd2
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
bf [183]

:[182]
push.s "obj_storybattle_gen_674"@26573
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 187
conv.i.v
pushi.e 10
conv.i.v
pushi.e 420
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon3
pushi.e 33
push.v self.blcon3
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 784
conv.i.v
pushi.e 20
conv.i.v
pushi.e 450
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd3
pushi.e 20
pop.v.i self.con

:[183]
push.v self.con
pushi.e 80
cmp.i.v EQ
bf [185]

:[184]
push.v self.activetimer
pushi.e 15
cmp.i.v EQ
b [186]

:[185]
push.e 0

:[186]
bf [188]

:[187]
pushi.e 0
pop.v.i global.msc
pushi.e 55
pop.v.i global.typer
push.s "obj_storybattle_gen_689"@26575
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 187
conv.i.v
pushi.e 10
conv.i.v
pushi.e 30
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 33
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 784
conv.i.v
pushi.e 20
conv.i.v
pushi.e 60
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd1
pushi.e 81
pop.v.i self.con
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[188]
push.v self.con
pushi.e 82
cmp.i.v EQ
bf [190]

:[189]
pushi.e 0
pop.v.i global.msc
pushi.e 55
pop.v.i global.typer
push.s "obj_storybattle_gen_702"@26577
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 187
conv.i.v
pushi.e 10
conv.i.v
pushi.e 220
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon2
pushi.e 33
push.v self.blcon2
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 784
conv.i.v
pushi.e 20
conv.i.v
pushi.e 250
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd2
pushi.e 83
pop.v.i self.con
pushi.e 120
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[190]
push.v self.con
pushi.e 84
cmp.i.v EQ
bf [192]

:[191]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [193]

:[192]
push.e 0

:[193]
bf [196]

:[194]
push.v self.blconwd2
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
bf [196]

:[195]
push.s "obj_storybattle_gen_714"@26579
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 187
conv.i.v
pushi.e 10
conv.i.v
pushi.e 420
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon3
pushi.e 33
push.v self.blcon3
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 784
conv.i.v
pushi.e 20
conv.i.v
pushi.e 450
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd3
pushi.e 20
pop.v.i self.con

:[196]
push.v self.con
pushi.e 90
cmp.i.v EQ
bf [198]

:[197]
push.v self.activetimer
pushi.e 15
cmp.i.v EQ
b [199]

:[198]
push.e 0

:[199]
bf [201]

:[200]
pushi.e 0
pop.v.i global.msc
pushi.e 55
pop.v.i global.typer
push.s "obj_storybattle_gen_727"@26581
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 187
conv.i.v
pushi.e 10
conv.i.v
pushi.e 30
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 33
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 784
conv.i.v
pushi.e 20
conv.i.v
pushi.e 60
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd1
pushi.e 91
pop.v.i self.con
pushi.e 120
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[201]
push.v self.con
pushi.e 92
cmp.i.v EQ
bf [203]

:[202]
pushi.e 0
pop.v.i global.msc
pushi.e 55
pop.v.i global.typer
push.s "obj_storybattle_gen_740"@26583
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 187
conv.i.v
pushi.e 10
conv.i.v
pushi.e 220
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon2
pushi.e 33
push.v self.blcon2
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 784
conv.i.v
pushi.e 20
conv.i.v
pushi.e 250
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd2
pushi.e 93
pop.v.i self.con
pushi.e 100
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[203]
push.v self.con
pushi.e 94
cmp.i.v EQ
bf [205]

:[204]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [206]

:[205]
push.e 0

:[206]
bf [209]

:[207]
push.v self.blconwd2
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
bf [209]

:[208]
push.s "obj_storybattle_gen_752"@26585
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 187
conv.i.v
pushi.e 10
conv.i.v
pushi.e 420
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon3
pushi.e 33
push.v self.blcon3
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 784
conv.i.v
pushi.e 20
conv.i.v
pushi.e 450
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd3
pushi.e 20
pop.v.i self.con

:[209]
push.v self.con
pushi.e 100
cmp.i.v EQ
bf [211]

:[210]
push.v self.activetimer
pushi.e 15
cmp.i.v EQ
b [212]

:[211]
push.e 0

:[212]
bf [214]

:[213]
pushi.e 0
pop.v.i global.msc
pushi.e 55
pop.v.i global.typer
push.s "obj_storybattle_gen_767"@26587
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 188
conv.i.v
pushi.e 20
conv.i.v
pushi.e 190
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 784
conv.i.v
pushi.e 30
conv.i.v
pushi.e 230
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd1
pushi.e 101
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[214]
push.v self.con
pushi.e 102
cmp.i.v EQ
bf [216]

:[215]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [217]

:[216]
push.e 0

:[217]
bf [220]

:[218]
push.v self.blconwd1
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
bf [220]

:[219]
push.s "obj_storybattle_gen_778"@26589
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 187
conv.i.v
pushi.e 130
conv.i.v
pushi.e 220
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon2
pushi.e 39
push.v self.blcon2
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 784
conv.i.v
pushi.e 140
conv.i.v
pushi.e 260
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd2
pushi.e 103
pop.v.i self.con

:[220]
push.v self.con
pushi.e 103
cmp.i.v EQ
bf [229]

:[221]
push.v self.blconwd2
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [229]

:[222]
push.v self.blcon2
conv.v.i
pushenv [224]

:[223]
call.i instance_destroy(argc=0)
popz.v

:[224]
popenv [223]
pushi.e 784
pushenv [226]

:[225]
call.i instance_destroy(argc=0)
popz.v

:[226]
popenv [225]
pushi.e 188
pushenv [228]

:[227]
call.i instance_destroy(argc=0)
popz.v

:[228]
popenv [227]
pushi.e 104
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[229]
push.v self.con
pushi.e 105
cmp.i.v EQ
bf [231]

:[230]
pushi.e 0
pop.v.i global.msc
pushi.e 55
pop.v.i global.typer
push.s "obj_storybattle_gen_805"@26591
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 188
conv.i.v
pushi.e 20
conv.i.v
pushi.e 190
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 784
conv.i.v
pushi.e 30
conv.i.v
pushi.e 230
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd1
pushi.e 106
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[231]
push.v self.con
pushi.e 107
cmp.i.v EQ
bf [233]

:[232]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [234]

:[233]
push.e 0

:[234]
bf [237]

:[235]
push.v self.blconwd1
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
bf [237]

:[236]
push.s "obj_storybattle_gen_816"@26593
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 187
conv.i.v
pushi.e 130
conv.i.v
pushi.e 220
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon2
pushi.e 39
push.v self.blcon2
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 784
conv.i.v
pushi.e 140
conv.i.v
pushi.e 260
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd2
pushi.e 47
pop.v.i self.con

:[237]
push.v self.con
pushi.e 110
cmp.i.v EQ
bf [239]

:[238]
push.v self.activetimer
pushi.e 15
cmp.i.v EQ
b [240]

:[239]
push.e 0

:[240]
bf [242]

:[241]
pushi.e 0
pop.v.i global.msc
pushi.e 55
pop.v.i global.typer
push.s "obj_storybattle_gen_832"@26595
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 187
conv.i.v
pushi.e 10
conv.i.v
pushi.e 30
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 33
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 784
conv.i.v
pushi.e 20
conv.i.v
pushi.e 60
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd1
pushi.e 111
pop.v.i self.con
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[242]
push.v self.con
pushi.e 112
cmp.i.v EQ
bf [244]

:[243]
pushi.e 0
pop.v.i global.msc
pushi.e 55
pop.v.i global.typer
push.s "obj_storybattle_gen_845"@26597
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 187
conv.i.v
pushi.e 10
conv.i.v
pushi.e 220
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon2
pushi.e 33
push.v self.blcon2
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 784
conv.i.v
pushi.e 20
conv.i.v
pushi.e 250
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd2
pushi.e 113
pop.v.i self.con
pushi.e 100
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[244]
push.v self.con
pushi.e 114
cmp.i.v EQ
bf [246]

:[245]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [247]

:[246]
push.e 0

:[247]
bf [250]

:[248]
push.v self.blconwd2
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
bf [250]

:[249]
push.s "obj_storybattle_gen_857"@26599
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 187
conv.i.v
pushi.e 10
conv.i.v
pushi.e 420
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon3
pushi.e 33
push.v self.blcon3
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 784
conv.i.v
pushi.e 20
conv.i.v
pushi.e 450
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd3
pushi.e 20
pop.v.i self.con

:[250]
push.v self.con
pushi.e 120
cmp.i.v EQ
bf [252]

:[251]
push.v self.activetimer
pushi.e 15
cmp.i.v EQ
b [253]

:[252]
push.e 0

:[253]
bf [255]

:[254]
pushi.e 0
pop.v.i global.msc
pushi.e 55
pop.v.i global.typer
push.s "obj_storybattle_gen_872"@26601
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 187
conv.i.v
pushi.e 10
conv.i.v
pushi.e 30
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 33
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 784
conv.i.v
pushi.e 20
conv.i.v
pushi.e 60
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd1
pushi.e 121
pop.v.i self.con
pushi.e 80
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[255]
push.v self.con
pushi.e 122
cmp.i.v EQ
bf [257]

:[256]
pushi.e 0
pop.v.i global.msc
pushi.e 55
pop.v.i global.typer
push.s "obj_storybattle_gen_885"@26603
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 187
conv.i.v
pushi.e 10
conv.i.v
pushi.e 220
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon2
pushi.e 33
push.v self.blcon2
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 784
conv.i.v
pushi.e 20
conv.i.v
pushi.e 250
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd2
pushi.e 123
pop.v.i self.con
pushi.e 120
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[257]
push.v self.con
pushi.e 124
cmp.i.v EQ
bf [259]

:[258]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [260]

:[259]
push.e 0

:[260]
bf [263]

:[261]
push.v self.blconwd2
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
bf [263]

:[262]
push.s "obj_storybattle_gen_897"@26605
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 187
conv.i.v
pushi.e 10
conv.i.v
pushi.e 420
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon3
pushi.e 33
push.v self.blcon3
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 784
conv.i.v
pushi.e 20
conv.i.v
pushi.e 450
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd3
pushi.e 20
pop.v.i self.con

:[263]
push.v self.con
pushi.e 130
cmp.i.v EQ
bf [265]

:[264]
push.v self.activetimer
pushi.e 15
cmp.i.v EQ
b [266]

:[265]
push.e 0

:[266]
bf [268]

:[267]
pushi.e 0
pop.v.i global.msc
pushi.e 55
pop.v.i global.typer
push.s "obj_storybattle_gen_911"@26607
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 187
conv.i.v
pushi.e 10
conv.i.v
pushi.e 30
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 33
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 784
conv.i.v
pushi.e 20
conv.i.v
pushi.e 60
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd1
pushi.e 131
pop.v.i self.con
pushi.e 110
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[268]
push.v self.con
pushi.e 132
cmp.i.v EQ
bf [270]

:[269]
pushi.e 0
pop.v.i global.msc
pushi.e 55
pop.v.i global.typer
push.s "obj_storybattle_gen_924"@26609
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 187
conv.i.v
pushi.e 10
conv.i.v
pushi.e 220
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon2
pushi.e 33
push.v self.blcon2
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 784
conv.i.v
pushi.e 20
conv.i.v
pushi.e 250
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd2
pushi.e 133
pop.v.i self.con
pushi.e 100
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[270]
push.v self.con
pushi.e 134
cmp.i.v EQ
bf [272]

:[271]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [273]

:[272]
push.e 0

:[273]
bf [276]

:[274]
push.v self.blconwd2
conv.v.i
push.v [stacktop]self.halt
pushi.e 0
cmp.i.v NEQ
bf [276]

:[275]
push.s "obj_storybattle_gen_936"@26611
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 187
conv.i.v
pushi.e 10
conv.i.v
pushi.e 420
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon3
pushi.e 33
push.v self.blcon3
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 784
conv.i.v
pushi.e 20
conv.i.v
pushi.e 450
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd3
pushi.e 20
pop.v.i self.con

:[276]
push.v self.con
pushi.e 140
cmp.i.v EQ
bf [278]

:[277]
push.v self.activetimer
pushi.e 15
cmp.i.v EQ
b [279]

:[278]
push.e 0

:[279]
bf [281]

:[280]
pushi.e 0
pop.v.i global.msc
pushi.e 55
pop.v.i global.typer
push.s "obj_storybattle_gen_951"@26613
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 187
conv.i.v
pushi.e 20
conv.i.v
pushi.e 220
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon2
pushi.e 33
push.v self.blcon2
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 784
conv.i.v
pushi.e 30
conv.i.v
pushi.e 250
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd2
pushi.e 141
pop.v.i self.con

:[281]
push.v self.con
pushi.e 141
cmp.i.v EQ
bf [288]

:[282]
push.v self.blconwd2
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [288]

:[283]
pushi.e 784
pushenv [285]

:[284]
call.i instance_destroy(argc=0)
popz.v

:[285]
popenv [284]
push.v self.blcon2
conv.v.i
pushenv [287]

:[286]
call.i instance_destroy(argc=0)
popz.v

:[287]
popenv [286]
push.s "obj_storybattle_gen_965"@26615
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 187
conv.i.v
pushi.e 20
conv.i.v
pushi.e 30
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 33
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 784
conv.i.v
pushi.e 30
conv.i.v
pushi.e 60
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd1
push.s "obj_storybattle_gen_971"@26617
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 187
conv.i.v
pushi.e 20
conv.i.v
pushi.e 220
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon2
pushi.e 33
push.v self.blcon2
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 784
conv.i.v
pushi.e 30
conv.i.v
pushi.e 250
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd2
push.s "obj_storybattle_gen_976"@26619
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 187
conv.i.v
pushi.e 20
conv.i.v
pushi.e 420
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon3
pushi.e 33
push.v self.blcon3
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 784
conv.i.v
pushi.e 30
conv.i.v
pushi.e 450
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd3
pushi.e 142
pop.v.i self.con

:[288]
push.v self.con
pushi.e 142
cmp.i.v EQ
bf [295]

:[289]
push.v self.blconwd3
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [295]

:[290]
pushi.e 187
pushenv [292]

:[291]
call.i instance_destroy(argc=0)
popz.v

:[292]
popenv [291]
pushi.e 784
pushenv [294]

:[293]
call.i instance_destroy(argc=0)
popz.v

:[294]
popenv [293]
pushi.e 1
pop.v.i self.off
pushi.e 143
pop.v.i self.con

:[295]
push.v self.con
pushi.e 150
cmp.i.v EQ
bf [297]

:[296]
push.v self.activetimer
pushi.e 15
cmp.i.v EQ
b [298]

:[297]
push.e 0

:[298]
bf [300]

:[299]
pushi.e 0
pop.v.i global.msc
pushi.e 55
pop.v.i global.typer
push.s "obj_storybattle_gen_1004"@26621
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 188
conv.i.v
pushi.e 15
conv.i.v
pushi.e 170
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 784
conv.i.v
pushi.e 25
conv.i.v
pushi.e 210
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd1
pushi.e 151
pop.v.i self.con
pushi.e 85
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[300]
push.v self.con
pushi.e 152
cmp.i.v EQ
bf [302]

:[301]
pushi.e 153
pop.v.i self.con
push.s "obj_storybattle_gen_1014"@26623
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 187
conv.i.v
pushi.e 120
conv.i.v
pushi.e 300
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon2
pushi.e 784
conv.i.v
pushi.e 130
conv.i.v
pushi.e 325
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd2
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[302]
push.v self.con
pushi.e 154
cmp.i.v EQ
bf [304]

:[303]
pushi.e 155
pop.v.i self.con
push.s "obj_storybattle_gen_1023"@26625
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 187
conv.i.v
pushi.e 120
conv.i.v
pushi.e 530
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon3
pushi.e 784
conv.i.v
pushi.e 130
conv.i.v
pushi.e 555
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd3

:[304]
push.v self.con
pushi.e 155
cmp.i.v EQ
bf [313]

:[305]
push.v self.blconwd3
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [313]

:[306]
pushi.e 188
pushenv [308]

:[307]
call.i instance_destroy(argc=0)
popz.v

:[308]
popenv [307]
pushi.e 187
pushenv [310]

:[309]
call.i instance_destroy(argc=0)
popz.v

:[310]
popenv [309]
pushi.e 784
pushenv [312]

:[311]
call.i instance_destroy(argc=0)
popz.v

:[312]
popenv [311]
pushi.e 1
pop.v.i self.off
pushi.e 156
pop.v.i self.con

:[313]
push.v self.con
pushi.e 160
cmp.i.v EQ
bf [315]

:[314]
push.v self.activetimer
pushi.e 15
cmp.i.v EQ
b [316]

:[315]
push.e 0

:[316]
bf [318]

:[317]
pushi.e 0
pop.v.i global.msc
pushi.e 55
pop.v.i global.typer
pushi.e 161
pop.v.i self.con
push.s "obj_storybattle_gen_1047"@26627
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 187
conv.i.v
pushi.e 20
conv.i.v
pushi.e 220
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon2
pushi.e 33
push.v self.blcon2
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 784
conv.i.v
pushi.e 30
conv.i.v
pushi.e 250
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd2

:[318]
push.v self.con
pushi.e 161
cmp.i.v EQ
bf [323]

:[319]
push.v self.blconwd2
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [323]

:[320]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "Tale"@49434
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v
pushi.e 162
pop.v.i self.con
push.v self.blcon2
conv.v.i
pushenv [322]

:[321]
call.i instance_destroy(argc=0)
popz.v

:[322]
popenv [321]
pushi.e 1
pop.v.i self.off

:[323]
push.v self.con
pushi.e 300
cmp.i.v EQ
bf [325]

:[324]
pushi.e 98
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_storybattle_gen_1073"@26629
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1074"@26631
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1075"@26633
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1076"@26635
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1077"@26637
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1078"@26639
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.v self.floweyy
pushi.e 10
sub.i.v
push.v self.floweyx
pushi.e 90
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 301
pop.v.i self.con

:[325]
push.v self.con
pushi.e 301
cmp.i.v EQ
bf [327]

:[326]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [328]

:[327]
push.e 0

:[328]
bf [330]

:[329]
pushi.e 1
pop.v.i self.off
pushi.e 302
pop.v.i self.con

:[330]
push.v self.con
pushi.e 305
cmp.i.v EQ
bf [332]

:[331]
pushi.e 98
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_storybattle_gen_1093"@26641
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1094"@26643
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1095"@26645
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1096"@26647
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1097"@26649
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1098"@26651
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.v self.floweyy
pushi.e 10
sub.i.v
push.v self.floweyx
pushi.e 90
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 301
pop.v.i self.con

:[332]
push.v self.con
pushi.e 310
cmp.i.v EQ
bf [334]

:[333]
pushi.e 98
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_storybattle_gen_1107"@26653
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1108"@26655
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1109"@26657
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1110"@26659
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1111"@26661
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1112"@26663
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1113"@26665
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1114"@26667
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.v self.floweyy
pushi.e 10
sub.i.v
push.v self.floweyx
pushi.e 90
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 301
pop.v.i self.con

:[334]
push.v self.con
pushi.e 315
cmp.i.v EQ
bf [336]

:[335]
pushi.e 98
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_storybattle_gen_1123"@26669
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1124"@26671
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1125"@26673
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1126"@26675
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1127"@26677
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1128"@26679
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1129"@26681
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1130"@26683
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1131"@26685
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1132"@26686
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1133"@26688
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1134"@26690
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.v self.floweyy
pushi.e 10
sub.i.v
push.v self.floweyx
pushi.e 90
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 301
pop.v.i self.con

:[336]
push.v self.con
pushi.e 320
cmp.i.v EQ
bf [338]

:[337]
pushi.e 98
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_storybattle_gen_1144"@26692
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1145"@26694
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1146"@26696
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1147"@26698
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1148"@26700
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1149"@26702
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1150"@26704
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1151"@26706
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1152"@26708
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1153"@26710
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1154"@26712
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1155"@26714
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1156"@26716
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.v self.floweyy
pushi.e 10
sub.i.v
push.v self.floweyx
pushi.e 90
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 301
pop.v.i self.con

:[338]
push.v self.con
pushi.e 325
cmp.i.v EQ
bf [340]

:[339]
pushi.e 98
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_storybattle_gen_1165"@26718
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1166"@26720
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1167"@26722
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1168"@26724
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1169"@26726
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1170"@26727
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1171"@26729
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1172"@26731
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1173"@26733
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1174"@26735
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.v self.floweyy
pushi.e 10
sub.i.v
push.v self.floweyx
pushi.e 90
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 301
pop.v.i self.con

:[340]
push.v self.con
pushi.e 330
cmp.i.v EQ
bf [342]

:[341]
pushi.e 98
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_storybattle_gen_1183"@26737
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1184"@26739
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1185"@26741
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1186"@26743
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1187"@26745
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1188"@26747
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1189"@26749
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.v self.floweyy
pushi.e 10
sub.i.v
push.v self.floweyx
pushi.e 90
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 301
pop.v.i self.con

:[342]
push.v self.con
pushi.e 335
cmp.i.v EQ
bf [344]

:[343]
pushi.e 98
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_storybattle_gen_1197"@26751
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1198"@26753
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1199"@26755
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1200"@26757
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1201"@26759
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1202"@26761
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1203"@26763
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1204"@26765
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1205"@26767
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1206"@26769
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.v self.floweyy
pushi.e 10
sub.i.v
push.v self.floweyx
pushi.e 90
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 301
pop.v.i self.con

:[344]
push.v self.con
pushi.e 340
cmp.i.v EQ
bf [346]

:[345]
pushi.e 98
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_storybattle_gen_1217"@26771
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1218"@26773
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1219"@26775
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1220"@26777
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1221"@26779
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1222"@26781
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1223"@26783
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1224"@26785
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1225"@26787
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.v self.floweyy
pushi.e 10
sub.i.v
push.v self.floweyx
pushi.e 90
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 301
pop.v.i self.con

:[346]
push.v self.con
pushi.e 345
cmp.i.v EQ
bf [348]

:[347]
pushi.e 98
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_storybattle_gen_1235"@26789
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1236"@26791
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1237"@26793
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1238"@26795
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1239"@26797
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1240"@26799
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1241"@26801
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1242"@26803
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1243"@26805
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.v self.floweyy
pushi.e 10
sub.i.v
push.v self.floweyx
pushi.e 90
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 301
pop.v.i self.con

:[348]
push.v self.con
pushi.e 350
cmp.i.v EQ
bf [350]

:[349]
pushi.e 98
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_storybattle_gen_1252"@26807
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1253"@26809
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1254"@26811
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1255"@26813
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1256"@26815
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1257"@26817
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1258"@26819
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.v self.floweyy
pushi.e 10
sub.i.v
push.v self.floweyx
pushi.e 90
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 301
pop.v.i self.con

:[350]
push.v self.con
pushi.e 355
cmp.i.v EQ
bf [352]

:[351]
pushi.e 98
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_storybattle_gen_1267"@26821
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1268"@26823
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1269"@26825
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1270"@26827
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1271"@26829
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1272"@26831
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1273"@26833
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1274"@26835
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1275"@26837
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.v self.floweyy
pushi.e 10
sub.i.v
push.v self.floweyx
pushi.e 90
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 301
pop.v.i self.con

:[352]
push.v self.con
pushi.e 360
cmp.i.v EQ
bf [354]

:[353]
pushi.e 98
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_storybattle_gen_1286"@26839
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1287"@26841
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1288"@26843
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1289"@26845
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1290"@26847
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1291"@26848
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1292"@26850
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1293"@26852
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1294"@26854
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1295"@26856
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1296"@26858
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1297"@26860
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.v self.floweyy
pushi.e 10
sub.i.v
push.v self.floweyx
pushi.e 90
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 301
pop.v.i self.con

:[354]
push.v self.con
pushi.e 365
cmp.i.v EQ
bf [356]

:[355]
pushi.e 98
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_storybattle_gen_1307"@26862
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1308"@26864
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1309"@26866
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1310"@26868
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1311"@26869
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1312"@26871
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1313"@26873
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1314"@26875
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.v self.floweyy
pushi.e 10
sub.i.v
push.v self.floweyx
pushi.e 90
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 301
pop.v.i self.con

:[356]
push.v self.con
pushi.e 370
cmp.i.v EQ
bf [358]

:[357]
pushi.e 98
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_storybattle_gen_1324"@26877
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1325"@26879
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1326"@26881
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1327"@26883
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1328"@26885
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1329"@26887
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.v self.floweyy
pushi.e 10
sub.i.v
push.v self.floweyx
pushi.e 90
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 301
pop.v.i self.con

:[358]
push.v self.con
pushi.e 375
cmp.i.v EQ
bf [360]

:[359]
pushi.e 98
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_storybattle_gen_1339"@26889
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1340"@26891
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1341"@26893
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1342"@26895
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1343"@26897
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.v self.floweyy
pushi.e 10
sub.i.v
push.v self.floweyx
pushi.e 90
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 301
pop.v.i self.con

:[360]
push.v self.con
pushi.e 380
cmp.i.v EQ
bf [362]

:[361]
pushi.e 98
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_storybattle_gen_1353"@26899
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1354"@26901
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1355"@26903
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1356"@26905
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.v self.floweyy
pushi.e 10
sub.i.v
push.v self.floweyx
pushi.e 90
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 381
pop.v.i self.con

:[362]
push.v self.con
pushi.e 381
cmp.i.v EQ
bf [364]

:[363]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [365]

:[364]
push.e 0

:[365]
bf [371]

:[366]
push.v self.con
pushi.e 381
cmp.i.v EQ
bf [368]

:[367]
push.v 784.stringno
pushi.e 1
cmp.i.v EQ
b [369]

:[368]
push.e 0

:[369]
bf [371]

:[370]
pushglb.v global.currentsong
call.i caster_free(argc=1)
popz.v

:[371]
push.v self.con
pushi.e 381
cmp.i.v EQ
bf [373]

:[372]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [374]

:[373]
push.e 0

:[374]
bf [376]

:[375]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 382
pop.v.i self.con
pushi.e 45
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[376]
push.v self.con
pushi.e 383
cmp.i.v EQ
bf [378]

:[377]
push.s "music/prebattle1.ogg"@2615
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
push.d 0.22
conv.d.v
push.d 0.9
conv.d.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
pushi.e 1
pop.v.i self.shake
pushi.e 99
pop.v.i global.typer
push.s "obj_storybattle_gen_1383"@26906
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1384"@26908
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1385"@26910
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1386"@26912
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1387"@26913
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1388"@26915
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1389"@26916
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1390"@26918
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1391"@26920
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.v self.floweyy
pushi.e 10
sub.i.v
push.v self.floweyx
pushi.e 90
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 384
pop.v.i self.con

:[378]
push.v self.con
pushi.e 384
cmp.i.v EQ
bf [380]

:[379]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [381]

:[380]
push.e 0

:[381]
bf [384]

:[382]
push.v 784.stringno
pushi.e 5
cmp.i.v EQ
bf [384]

:[383]
pushi.e 10
pop.v.i global.faceemotion

:[384]
push.v self.con
pushi.e 384
cmp.i.v EQ
bf [386]

:[385]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [387]

:[386]
push.e 0

:[387]
bf [389]

:[388]
pushi.e 1
pop.v.i self.off

:[389]
push.v self.con
pushi.e 390
cmp.i.v EQ
bf [end]

:[390]
push.d 0.75
pop.v.d self.shake
pushi.e 99
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_storybattle_gen_1412"@26922
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1413"@26924
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1414"@26926
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1415"@26928
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1416"@26929
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1417"@26931
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1418"@26933
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_storybattle_gen_1419"@26935
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.v self.floweyy
pushi.e 10
sub.i.v
push.v self.floweyx
pushi.e 90
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e 301
pop.v.i self.con

:[end]