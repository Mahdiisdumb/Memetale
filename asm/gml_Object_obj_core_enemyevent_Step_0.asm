.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1262
conv.i.v
pushi.e 100
conv.i.v
pushi.e 120
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.dm1
pushi.e 1262
conv.i.v
pushi.e 100
conv.i.v
pushi.e 180
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.dm2
pushi.e 2
pop.v.i self.con

:[2]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [18]

:[3]
pushi.e 0
pop.v.i global.msc
pushi.e 0
pop.v.i global.facechoice
pushi.e 5
pop.v.i global.typer
pushi.e -5
pushi.e 414
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushi.e 105
conv.i.v
call.i snd_play(argc=1)
popz.v
push.s "obj_core_enemyevent_97"@11261
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_core_enemyevent_98"@11262
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_core_enemyevent_99"@11264
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_core_enemyevent_100"@11265
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[5]
pushi.e -5
pushi.e 414
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e -5
pushi.e 415
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 105
conv.i.v
call.i snd_play(argc=1)
popz.v
push.s "obj_core_enemyevent_106"@11266
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_core_enemyevent_107"@11267
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_core_enemyevent_108"@11269
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_core_enemyevent_109"@11270
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[10]
pushi.e -5
pushi.e 415
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
pushi.e -5
pushi.e 414
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
pushi.e 105
conv.i.v
call.i snd_play(argc=1)
popz.v
push.s "obj_core_enemyevent_116"@11271
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_core_enemyevent_117"@11272
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_core_enemyevent_118"@11274
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_core_enemyevent_119"@11275
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[15]
pushi.e -5
pushi.e 367
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
pushi.e 1
pop.v.i self.donotcall

:[17]
pushi.e 3
pop.v.i self.con
call.i scr_regulartext(argc=0)
popz.v

:[18]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [20]

:[19]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
pushi.e 3
pop.v.i 1262.vspeed
pushi.e 4
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[23]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [25]

:[24]
pushi.e 3
pop.v.i global.faceemotion
push.s "obj_core_enemyevent_139"@11277
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
pushi.e 6
pop.v.i self.con

:[25]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [27]

:[26]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [28]

:[27]
push.e 0

:[28]
bf [30]

:[29]
pushi.e 7
pop.v.i self.con
pushi.e 30
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[30]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [32]

:[31]
pushi.e 1
pop.v.i global.mercy
pushi.e 1
pushi.e -5
pushi.e 15
pop.v.i [array]global.flag
pushi.e 59
pop.v.i global.battlegroup
pushi.e 143
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 9
pop.v.i self.con
pushi.e 32
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[32]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [36]

:[33]
pushi.e 1262
pushenv [35]

:[34]
call.i instance_destroy(argc=0)
popz.v

:[35]
popenv [34]
pushi.e 1
pop.v.i global.interact
pushi.e 0
pop.v.i global.mercy
pushi.e 11
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[36]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [38]

:[37]
pushi.e 1
pop.v.i global.interact

:[38]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [40]

:[39]
pushi.e 47
pop.v.i global.typer
pushi.e 6
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.msc
pushi.e 8
pop.v.i global.faceemotion
push.s "obj_core_enemyevent_182"@11279
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_core_enemyevent_183"@11281
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_core_enemyevent_184"@11283
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_core_enemyevent_185"@11285
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_core_enemyevent_186"@11286
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_core_enemyevent_187"@11287
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_core_enemyevent_188"@11288
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 13
pop.v.i self.con

:[40]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [42]

:[41]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [43]

:[42]
push.e 0

:[43]
bf [45]

:[44]
pushi.e 14
pop.v.i self.con
pushi.e 179
pop.v.i global.plot
pushi.e 0
pop.v.i global.interact
call.i instance_destroy(argc=0)
popz.v

:[45]
push.v self.con
pushi.e 3
cmp.i.v GT
bf [end]

:[46]
pushi.e 1262
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[47]
push.v 1262.y
push.v 1576.y
pushi.e 60
sub.i.v
cmp.v.v GT
bf [end]

:[48]
pushi.e 0
pop.v.i 1262.vspeed

:[end]