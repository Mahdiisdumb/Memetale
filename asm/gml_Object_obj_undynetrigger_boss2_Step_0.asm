.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [4]

:[1]
pushi.e 1512
conv.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 230
sub.i.v
pushi.e 150
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.undyne
push.d 0.334
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 37
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_undynetrigger_boss2_99"@29675
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undynetrigger_boss2_100"@29677
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e -5
pushi.e 352
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.s "obj_undynetrigger_boss2_103"@29679
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[3]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 2
pop.v.i self.con

:[4]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
push.s "music/undynefast.ogg"@2646
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 8
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 1
pop.v.i global.faceemotion
push.s "obj_undynetrigger_boss2_116"@29681
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 3
pop.v.i self.con

:[9]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [17]

:[10]
pushi.e 1353
pushenv [12]

:[11]
call.i instance_destroy(argc=0)
popz.v

:[12]
popenv [11]
pushi.e 784
pushenv [14]

:[13]
call.i instance_destroy(argc=0)
popz.v

:[14]
popenv [13]
pushi.e 780
pushenv [16]

:[15]
call.i instance_destroy(argc=0)
popz.v

:[16]
popenv [15]
pushi.e 5
pop.v.i self.con
pushi.e 12
pop.v.i global.border
pushi.e 47
pop.v.i global.battlegroup
pushi.e 1
pop.v.i global.mercy
pushi.e 143
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i self.talkedto
pushi.e 2
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[17]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [23]

:[18]
push.v self.undyne
conv.v.i
pushenv [20]

:[19]
call.i instance_destroy(argc=0)
popz.v

:[20]
popenv [19]
pushi.e -5
pushi.e 350
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [22]

:[21]
pushi.e 1120
conv.i.v
pushi.e 620
conv.i.v
pushi.e 160
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.u
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 7
pop.v.i self.con
b [23]

:[22]
pushi.e 0
pushi.e -5
pushi.e 17
pop.v.i [array]global.flag
pushi.e 122
pop.v.i global.plot

:[23]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [end]

:[24]
pushi.e -5
pushi.e 350
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [26]

:[25]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
b [27]

:[26]
call.i audio_stop_all(argc=0)
popz.v

:[27]
pushi.e 1
pushi.e -5
pushi.e 352
pop.v.i [array]global.flag
call.i instance_destroy(argc=0)
popz.v

:[end]