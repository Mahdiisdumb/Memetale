.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [5]

:[1]
pushi.e 1
pop.v.i global.interact
push.v self.blk
push.d 0.01
sub.d.v
pop.v.v self.blk
push.v self.blk
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.d 0.9
conv.d.v
push.d 0.9
conv.d.v
push.v self.o_music
call.i caster_loop(argc=3)
popz.v

:[3]
push.v self.blk
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 999
conv.i.v
pushi.e 999
conv.i.v
pushi.e -100
conv.i.v
pushi.e -100
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.blk
pushi.e 0
cmp.i.v LTE
bf [5]

:[4]
pushi.e 2
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[5]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [7]

:[6]
pushi.e 814
pop.v.i global.msc
pushi.e 4
pop.v.i global.typer
pushi.e 1
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 4
pop.v.i self.con

:[7]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [9]

:[8]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
push.v self.pap
conv.v.i
push.v [stacktop]self.y
push.v self.pap
conv.v.i
pop.v.v [stacktop]self.thisy
pushi.e 5
pop.v.i self.con
pushi.e 3
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[12]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [14]

:[13]
pushi.e 1402
push.v self.pap
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.pap
conv.v.i
dup.i 0
push.v [stacktop]self.y
pushi.e 5
add.i.v
pop.i.v [stacktop]self.y
push.d 0.334
push.v self.pap
conv.v.i
pop.v.d [stacktop]self.image_speed

:[14]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [17]

:[15]
pushi.e 1417
push.v self.pap
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.pap
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 7
add.i.v
pop.i.v [stacktop]self.x
push.v self.pap
conv.v.i
push.v [stacktop]self.x
pushbltn.v self.room_width
cmp.v.v GT
bf [17]

:[16]
pushi.e 7
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[17]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [19]

:[18]
pushi.e 0
pop.v.i global.msc
pushi.e 17
pop.v.i global.typer
pushi.e 3
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_outsideworld_event_158"@19604
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_outsideworld_event_159"@19606
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_outsideworld_event_160"@19608
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
popz.v
pushi.e 9
pop.v.i self.con

:[19]
push.v self.con
pushi.e 9
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
bf [25]

:[23]
push.v self.sans
conv.v.i
dup.i 0
push.v [stacktop]self.y
pushi.e 2
add.i.v
pop.i.v [stacktop]self.y
pushi.e 1443
push.v self.sans
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 0.2
push.v self.sans
conv.v.i
pop.v.d [stacktop]self.image_speed
push.v self.sans
conv.v.i
push.v [stacktop]self.y
pushbltn.v self.room_height
cmp.v.v GT
bf [25]

:[24]
pushi.e 10
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[25]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [27]

:[26]
pushi.e 0
pop.v.i global.msc
pushi.e 37
pop.v.i global.typer
pushi.e 5
pop.v.i global.facechoice
pushi.e 9
pop.v.i global.faceemotion
push.s "obj_outsideworld_event_183"@19610
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_outsideworld_event_184"@19612
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
popz.v
pushi.e 12
pop.v.i self.con

:[27]
push.v self.con
pushi.e 12
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
pushi.e 13
pop.v.i self.con
pushi.e 3
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[32]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [34]

:[33]
pushi.e 1494
push.v self.und
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.und
conv.v.i
dup.i 0
push.v [stacktop]self.y
pushi.e 5
add.i.v
pop.i.v [stacktop]self.y
push.d 0.334
push.v self.und
conv.v.i
pop.v.d [stacktop]self.image_speed

:[34]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [37]

:[35]
pushi.e 1506
push.v self.und
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.und
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 7
add.i.v
pop.i.v [stacktop]self.x
push.v self.und
conv.v.i
push.v [stacktop]self.x
pushbltn.v self.room_width
pushi.e 17
add.i.v
cmp.v.v GT
bf [37]

:[36]
pushi.e 15
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[37]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [39]

:[38]
pushi.e 0
pop.v.i global.msc
pushi.e 47
pop.v.i global.typer
pushi.e 6
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_outsideworld_event_219"@19614
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
popz.v
pushi.e 17
pop.v.i self.con

:[39]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [41]

:[40]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [42]

:[41]
push.e 0

:[42]
bf [44]

:[43]
pushi.e 18
pop.v.i self.con
pushi.e 3
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[44]
push.v self.con
pushi.e 18
cmp.i.v EQ
bf [46]

:[45]
pushi.e 1729
push.v self.al
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.al
conv.v.i
dup.i 0
push.v [stacktop]self.y
pushi.e 5
add.i.v
pop.i.v [stacktop]self.y
push.d 0.334
push.v self.al
conv.v.i
pop.v.d [stacktop]self.image_speed

