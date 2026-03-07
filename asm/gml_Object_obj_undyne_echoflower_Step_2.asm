.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1119
conv.i.v
pushi.e 80
conv.i.v
pushi.e 520
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.undyne
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.direction
push.v self.undyne
conv.v.i
push.v [stacktop]self.rsprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 1117
conv.i.v
pushi.e 60
conv.i.v
pushi.e 730
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mkid
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 2
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 2
pop.v.i 1101.glowyes
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i 1576.cutscene

:[5]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1
pop.v.i global.interact
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_xview
pushi.e 5
sub.i.v
pop.i.v [array]self.view_xview

:[7]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [9]

:[8]
pushi.e 3
pop.v.i global.facing
pushi.e 4
pop.v.i self.con
pushi.e 80
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[9]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [11]

:[10]
pushi.e 1
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 0.2
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 6
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[11]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [13]

:[12]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 8
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[13]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [15]

:[14]
pushi.e 1
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 0.2
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 10
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[15]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [17]

:[16]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 12
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[17]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [19]

:[18]
pushi.e 37
pop.v.i global.typer
pushi.e 621
pop.v.i global.msc
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 14
pop.v.i self.con

:[19]
push.v self.con
pushi.e 14
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
pushi.e 1
pop.v.i global.interact
pushi.e 15
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[24]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [26]

:[25]
pushi.e 1
pop.v.i global.interact
pushi.e 1514
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 47
conv.i.v
call.i snd_play(argc=1)
popz.v
push.d 15.1
pop.v.d self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[26]
push.v self.con
push.d 16.1
cmp.d.v EQ
bf [28]

:[27]
pushi.e 1513
conv.i.v
push.v self.undyne
conv.v.i
push.v [stacktop]self.y
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
call.i scr_marker(argc=3)
pop.v.v self.rushf
pushi.e 0
push.v self.rushf
conv.v.i
pop.v.i [stacktop]self.image_alpha
pushi.e 4000
push.v self.rushf
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 13
conv.i.v
call.i snd_play(argc=1)
popz.v
push.d 15.2
pop.v.d self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[28]
push.v self.con
push.d 15.2
cmp.d.v EQ
bf [33]

:[29]
push.v self.rushf
conv.v.i
pushenv [32]

:[30]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [32]

:[31]
push.v self.image_alpha
push.d 0.05
add.d.v
pop.v.v self.image_alpha

:[32]
popenv [30]

:[33]
push.v self.con
push.d 16.2
cmp.d.v EQ
bf [35]

:[34]
pushi.e 18
pop.v.i self.con

:[35]
push.v self.con
pushi.e 18
cmp.i.v EQ
bf [39]

:[36]
push.v self.rushf
conv.v.i
pushenv [38]

:[37]
call.i instance_destroy(argc=0)
popz.v

:[38]
popenv [37]
pushi.e 1513
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 0.2
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
push.d 17.1
pop.v.d self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[39]
push.v self.con
push.d 18.1
cmp.d.v EQ
bf [41]

:[40]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.d 17.2
pop.v.d self.con

:[41]
push.v self.con
push.d 18.2
cmp.d.v EQ
bf [43]

:[42]
pushi.e 3
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 17.3
pop.v.d self.con
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 3
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.fun
push.d 0.5
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 28
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[43]
push.v self.con
push.d 18.3
cmp.d.v EQ
bf [45]

:[44]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
push.d 17.4
pop.v.d self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[45]
push.v self.con
push.d 18.4
cmp.d.v EQ
bf [47]

:[46]
pushi.e 200
pop.v.i global.battlegroup
pushi.e 143
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.b
pushi.e 4
push.v self.b
conv.v.i
pop.v.i [stacktop]self.claptimer
pushi.e 20
pop.v.i self.con

:[47]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [49]

:[48]
pushi.e 143
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
pushi.e 1
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 4
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 22
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 21
pop.v.i self.con
pushi.e 11
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[52]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [54]

:[53]
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_undyne_echoflower_299"@28507
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_regulartext(argc=0)
popz.v
pushi.e 23
pop.v.i self.con
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.vspeed
push.d 0.2
push.v self.mkid
conv.v.i
pop.v.d [stacktop]self.image_speed
push.v self.mkid
conv.v.i
push.v [stacktop]self.dtsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[54]
push.v self.con
pushi.e 23
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
bf [59]

:[58]
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.image_speed
push.v self.mkid
conv.v.i
push.v [stacktop]self.dsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 24
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[59]
push.v self.con
pushi.e 25
cmp.i.v EQ
bf [61]

