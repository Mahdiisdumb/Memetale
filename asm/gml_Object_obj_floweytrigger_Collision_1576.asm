.localvar 0 arguments

:[0]
pushglb.v global.plot
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.v other.xprevious
pop.v.v other.x
push.v other.yprevious
pop.v.v other.y
pushi.e 1
pop.v.i global.interact
push.v self.alter
pushi.e 0
cmp.i.v EQ
bf [23]

:[2]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "Met1"@50036
conv.s.v
push.s "Flowey"@31516
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.g
pushi.e 0
conv.i.v
push.s "truename"@47757
conv.s.v
push.s "Flowey"@31516
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.truename
pushi.e 0
conv.i.v
push.s "IK"@47753
conv.s.v
push.s "Flowey"@31516
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.IK
pushi.e 0
conv.i.v
push.s "NK"@47752
conv.s.v
push.s "Flowey"@31516
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.NK
push.s "music/flowey.ogg"@2614
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
pushi.e 9
pop.v.i global.typer
pushi.e 2
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e 200
pop.v.i global.msc
pushi.e 0
pop.v.i self.spec
push.v self.g
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 0
pop.v.i global.msc
push.s "obj_floweytrigger_316"@12991
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_floweytrigger_317"@12993
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_floweytrigger_318"@12995
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_floweytrigger_319"@12997
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_floweytrigger_320"@12999
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_floweytrigger_321"@13000
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_floweytrigger_322"@13001
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg

:[4]
push.v self.g
pushi.e 1
cmp.i.v GT
bf [6]

:[5]
pushi.e 0
pop.v.i global.msc
push.s "obj_floweytrigger_327"@13002
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[6]
pushi.e 1
pop.v.i self.conversation
push.v self.NK
pushi.e 0
cmp.i.v GT
bt [9]

:[7]
push.v self.IK
pushi.e 0
cmp.i.v GT
bt [9]

:[8]
push.v self.truename
pushi.e 0
cmp.i.v GT
b [10]

:[9]
push.e 1

:[10]
bf [12]

:[11]
pushi.e 1
pop.v.i self.spec

:[12]
push.v self.spec
pushi.e 1
cmp.i.v EQ
bf [20]

:[13]
pushi.e 0
pop.v.i global.msc
pushi.e 1
conv.i.v
push.s "Alter"@50031
conv.s.v
push.s "Flowey"@31516
conv.s.v
call.i ini_write_real(argc=3)
popz.v
push.s "obj_floweytrigger_338"@13004
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.truename
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
push.s "obj_floweytrigger_342"@13006
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_floweytrigger_343"@13008
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_floweytrigger_344"@13010
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[15]
push.v self.IK
pushi.e 0
cmp.i.v GT
bf [17]

:[16]
push.s "obj_floweytrigger_348"@13012
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_floweytrigger_349"@13014
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_floweytrigger_350"@13015
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_floweytrigger_351"@13017
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_floweytrigger_352"@13019
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_floweytrigger_353"@13021
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg

:[17]
push.v self.NK
pushi.e 0
cmp.i.v GT
bf [19]

:[18]
push.s "obj_floweytrigger_357"@13023
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_floweytrigger_358"@13025
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_floweytrigger_359"@13027
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_floweytrigger_360"@13029
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_floweytrigger_361"@13031
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_floweytrigger_362"@13033
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_floweytrigger_363"@13035
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg

:[19]
pushi.e 19
pop.v.i self.conversation
pushi.e 5
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[20]
push.v self.g
pushi.e 1
add.i.v
push.s "Met1"@50036
conv.s.v
push.s "Flowey"@31516
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v
pushi.e 780
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [22]

:[21]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[22]
b [end]

:[23]
pushi.e 1
pop.v.i global.plot
pushi.e 23
pop.v.i self.conversation

:[end]