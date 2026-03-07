.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 2
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[2]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
pushi.e 2
pop.v.i global.facing

:[4]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [6]

:[5]
pushi.e -1
pop.v.i 1576.vspeed
push.d 0.1
pop.v.d 1576.image_speed
pushi.e 4
pop.v.i self.con
pushi.e 100
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[6]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [8]

:[7]
pushi.e 0
pop.v.i 1576.image_speed
pushi.e 0
pop.v.i 1576.vspeed
pushi.e 6
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[8]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [10]

:[9]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pop.v.v self.remy
pushi.e 1
pop.v.i 1576.cutscene
pushi.e -4
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_object
pushi.e 8
pop.v.i self.con
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[10]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [12]

:[11]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_yview
pushi.e 1
sub.i.v
pop.i.v [array]self.view_yview

:[12]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [14]

:[13]
pushi.e 10
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[14]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [18]

:[15]
pushi.e 0
pop.v.i global.facechoice
pushi.e 60
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_asgoremeet_event_131"@10080
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asgoremeet_event_132"@10082
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_asgoremeet_event_133"@10084
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_asgoremeet_event_134"@10086
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 12
pop.v.i self.con
call.i scr_murderlv(argc=0)
pushi.e 16
cmp.i.v GTE
bf [17]

:[16]
push.s "obj_asgoremeet_event_138"@10088
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 99
pop.v.i self.con

:[17]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[18]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [20]

:[19]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
push.d 0.2
push.v self.asg
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 13
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[23]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [25]

:[24]
pushi.e 0
push.v self.asg
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.asg
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 15
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[25]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [27]

:[26]
push.s "obj_asgoremeet_event_162"@10090
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 17
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
pushi.e 17
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
pushi.e 18
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[32]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [34]

:[33]
push.v self.asg
conv.v.i
push.v [stacktop]self.rsprite
push.v self.asg
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 20
pop.v.i self.con
pushi.e 35
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[34]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [36]

:[35]
push.v self.asg
conv.v.i
push.v [stacktop]self.dtsprite
push.v self.asg
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 22
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[36]
push.v self.con
pushi.e 23
cmp.i.v EQ
bf [38]

:[37]
pushi.e 7
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.msc
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_asgoremeet_event_193"@10092
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
pushi.e 24
pop.v.i self.con

:[38]
push.v self.con
pushi.e 24
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
bf [45]

:[42]
push.d 24.1
pop.v.d self.con
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 88
pushenv [44]

:[43]
call.i instance_destroy(argc=0)
popz.v

:[44]
popenv [43]
push.s "music/smallshock.ogg"@2871
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 2005
push.v self.asg
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e -1
push.v self.asg
conv.v.i
pop.v.i [stacktop]self.vspeed
push.d 0.2
push.v self.asg
conv.v.i
pop.v.d [stacktop]self.image_speed

:[45]
push.v self.con
push.d 25.1
cmp.d.v EQ
bf [47]

:[46]
pushi.e 0
push.v self.asg
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 0
push.v self.asg
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.asg
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 25
pop.v.i self.con
pushi.e 80
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[47]
push.v self.con
pushi.e 26
cmp.i.v EQ
bf [49]

:[48]
pushi.e 2009
push.v self.asg
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
pushi.e 1
pop.v.i global.faceemotion
push.s "obj_asgoremeet_event_224"@10094
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
pushi.e 27
pop.v.i self.con

:[49]
push.v self.con
pushi.e 27
cmp.i.v EQ
bf [51]

:[50]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [52]

:[51]
push.e 0

:[52]
bf [54]

:[53]
push.v self.asg
conv.v.i
push.v [stacktop]self.rsprite
push.v self.asg
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 28
pop.v.i self.con
pushi.e 110
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[54]
push.v self.con
pushi.e 29
cmp.i.v EQ
bf [56]

:[55]
push.v self.asg
conv.v.i
push.v [stacktop]self.dtsprite
push.v self.asg
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 30
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[56]
push.v self.con
pushi.e 31
cmp.i.v EQ
bf [58]

:[57]
push.v self.asg
conv.v.i
push.v [stacktop]self.dtsprite
push.v self.asg
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 3
pop.v.i global.faceemotion
push.s "obj_asgoremeet_event_247"@10095
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asgoremeet_event_248"@10097
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_asgoremeet_event_249"@10099
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_asgoremeet_event_250"@10101
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
pushi.e 32
pop.v.i self.con