:[46]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [49]

:[47]
pushi.e 1734
push.v self.al
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.al
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 7
add.i.v
pop.i.v [stacktop]self.x
push.v self.al
conv.v.i
push.v [stacktop]self.x
pushbltn.v self.room_width
cmp.v.v GT
bf [49]

:[48]
pushi.e 20
pop.v.i self.con
pushi.e 95
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[49]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [51]

:[50]
pushi.e 0
pop.v.i global.msc
pushi.e 60
pop.v.i global.typer
pushi.e 7
pop.v.i global.facechoice
pushi.e 3
pop.v.i global.faceemotion
push.s "obj_outsideworld_event_255"@19616
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
popz.v
pushi.e 22
pop.v.i self.con

:[51]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [53]

:[52]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [54]

:[53]
push.e 0

:[54]
bf [56]

:[55]
pushi.e 23
pop.v.i self.con
pushi.e 120
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[56]
push.v self.con
pushi.e 24
cmp.i.v EQ
bf [58]

:[57]
pushi.e 1999
push.v self.asg
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 0
pop.v.i global.msc
pushi.e 60
pop.v.i global.typer
pushi.e 7
pop.v.i global.facechoice
pushi.e 3
pop.v.i global.faceemotion
push.s "obj_outsideworld_event_273"@19618
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 1
conv.i.v
call.i scr_torface(argc=2)
popz.v
push.s "obj_outsideworld_event_275"@19619
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_asgface(argc=2)
popz.v
push.s "obj_outsideworld_event_277"@19621
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
popz.v
pushi.e 25
pop.v.i self.con

:[58]
push.v self.con
pushi.e 25
cmp.i.v EQ
bf [60]

:[59]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [61]

:[60]
push.e 0

:[61]
bf [64]

:[62]
pushi.e 2000
push.v self.asg
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 0.25
push.v self.asg
conv.v.i
pop.v.d [stacktop]self.image_speed
push.v self.asg
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 5
add.i.v
pop.i.v [stacktop]self.x
push.v self.asg
conv.v.i
push.v [stacktop]self.x
pushbltn.v self.room_width
cmp.v.v GT
bf [64]

:[63]
pushi.e 26
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[64]
push.v self.con
pushi.e 27
cmp.i.v EQ
bf [66]

:[65]
pushi.e 1195
push.v self.tor
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 28
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[66]
push.v self.con
pushi.e 29
cmp.i.v EQ
bf [68]

:[67]
pushi.e 1195
push.v self.tor
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 30
pop.v.i self.con
pushi.e 0
pop.v.i global.msc
pushi.e 4
pop.v.i global.typer
pushi.e 1
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_outsideworld_event_309"@19623
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
popz.v

:[68]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [70]

:[69]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [71]

:[70]
push.e 0

:[71]
bf [73]

:[72]
pushi.e 31
pop.v.i self.con
pushi.e 1200
push.v self.tor
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 32
pop.v.i self.con
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[73]
push.v self.con
pushi.e 33
cmp.i.v EQ
bf [75]

:[74]
pushi.e 1196
push.v self.tor
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 34
pop.v.i self.con

:[75]
push.v self.con
pushi.e 35
cmp.i.v EQ
bf [77]

:[76]
pushi.e 1133
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 4
pop.v.i global.typer
pushi.e 820
pop.v.i global.msc
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 36
pop.v.i self.con

:[77]
push.v self.con
pushi.e 100
cmp.i.v EQ
bf [79]

:[78]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [80]

:[79]
push.e 0

:[80]
bf [82]

:[81]
pushi.e 0
pushi.e -5
pushi.e 512
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.msc
pushi.e 1
pop.v.i global.facechoice
pushi.e 8
pop.v.i global.faceemotion
pushi.e 4
pop.v.i global.typer
push.s "obj_outsideworld_event_344"@19624
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_outsideworld_event_345"@19626
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_outsideworld_event_346"@19628
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_outsideworld_event_347"@19630
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_outsideworld_event_348"@19632
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_outsideworld_event_349"@19633
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_outsideworld_event_350"@19635
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_outsideworld_event_351"@19637
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_outsideworld_event_352"@19639
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_outsideworld_event_353"@19641
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_outsideworld_event_354"@19643
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 101
pop.v.i self.con

:[82]
push.v self.con
pushi.e 101
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
push.v self.tor
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 16
sub.i.v
pop.i.v [stacktop]self.x
pushi.e 1202
push.v self.tor
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 102
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[87]
push.v self.con
pushi.e 103
cmp.i.v EQ
bf [89]

:[88]
push.s "obj_outsideworld_event_372"@19645
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 104
pop.v.i self.con
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[89]
push.v self.con
pushi.e 104
cmp.i.v EQ
bf [91]

