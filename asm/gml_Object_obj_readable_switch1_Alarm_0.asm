.localvar 0 arguments

:[0]
pushi.e 3
pop.v.i self.myinteract
pushglb.v global.plot
pushi.e 5
cmp.i.v LT
bf [6]

:[1]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [5]

:[2]
pushi.e 1198
pop.v.i 872.lsprite
pushi.e 0
pop.v.i global.msc
pushi.e 4
pop.v.i global.typer
pushi.e 1
pop.v.i global.facechoice
pushi.e 1
pop.v.i global.faceemotion
push.s "obj_readable_switch1_65"@23203
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_switch1_66"@23205
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_switch1_67"@23207
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e -5
pushi.e 6
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.s "obj_readable_switch1_71"@23209
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[4]
b [6]

:[5]
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e 27
conv.i.v
call.i snd_play(argc=1)
popz.v
push.s "obj_readable_switch1_81"@23211
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[6]
pushglb.v global.plot
pushi.e 5
cmp.i.v GTE
bf [8]

:[7]
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_readable_switch1_91"@23213
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[8]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer

:[end]