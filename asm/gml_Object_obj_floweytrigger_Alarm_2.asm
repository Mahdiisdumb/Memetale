.localvar 0 arguments

:[0]
pushi.e 862
conv.i.v
pushi.e 260
conv.i.v
pushi.e 146
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 201
pop.v.i global.msc
pushi.e 4
pop.v.i global.typer
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i global.facechoice
pushi.e 3
pop.v.i self.conversation
push.v self.faketor
pushi.e 1
cmp.i.v EQ
bf [4]

:[1]
pushi.e 0
pop.v.i global.msc
push.s "obj_floweytrigger_122"@12976
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_floweytrigger_123"@12978
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_floweytrigger_124"@12980
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_floweytrigger_125"@12982
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_floweytrigger_126"@12984
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_floweytrigger_127"@12986
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_floweytrigger_128"@12988
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_floweytrigger_129"@12990
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.v self.temptor
conv.v.i
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]

:[4]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[end]