:[60]
push.v self.mkid
conv.v.i
push.v [stacktop]self.lsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 26
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[61]
push.v self.con
pushi.e 27
cmp.i.v EQ
bf [63]

:[62]
push.v self.mkid
conv.v.i
push.v [stacktop]self.rsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 28
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[63]
push.v self.con
pushi.e 29
cmp.i.v EQ
bf [65]

:[64]
push.v self.mkid
conv.v.i
push.v [stacktop]self.lsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 30
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[65]
push.v self.con
pushi.e 31
cmp.i.v EQ
bf [67]

:[66]
push.v self.mkid
conv.v.i
push.v [stacktop]self.rtsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 32
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[67]
push.v self.con
pushi.e 33
cmp.i.v EQ
bf [69]

:[68]
push.d 0.2
push.v self.mkid
conv.v.i
pop.v.d [stacktop]self.image_speed
push.s "obj_undyne_echoflower_348"@28509
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undyne_echoflower_349"@28511
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_undyne_echoflower_350"@28513
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
call.i scr_regulartext(argc=0)
popz.v
pushi.e 34
pop.v.i self.con

:[69]
push.v self.con
pushi.e 34
cmp.i.v EQ
bf [71]

:[70]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [72]

:[71]
push.e 0

:[72]
bf [74]

:[73]
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.image_speed
push.v self.mkid
conv.v.i
push.v [stacktop]self.lsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 35
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[74]
push.v self.con
pushi.e 36
cmp.i.v EQ
bf [76]

:[75]
push.v self.mkid
conv.v.i
push.v [stacktop]self.rsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 37
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[76]
push.v self.con
pushi.e 38
cmp.i.v EQ
bf [78]

:[77]
push.v self.mkid
conv.v.i
push.v [stacktop]self.lsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 39
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[78]
push.v self.con
pushi.e 40
cmp.i.v EQ
bf [80]

:[79]
push.v self.mkid
conv.v.i
push.v [stacktop]self.dtsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 41
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[80]
push.v self.con
pushi.e 42
cmp.i.v EQ
bf [82]

:[81]
push.d 0.2
push.v self.mkid
conv.v.i
pop.v.d [stacktop]self.image_speed
push.s "obj_undyne_echoflower_388"@28515
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undyne_echoflower_389"@28517
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
call.i scr_regulartext(argc=0)
popz.v
pushi.e 43
pop.v.i self.con

:[82]
push.v self.con
pushi.e 43
cmp.i.v EQ
bf [84]

:[83]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [85]

:[84]
push.e 0

:[85]
bf [87]

:[86]
push.v self.undyne
conv.v.i
push.v [stacktop]self.rsprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 3
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 0.25
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 44
pop.v.i self.con
pushi.e 7
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[87]
push.v self.con
pushi.e 45
cmp.i.v EQ
bf [89]

:[88]
pushi.e 113
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 1525
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 46
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[89]
push.v self.con
pushi.e 47
cmp.i.v EQ
bf [91]

:[90]
pushi.e -2
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 0.25
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
push.s "obj_undyne_echoflower_419"@28519
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undyne_echoflower_420"@28520
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
call.i scr_regulartext(argc=0)
popz.v
pushi.e 48
pop.v.i self.con

:[91]
push.v self.con
pushi.e 48
cmp.i.v EQ
bf [93]

:[92]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [94]

:[93]
push.e 0

:[94]
bf [101]

:[95]
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 100
sub.i.v
cmp.v.v LT
bf [101]

:[96]
push.v self.undyne
conv.v.i
pushenv [98]

:[97]
call.i instance_destroy(argc=0)
popz.v

:[98]
popenv [97]
push.v self.mkid
conv.v.i
pushenv [100]

:[99]
call.i instance_destroy(argc=0)
popz.v

:[100]
popenv [99]
pushi.e 49
pop.v.i self.con
pushi.e 0
pop.v.i self.vol
pushglb.v global.currentsong
call.i caster_stop(argc=1)
popz.v
pushi.e 100
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[101]
push.v self.con
pushi.e 49
cmp.i.v EQ
bf [103]

:[102]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_xview
pushi.e 1
add.i.v
pop.i.v [array]self.view_xview

:[103]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [end]

:[104]
pushi.e 1576
pushenv [106]

:[105]
pushi.e 0
pop.v.i self.uncan

:[106]
popenv [105]
push.d 0.9
conv.d.v
pushi.e 1
conv.i.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
pushi.e 0
pop.v.i 1576.cutscene
pushi.e 0
pop.v.i global.interact
pushi.e 118
pop.v.i global.plot
pushi.e 51
pop.v.i self.con

:[end]