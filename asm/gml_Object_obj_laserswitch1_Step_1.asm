.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 370
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [7]

:[1]
pushglb.v global.hp
pushi.e 1
cmp.i.v EQ
bf [7]

:[2]
pushi.e -5
pushi.e 372
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [7]

:[3]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [7]

:[4]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [7]

:[5]
pushi.e -5
pushi.e 367
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushglb.v global.plot
pushi.e 184
cmp.i.v LT
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 0
pop.v.i global.msc
push.s "obj_laserswitch1_119"@15005
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_laserswitch1_120"@15006
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_laserswitch1_121"@15008
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_laserswitch1_122"@15010
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
call.i scr_regulartext(argc=0)
popz.v
pushi.e 105
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i global.interact
push.d 0.5
pop.v.d self.con

:[10]
push.v self.con
push.d 0.5
cmp.d.v EQ
bf [12]

:[11]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 1
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [16]

:[14]
pushi.e 1283
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [16]

:[15]
pushi.e 0
pop.v.i 1283.active
pushi.e 30
pushi.e 1283
pushi.e 0
pop.v.i [array]self.alarm

:[16]
push.v self.con
push.d 0.5
cmp.d.v EQ
bf [18]

:[17]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [19]

:[18]
push.e 0

:[19]
bf [23]

:[20]
pushi.e 90
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.sc
push.v self.sc
conv.v.i
pushenv [22]

:[21]
pushi.e 133
pop.v.i self.sound1
pushi.e 13
pop.v.i self.sound2
pushi.e 8
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[22]
popenv [21]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
push.d 0.6
pop.v.d self.con
pushi.e 0
pop.v.i self.timer

:[23]
push.v self.con
push.d 0.6
cmp.d.v EQ
bf [28]

:[24]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 30
cmp.i.v GT
bf [28]

:[25]
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_laserswitch1_161"@15011
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_laserswitch1_162"@15013
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_laserswitch1_163"@15015
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_laserswitch1_164"@15016
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_laserswitch1_165"@15018
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_laserswitch1_166"@15020
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_laserswitch1_167"@15022
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_laserswitch1_168"@15024
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_laserswitch1_169"@15026
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_laserswitch1_170"@15027
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_laserswitch1_171"@15028
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
pushbltn.v self.room
pushi.e 166
cmp.i.v EQ
bf [27]

:[26]
push.s "obj_laserswitch1_174"@15029
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_laserswitch1_175"@15031
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_laserswitch1_176"@15033
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_laserswitch1_177"@15035
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_laserswitch1_178"@15036
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_laserswitch1_179"@15037
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg

:[27]
call.i scr_regulartext(argc=0)
popz.v

:[28]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [30]

:[29]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [31]

:[30]
push.e 0

:[31]
bf [end]

:[32]
pushi.e 90
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.sc
push.v self.sc
conv.v.i
pushenv [34]

:[33]
pushi.e 133
pop.v.i self.sound1
pushi.e 13
pop.v.i self.sound2
pushi.e 8
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[34]
popenv [33]
pushi.e 1
pushi.e -5
pushi.e 372
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.interact
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 2
pop.v.i self.con

:[end]