:[58]
push.v self.con
pushi.e 32
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
bf [63]

:[62]
pushi.e 33
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[63]
push.v self.con
pushi.e 34
cmp.i.v EQ
bf [65]

:[64]
push.v self.asg
conv.v.i
push.v [stacktop]self.lsprite
push.v self.asg
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.d 0.2
push.v self.asg
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e -1
push.v self.asg
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 80
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 35
pop.v.i self.con

:[65]
push.v self.con
pushi.e 36
cmp.i.v EQ
bf [67]

:[66]
pushi.e 0
push.v self.asg
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.asg
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 37
pop.v.i self.con
pushi.e 70
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[67]
push.v self.con
pushi.e 38
cmp.i.v EQ
bf [69]

:[68]
push.v self.asg
conv.v.i
push.v [stacktop]self.dtsprite
push.v self.asg
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 0
push.v self.asg
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 39
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[69]
push.v self.con
pushi.e 40
cmp.i.v EQ
bf [71]

:[70]
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_asgoremeet_event_289"@10103
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asgoremeet_event_290"@10105
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_asgoremeet_event_291"@10107
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
pushi.e 41
pop.v.i self.con

:[71]
push.v self.con
pushi.e 41
cmp.i.v EQ
bf [73]

:[72]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [74]

:[73]
push.e 0

:[74]
bf [76]

:[75]
push.v self.asg
conv.v.i
push.v [stacktop]self.lsprite
push.v self.asg
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 42
pop.v.i self.con
pushi.e 120
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[76]
push.v self.con
pushi.e 43
cmp.i.v EQ
bf [78]

:[77]
pushi.e 2010
push.v self.asg
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 44
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[78]
push.v self.con
pushi.e 45
cmp.i.v EQ
bf [80]

:[79]
pushi.e 3
pop.v.i global.faceemotion
push.s "obj_asgoremeet_event_313"@10108
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asgoremeet_event_314"@10110
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_asgoremeet_event_315"@10112
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
pushi.e 46
pop.v.i self.con

:[80]
push.v self.con
pushi.e 46
cmp.i.v EQ
bf [82]

:[81]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [83]

:[82]
push.e 0

:[83]
bf [85]

:[84]
push.v self.asg
conv.v.i
push.v [stacktop]self.usprite
push.v self.asg
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.d 0.25
push.v self.asg
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e -2
push.v self.asg
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 47
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[85]
push.v self.con
pushi.e 48
cmp.i.v EQ
bf [91]

:[86]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
push.v self.remy
cmp.v.v LT
bf [88]

:[87]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_yview
pushi.e 2
add.i.v
pop.i.v [array]self.view_yview
b [91]

:[88]
push.v self.remy
pushi.e -1
pushi.e 0
pop.v.v [array]self.view_yview
pushi.e 0
pop.v.i 1576.cutscene
pushi.e 1576
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_object
pushi.e 0
pop.v.i global.interact
push.v self.asg
conv.v.i
pushenv [90]

:[89]
call.i instance_destroy(argc=0)
popz.v

:[90]
popenv [89]
call.i instance_destroy(argc=0)
popz.v
pushi.e 206
pop.v.i global.plot
pushi.e 49
pop.v.i self.con

:[91]
push.v self.con
pushi.e 99
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
bf [96]

:[95]
push.v self.asg
conv.v.i
push.v [stacktop]self.rtsprite
push.v self.asg
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 100
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[96]
push.v self.con
pushi.e 101
cmp.i.v EQ
bf [98]

:[97]
push.v self.asg
conv.v.i
push.v [stacktop]self.dtsprite
push.v self.asg
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 102
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[98]
push.v self.con
pushi.e 103
cmp.i.v EQ
bf [100]

:[99]
pushi.e 7
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.msc
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_asgoremeet_event_369"@10114
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asgoremeet_event_370"@10116
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_asgoremeet_event_371"@10118
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_asgoremeet_event_372"@10119
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_asgoremeet_event_373"@10121
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_asgoremeet_event_374"@10123
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_asgoremeet_event_375"@10125
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
popz.v
pushi.e 111
pop.v.i self.con

:[100]
push.v self.con
pushi.e 111
cmp.i.v EQ
bf [102]

:[101]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [103]

:[102]
push.e 0

:[103]
bf [end]

:[104]
pushi.e 100
pop.v.i global.battlegroup
pushi.e 1
pop.v.i global.mercy
pushi.e 143
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 112
pop.v.i self.con

:[end]