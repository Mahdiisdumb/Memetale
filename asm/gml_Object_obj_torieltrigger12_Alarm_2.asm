.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i global.border
pushi.e 878
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]
pushi.e -5
pushi.e 45
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [4]

:[3]
pushglb.v global.currentsong
call.i caster_stop(argc=1)
popz.v
push.d 0.3
conv.d.v
push.d 0.5
conv.d.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
push.v 1576.y
pushi.e 8
add.i.v
pop.v.v 1576.y
pushi.e 2
pop.v.i global.interact
pushi.e 4
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
pushi.e 1
pop.v.i global.facechoice
push.s "obj_torieltrigger12_149"@27550
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_torieltrigger12_150"@27552
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer
pushi.e 9
pop.v.i self.conversation
pushi.e 0
pop.v.i global.mercy
pushi.e 0
pop.v.i global.seriousbattle
pushi.e 0
pop.v.i global.border

:[4]
pushi.e -5
pushi.e 45
push.v [array]global.flag
pushi.e 4
cmp.i.v EQ
bf [8]

:[5]
pushi.e 0
pop.v.i global.mercy
pushi.e 0
pop.v.i global.seriousbattle
pushi.e 0
pop.v.i global.border
pushi.e 863
pushenv [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
popenv [6]
pushi.e 25
pop.v.i global.plot
call.i instance_destroy(argc=0)
popz.v

:[8]
pushi.e -5
pushi.e 45
push.v [array]global.flag
pushi.e 5
cmp.i.v EQ
bf [10]

:[9]
pushi.e 0
pop.v.i global.mercy
pushi.e 0
pop.v.i global.seriousbattle
pushi.e 0
pop.v.i global.border
push.v 863.x
pushi.e 6
add.i.v
pop.v.v 1576.x
push.v 863.y
pushi.e 36
add.i.v
pop.v.v 1576.y
pushi.e 270
pop.v.i 863.direction
pushglb.v global.currentsong
call.i caster_stop(argc=1)
popz.v
push.s "music/toriel.ogg"@2613
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
push.d 0.75
conv.d.v
push.d 0.8
conv.d.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
pushi.e 0
pop.v.i global.msc
pushi.e 4
pop.v.i global.typer
pushi.e 1
pop.v.i global.facechoice
push.s "obj_torieltrigger12_183"@27554
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_torieltrigger12_184"@27556
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_torieltrigger12_185"@27558
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_torieltrigger12_186"@27560
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_torieltrigger12_187"@27562
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
pop.v.v self.mydialoguer
pushi.e 6
pop.v.i self.conversation
pushi.e 2
pop.v.i global.interact

:[10]
pushi.e 0
pop.v.i global.mercy

:[end]