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
pushi.e -5
pushi.e 88
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.s "obj_paphouse_entrance_91"@20148
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[2]
pushi.e -5
pushi.e 88
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [8]

:[3]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_papface(argc=2)
popz.v
pushi.e -5
pushi.e 66
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
push.s "obj_paphouse_entrance_96"@20150
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[5]
pushi.e -5
pushi.e 66
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
push.s "obj_paphouse_entrance_97"@20152
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[7]
push.s "obj_paphouse_entrance_98"@20154
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_paphouse_entrance_99"@20156
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[8]
pushi.e -5
pushi.e 88
push.v [array]global.flag
pushi.e 1
cmp.i.v GT
bf [10]

:[9]
push.s "obj_paphouse_entrance_103"@20158
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[10]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer

:[end]