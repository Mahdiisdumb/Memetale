.localvar 0 arguments

:[0]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 105
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_torielcall3_88"@27464
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_torielcall3_89"@27465
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_torielcall3_90"@27466
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e -5
pushi.e 46
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.s "obj_torielcall3_91"@27468
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[3]
pushi.e -5
pushi.e 46
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
push.s "obj_torielcall3_92"@27470
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[5]
push.s "obj_torielcall3_93"@27472
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_torielcall3_94"@27474
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_torielcall3_95"@27476
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_torielcall3_96"@27478
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_torielcall3_97"@27479
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_torielcall3_98"@27480
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@2893
conv.s.v
pushi.e 0
conv.i.v
pushi.e 151
conv.i.v
call.i script_execute(argc=5)
popz.v
pushi.e 1
pop.v.i global.interact

:[end]