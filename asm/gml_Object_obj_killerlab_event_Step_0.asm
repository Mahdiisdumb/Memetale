.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 2
pop.v.i self.con
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pop.v.v self.nowx
pushi.e 1
pop.v.i 1576.cutscene

:[2]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [5]

:[3]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_xview
pushi.e 3
add.i.v
pop.i.v [array]self.view_xview
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
push.v self.nowx
pushi.e 78
add.i.v
cmp.v.v GTE
bf [5]

:[4]
push.v self.nowx
pushi.e 78
add.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.view_xview
push.d 2.1
pop.v.d self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[5]
push.v self.con
push.d 3.1
cmp.d.v EQ
bf [7]

:[6]
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e 27
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_killerlab_event_113"@14688
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_killerlab_event_114"@14690
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_killerlab_event_115"@14692
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_killerlab_event_116"@14694
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_killerlab_event_117"@14696
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_killerlab_event_118"@14698
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_killerlab_event_119"@14700
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_killerlab_event_120"@14702
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 4
pop.v.i self.con
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.d
pushi.e 0
push.v self.d
conv.v.i
pop.v.i [stacktop]self.side

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
pushi.e 1133
conv.i.v
push.v 1576.y
push.v 1576.x
call.i scr_marker(argc=3)
pop.v.v self.mc
push.d 0.25
push.v self.mc
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 2
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
pop.v.i 1576.visible
pushi.e 5
pop.v.i self.con

:[12]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [15]

:[13]
push.v self.mc
conv.v.i
push.v [stacktop]self.x
push.v self.mc
conv.v.i
push.v [stacktop]self.xstart
pushi.e 20
add.i.v
cmp.v.v GTE
bf [15]

:[14]
pushi.e 0
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 6
pop.v.i self.con
pushi.e 45
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[15]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [17]

:[16]
push.s "obj_killerlab_event_151"@14704
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_killerlab_event_152"@14706
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_killerlab_event_153"@14708
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_killerlab_event_154"@14710
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_killerlab_event_155"@14712
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
pushi.e 8
pop.v.i self.con

:[17]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [19]

:[18]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
pushi.e 8
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 9
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[22]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [25]

:[23]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_xview
pushi.e 2
sub.i.v
pop.i.v [array]self.view_xview
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
push.v self.nowx
pushi.e 20
add.i.v
cmp.v.v LTE
bf [25]

:[24]
pushi.e 11
pop.v.i self.con

:[25]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [end]

:[26]
push.v self.mc
conv.v.i
push.v [stacktop]self.x
pop.v.v 1576.x
pushi.e 1
pop.v.i 1576.visible
pushi.e 0
pop.v.i 1576.cutscene
push.v self.mc
conv.v.i
pushenv [28]

:[27]
call.i instance_destroy(argc=0)
popz.v

:[28]
popenv [27]
pushi.e 0
pop.v.i global.interact
pushi.e 1
pushi.e -5
pushi.e 367
pop.v.i [array]global.flag
pushi.e 1
pushi.e -5
pushi.e 368
pop.v.i [array]global.flag
pushi.e 99
pushi.e -5
pushi.e 369
pop.v.i [array]global.flag
pushi.e 1
pushi.e -5
pushi.e 371
pop.v.i [array]global.flag
pushi.e 1
pushi.e -5
pushi.e 374
pop.v.i [array]global.flag
pushi.e 1
pushi.e -5
pushi.e 375
pop.v.i [array]global.flag
pushi.e 1
pushi.e -5
pushi.e 399
pop.v.i [array]global.flag
pushi.e 1
pushi.e -5
pushi.e 400
pop.v.i [array]global.flag
pushi.e 1
pushi.e -5
pushi.e 417
pop.v.i [array]global.flag
pushi.e 1
pushi.e -5
pushi.e 418
pop.v.i [array]global.flag
pushi.e 160
pop.v.i global.plot
pushi.e 12
pop.v.i self.con
call.i instance_destroy(argc=0)
popz.v

:[end]