:[90]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [92]

:[91]
push.e 0

:[92]
bf [95]

:[93]
push.v self.tor
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 2
add.i.v
pop.i.v [stacktop]self.x
push.d 0.125
push.v self.tor
conv.v.i
pop.v.d [stacktop]self.image_speed
push.v self.tor
conv.v.i
push.v [stacktop]self.x
pushbltn.v self.room_width
pushi.e 100
add.i.v
cmp.v.v GT
bf [95]

:[94]
pushi.e 105
pop.v.i self.con

:[95]
push.v self.con
pushi.e 105
cmp.i.v EQ
bf [98]

:[96]
push.v self.blk
push.d 0.01
add.d.v
pop.v.v self.blk
push.v self.o_music
call.i caster_get_volume(argc=1)
pop.v.v self.vol
push.v self.vol
push.d 0.01
sub.d.v
pop.v.v self.vol
push.v self.vol
push.v self.o_music
call.i caster_set_volume(argc=2)
popz.v
push.v self.blk
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 999
conv.i.v
pushi.e 999
conv.i.v
pushi.e -100
conv.i.v
pushi.e -100
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.blk
push.d 1.6
cmp.d.v GTE
bf [98]

:[97]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 1
pop.v.i self.do_room_goto

:[98]
push.v self.con
pushi.e 200
cmp.i.v EQ
bf [100]

:[99]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [101]

:[100]
push.e 0

:[101]
bf [103]

:[102]
pushi.e 0
pop.v.i global.msc
pushi.e 1
pop.v.i global.facechoice
pushi.e 2
pop.v.i global.faceemotion
pushi.e 4
pop.v.i global.typer
push.s "obj_outsideworld_event_413"@19647
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_outsideworld_event_414"@19649
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_outsideworld_event_415"@19650
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_outsideworld_event_416"@19652
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
popz.v
pushi.e 201
pop.v.i self.con

:[103]
push.v self.con
pushi.e 201
cmp.i.v EQ
bf [105]

:[104]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [106]

:[105]
push.e 0

:[106]
bf [111]

:[107]
push.v 784.stringno
pushi.e 1
cmp.i.v EQ
bf [109]

:[108]
pushi.e 1200
push.v self.tor
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[109]
push.v 784.stringno
pushi.e 3
cmp.i.v EQ
bf [111]

:[110]
pushi.e 1196
push.v self.tor
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[111]
push.v self.con
pushi.e 201
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
pushi.e 1200
push.v self.tor
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 203
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[116]
push.v self.con
pushi.e 204
cmp.i.v EQ
bf [118]

:[117]
pushi.e 1195
push.v self.tor
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 205
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[118]
push.v self.con
pushi.e 206
cmp.i.v EQ
bf [120]

:[119]
pushi.e 27
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 207
pop.v.i self.con

:[120]
push.v self.con
pushi.e 207
cmp.i.v EQ
bf [122]

:[121]
push.v self.tor
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 1
add.i.v
pop.i.v [stacktop]self.x
push.d 0.1
push.v self.tor
conv.v.i
pop.v.d [stacktop]self.image_speed

:[122]
push.v self.con
pushi.e 208
cmp.i.v EQ
bf [124]

:[123]
pushi.e 0
push.v self.tor
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.tor
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 209
pop.v.i self.con
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[124]
push.v self.con
pushi.e 210
cmp.i.v EQ
bf [126]

:[125]
pushi.e 1196
push.v self.tor
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 211
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[126]
push.v self.con
pushi.e 212
cmp.i.v EQ
bf [128]

:[127]
pushi.e 1
pushi.e -5
pushi.e 512
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_outsideworld_event_478"@19653
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_outsideworld_event_479"@19655
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
popz.v
pushi.e 213
pop.v.i self.con

:[128]
push.v self.con
pushi.e 213
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
pushi.e 1196
push.v self.tor
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 214
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[133]
push.v self.con
pushi.e 215
cmp.i.v EQ
bf [135]

:[134]
pushi.e 1195
push.v self.tor
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 216
pop.v.i self.con
pushi.e 80
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[135]
push.v self.con
pushi.e 217
cmp.i.v EQ
bf [end]

:[136]
pushi.e 1132
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.tor
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 3
add.i.v
pop.i.v [stacktop]self.x
push.d 0.25
push.v self.tor
conv.v.i
pop.v.d [stacktop]self.image_speed
push.v self.tor
conv.v.i
push.v [stacktop]self.x
pushbltn.v self.room_width
pushi.e 100
add.i.v
cmp.v.v GTE
bf [end]

:[137]
pushi.e 105
pop.v.i self.con

:[end]