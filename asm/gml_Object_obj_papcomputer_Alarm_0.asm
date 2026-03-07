.localvar 0 arguments

:[0]
pushi.e 3
pop.v.i self.myinteract
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e 1027
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[1]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_papcomputer_63"@19690
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papcomputer_64"@19692
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papcomputer_65"@19694
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_papcomputer_66"@19696
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_papcomputer_67"@19698
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_papcomputer_68"@19700
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.v self.read
pushi.e 0
cmp.i.v GT
bf [3]

:[2]
push.s "obj_papcomputer_73"@19702
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[3]
b [5]

:[4]
push.s "obj_papcomputer_79"@19703
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[5]
pushbltn.v self.room
pushi.e 120
cmp.i.v EQ
bf [7]

:[6]
push.s "obj_papcomputer_84"@19705
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[7]
pushbltn.v self.room
pushi.e 266
cmp.i.v EQ
bf [9]

:[8]
push.s "obj_papcomputer_90"@19707
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papcomputer_91"@19709
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papcomputer_92"@19711
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papcomputer_93"@19713
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_papcomputer_94"@19715
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_papcomputer_95"@19717
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg

:[9]
push.v self.read
pushi.e 1
add.i.v
pop.v.v self.read
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer

:[end]