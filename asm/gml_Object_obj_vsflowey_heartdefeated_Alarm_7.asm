.localvar 0 arguments
.localvar 1 xx 10044

:[0]
pushi.e -3
conv.i.v
call.i caster_stop(argc=1)
popz.v
pushi.e 115
pop.v.i global.typer
push.s "obj_vsflowey_heartdefeated_114"@29720
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_vsflowey_heartdefeated_115"@29721
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 150
pushi.e -1
pushi.e 8
pop.v.i [array]self.alarm
pushi.e 4
pop.v.i self.con
pushi.e 1
pop.v.i self.dingus
pushi.e 0
pop.v.i global.msc
pushi.e 100
pop.v.i local.xx
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [2]

:[1]
pushi.e 88
pop.v.i local.xx

:[2]
pushi.e 1604
conv.i.v
pushi.e 300
conv.i.v
pushloc.v local.xx
call.i instance_create(argc=3)
popz.v

:[end]