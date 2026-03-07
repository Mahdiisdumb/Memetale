.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i global.interact
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
pushi.e 6
pop.v.i self.con

:[2]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [4]

:[3]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 7
pop.v.i self.con
pushi.e 30
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[7]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [9]

:[8]
pushi.e 1
pop.v.i global.interact

:[9]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [11]

:[10]
pushi.e 1
pop.v.i global.mercy
pushi.e 1
pushi.e -5
pushi.e 15
pop.v.i [array]global.flag
pushi.e 60
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

:[11]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [15]

:[12]
pushi.e 1262
pushenv [14]

:[13]
call.i instance_destroy(argc=0)
popz.v

:[14]
popenv [13]
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

:[15]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [17]

:[16]
pushi.e 1
pop.v.i global.interact

:[17]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [21]

:[18]
pushi.e 105
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.msc
pushi.e 8
pop.v.i global.faceemotion
push.s "obj_core_enemyevent2_142"@11289
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_core_enemyevent2_143"@11290
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_core_enemyevent2_144"@11292
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_core_enemyevent2_145"@11294
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_core_enemyevent2_146"@11296
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_core_enemyevent2_147"@11297
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_core_enemyevent2_148"@11298
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e -5
pushi.e 416
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [20]

:[19]
push.s "obj_core_enemyevent2_152"@11299
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_core_enemyevent2_153"@11300
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_core_enemyevent2_154"@11302
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_core_enemyevent2_155"@11304
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_core_enemyevent2_156"@11306
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_core_enemyevent2_157"@11307
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_core_enemyevent2_158"@11308
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg

:[20]
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

:[21]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [23]

:[22]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [24]

:[23]
push.e 0

:[24]
bf [end]

:[25]
pushi.e 14
pop.v.i self.con
pushi.e 1
pushi.e -5
pushi.e 417
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.interact
call.i instance_destroy(argc=0)
popz.v

:[end]