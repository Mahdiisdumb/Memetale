.localvar 0 arguments

:[0]
pushi.e 3
pop.v.i self.myinteract
pushi.e 0
pop.v.i global.msc
pushi.e 17
pop.v.i global.typer
pushi.e 3
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_sans_sentry2_127"@23779
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
pushi.e 89
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 567
pop.v.i global.msc

:[2]
pushi.e -5
pushi.e 89
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
push.s "obj_sans_sentry2_134"@23781
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[4]
call.i scr_murderlv(argc=0)
pushi.e 7
cmp.i.v GTE
bf [6]

:[5]
pushi.e 3
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
push.s "obj_sans_sentry2_141"@23783
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sans_sentry2_142"@23784
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[6]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer
push.v self.talkedto
pushi.e 1
add.i.v
pop.v.v self.talkedto

:[end]