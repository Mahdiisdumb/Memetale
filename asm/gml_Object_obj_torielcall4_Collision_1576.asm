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
push.s "obj_torielcall4_88"@27481
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_torielcall4_89"@27482
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_torielcall4_90"@27484
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_torielcall4_91"@27486
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_torielcall4_92"@27488
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_torielcall4_93"@27490
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_torielcall4_94"@27491
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_torielcall4_95"@27492
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
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
pushi.e 202
conv.i.v
pushi.e 90
conv.i.v
call.i script_execute(argc=2)
popz.v

:[end]