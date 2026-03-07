.localvar 0 arguments

:[0]
push.v self.t
pushi.e 1
cmp.i.v EQ
bf [4]

:[1]
push.d 0.25
pop.v.d 1576.image_speed
push.v self.vol
push.d 0.06
cmp.d.v GT
bf [3]

:[2]
push.v self.vol
push.d 0.04
sub.d.v
pop.v.v self.vol
push.v self.vol
pushglb.v global.currentsong
call.i caster_set_volume(argc=2)
popz.v
b [4]

:[3]
pushi.e 0
pop.v.i self.vol
pushglb.v global.currentsong
call.i caster_pause(argc=1)
popz.v

:[4]
push.v self.t
pushi.e 4
cmp.i.v EQ
bf [6]

:[5]
push.s "music/dogmeander.ogg"@2642
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.dogmeander
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e 1
pop.v.i global.interact
push.s "obj_forcedright_142"@13203
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_forcedright_143"@13205
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 5
pop.v.i self.t
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[6]
push.v self.t
pushi.e 5
cmp.i.v EQ
bf [8]

:[7]
pushi.e 780
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [15]

:[10]
push.d 1.4
conv.d.v
pushi.e 1
conv.i.v
push.v self.dogmeander
call.i caster_play(argc=3)
popz.v
pushi.e 6
pop.v.i self.t
push.v self.dog1
conv.v.i
pushenv [12]

:[11]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 37
conv.i.v
call.i path_start(argc=4)
popz.v

:[12]
popenv [11]
push.v self.dog2
conv.v.i
pushenv [14]

:[13]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 36
conv.i.v
call.i path_start(argc=4)
popz.v

:[14]
popenv [13]

:[15]
push.v self.t
pushi.e 6
cmp.i.v EQ
bf [17]

:[16]
pushi.e 998
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [18]

:[17]
push.e 0

:[18]
bf [21]

:[19]
push.v self.dog1
conv.v.i
push.v [stacktop]self.path_position
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
pushi.e 0
push.v self.dog1
conv.v.i
pop.v.i [stacktop]self.path_speed
pushi.e 0
push.v self.dog2
conv.v.i
pop.v.i [stacktop]self.path_speed
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 7
pop.v.i self.t

:[21]
push.v self.t
pushi.e 8
cmp.i.v EQ
bf [23]

:[22]
push.v self.dogmeander
call.i caster_free(argc=1)
popz.v
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_forcedright_175"@13207
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_forcedright_176"@13209
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_forcedright_177"@13211
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 9
pop.v.i self.t
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[23]
push.v self.t
pushi.e 9
cmp.i.v EQ
bf [25]

:[24]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [26]

:[25]
push.e 0

:[26]
bf [28]

:[27]
pushi.e 25
pop.v.i global.battlegroup
pushi.e 0
pushi.e -5
pushi.e 200
pop.v.i [array]global.flag
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
pushi.e 10
pop.v.i self.t

:[28]
pushglb.v global.plot
pushi.e 50
cmp.i.v EQ
bf [30]

:[29]
push.v self.t
pushi.e 10
cmp.i.v EQ
b [31]

:[30]
push.e 0

:[31]
bf [39]

:[32]
pushi.e 1
pop.v.i global.interact
pushi.e -5
pushi.e 53
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [38]

:[33]
pushi.e 51
pop.v.i global.plot
pushi.e 0
pop.v.i global.interact
push.v self.dog1
conv.v.i
pushenv [35]

:[34]
call.i instance_destroy(argc=0)
popz.v

:[35]
popenv [34]
push.v self.dog2
conv.v.i
pushenv [37]

:[36]
call.i instance_destroy(argc=0)
popz.v

:[37]
popenv [36]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[38]
pushi.e 11
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 11
pop.v.i self.t

:[39]
push.v self.t
pushi.e 11
cmp.i.v EQ
bf [41]

:[40]
pushi.e 1
pop.v.i global.interact

:[41]
pushglb.v global.plot
pushi.e 50
cmp.i.v EQ
bf [43]

:[42]
push.v self.t
pushi.e 12
cmp.i.v EQ
b [44]

:[43]
push.e 0

:[44]
bf [52]

:[45]
pushi.e 0
pop.v.i global.mercy
pushi.e 1
pop.v.i global.interact
pushi.e -5
pushi.e 53
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bt [47]

:[46]
pushi.e -5
pushi.e 53
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
b [48]

:[47]
push.e 1

:[48]
bf [52]

:[49]
push.s "obj_forcedright_220"@13213
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_forcedright_221"@13215
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e -5
pushi.e 53
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [51]

:[50]
push.s "obj_forcedright_224"@13217
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_forcedright_225"@13219
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[51]
pushi.e 14
pop.v.i self.t
call.i scr_regulartext(argc=0)
popz.v

:[52]
push.v self.t
pushi.e 14
cmp.i.v EQ
bf [54]

:[53]
pushi.e 780
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [55]

:[54]
push.e 0

:[55]
bf [57]

:[56]
pushi.e 99
pop.v.i self.vol
pushi.e 4
push.v self.dog1
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 4
push.v self.dog2
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 40
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 15
pop.v.i self.t

:[57]
push.v self.t
pushi.e 15
cmp.i.v EQ
bf [60]

:[58]
push.v self.vol
push.v self.vol1
cmp.v.v LT
bf [60]

:[59]
push.v self.vol
push.d 0.03
add.d.v
pop.v.v self.vol
push.v self.vol
pushglb.v global.currentsong
call.i caster_set_volume(argc=2)
popz.v

:[60]
push.v self.t
pushi.e 16
cmp.i.v EQ
bf [end]

:[61]
pushi.e 0
pop.v.i global.interact
pushi.e 51
pop.v.i global.plot
call.i instance_destroy(argc=0)
popz.v

:[end]