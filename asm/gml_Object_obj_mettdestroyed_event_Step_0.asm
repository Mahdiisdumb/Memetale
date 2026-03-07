.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [6]

:[1]
pushi.e 1365
pushenv [3]

:[2]
pushi.e 0
pop.v.i self.visible

:[3]
popenv [2]
push.v self.brokemett
conv.v.i
pushenv [5]

:[4]
pushi.e 1
pop.v.i self.visible

:[5]
popenv [4]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_yview
pushi.e 20
add.i.v
pop.i.v [array]self.view_yview
pushi.e 2
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[6]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
pushi.e 1
pop.v.i global.interact

:[8]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [10]

:[9]
pushi.e 13
conv.i.v
call.i snd_play(argc=1)
popz.v
push.d 3.1
pop.v.d self.con
pushi.e 45
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[10]
push.v self.con
push.d 4.1
cmp.d.v EQ
bf [12]

:[11]
pushi.e 4
pop.v.i self.con

:[12]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [14]

:[13]
pushi.e 6
pop.v.i global.facechoice
pushi.e 47
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
pushi.e 6
pop.v.i global.faceemotion
push.s "obj_mettdestroyed_event_169"@17679
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
pushi.e 5
pop.v.i self.con

:[14]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [16]

:[15]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
pushi.e 1172
conv.i.v
push.v 1576.y
pushi.e 75
add.i.v
push.v 1576.x
pushi.e 40
add.i.v
call.i instance_create(argc=3)
pop.v.v self.al
push.v self.al
conv.v.i
push.v [stacktop]self.usprite
push.v self.al
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e -3
push.v self.al
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 1
push.v self.al
conv.v.i
pop.v.i [stacktop]self.fun
push.d 0.25
push.v self.al
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 6
pop.v.i self.con
pushi.e 25
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[19]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [21]

:[20]
pushi.e 0
push.v self.al
conv.v.i
pop.v.i [stacktop]self.speed
pushi.e 0
push.v self.al
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 8
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[21]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [23]

:[22]
pushi.e 1
pushi.e -5
pushi.e 430
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_mettdestroyed_event_197"@17681
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
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

:[23]
push.v self.con
pushi.e 10
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
bf [28]

:[27]
push.d -3.5
push.v self.al
conv.v.i
pop.v.d [stacktop]self.vspeed
pushi.e -4
push.v self.al
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 0.334
push.v self.al
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 11
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[28]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [30]

:[29]
pushi.e 0
push.v self.al
conv.v.i
pop.v.i [stacktop]self.speed
pushi.e 0
push.v self.al
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 13
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[30]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [32]

:[31]
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_mettdestroyed_event_222"@17683
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettdestroyed_event_223"@17685
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 15
pop.v.i self.con
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[32]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [34]

:[33]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [35]

:[34]
push.e 0

:[35]
bf [37]

:[36]
pushi.e 16
pop.v.i self.con
pushi.e 80
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[37]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [39]

:[38]
pushi.e 18
pop.v.i self.con
push.v self.al
conv.v.i
push.v [stacktop]self.rsprite
push.v self.al
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[39]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [43]

:[40]
pushi.e 6
pop.v.i global.faceemotion
push.s "obj_mettdestroyed_event_244"@17687
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettdestroyed_event_245"@17689
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mettdestroyed_event_246"@17691
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mettdestroyed_event_247"@17693
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_mettdestroyed_event_248"@17695
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_mettdestroyed_event_249"@17697
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e -5
pushi.e 425
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [42]

:[41]
pushi.e 4
pop.v.i global.faceemotion
push.s "obj_mettdestroyed_event_254"@17699
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettdestroyed_event_255"@17701
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mettdestroyed_event_256"@17702
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mettdestroyed_event_257"@17704
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_mettdestroyed_event_258"@17706
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_mettdestroyed_event_259"@17708
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_mettdestroyed_event_260"@17709
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_mettdestroyed_event_261"@17711
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg

:[42]
pushi.e 20
pop.v.i self.con
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[43]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [45]

:[44]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [46]

:[45]
push.e 0

:[46]
bf [48]

:[47]
push.v self.al
conv.v.i
push.v [stacktop]self.utsprite
push.v self.al
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 1576
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_object
pushi.e 1
pop.v.i 1576.cutscene
pushi.e 21
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[48]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [50]

:[49]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_yview
pushi.e 2
add.i.v
pop.i.v [array]self.view_yview

:[50]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [end]

:[51]
pushi.e 0
pop.v.i 1576.cutscene
pushi.e 193
pop.v.i global.plot
pushi.e 1172
conv.i.v
push.v self.al
conv.v.i
push.v [stacktop]self.y
push.v self.al
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.al2
push.v self.al
conv.v.i
push.v [stacktop]self.utsprite
push.v self.al2
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 1
push.v self.al2
conv.v.i
pop.v.i [stacktop]self.fun
push.v self.al
conv.v.i
pushenv [53]

:[52]
call.i instance_destroy(argc=0)
popz.v

:[53]
popenv [52]
pushi.e 27
pop.v.i self.con
pushi.e 0
pop.v.i global.interact

:[end]