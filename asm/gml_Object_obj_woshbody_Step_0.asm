.localvar 0 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v GT
bf [end]

:[1]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [7]

:[2]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [6]

:[3]
pushi.e 784
pushenv [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
popenv [4]

:[6]
pushi.e 2
pop.v.i global.myfight
pushi.e 9
pop.v.i global.mnfight

:[7]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
pushi.e 1
pop.v.i self.bull
pushi.e 1
pop.v.i 291.bull
pushi.e 267
pop.v.i 291.sprite_index
pushi.e 290
pop.v.i self.aaron
pushi.e 3
pop.v.i self.con
pushi.e 45
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[9]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [11]

:[10]
pushi.e 33
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_woshbody_221"@29998
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
pushi.e 80
add.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 5
pop.v.i self.con

:[11]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [13]

:[12]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [18]

:[15]
push.s "obj_woshbody_228"@30000
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.aaron
conv.v.i
pushenv [17]

:[16]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
pushi.e 80
add.i.v
call.i scr_blcon(argc=3)
popz.v

:[17]
popenv [16]
pushi.e 2
pop.v.i 291.shake
pushi.e 6
pop.v.i self.con

:[18]
push.v self.con
pushi.e 6
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
push.s "obj_woshbody_236"@30002
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
pushi.e 80
add.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 7
pop.v.i self.con

:[23]
push.v self.con
pushi.e 7
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
bf [30]

:[27]
push.s "obj_woshbody_243"@30004
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.aaron
conv.v.i
pushenv [29]

:[28]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
pushi.e 80
add.i.v
call.i scr_blcon(argc=3)
popz.v

:[29]
popenv [28]
pushi.e 2
pop.v.i 291.shake
pushi.e 8
pop.v.i self.con

:[30]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [32]

:[31]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [33]

:[32]
push.e 0

:[33]
bf [35]

:[34]
push.s "obj_woshbody_251"@30006
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
pushi.e 80
add.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 9
pop.v.i self.con

:[35]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [37]

:[36]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [38]

:[37]
push.e 0

:[38]
bf [42]

:[39]
push.s "obj_woshbody_258"@30008
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.aaron
conv.v.i
pushenv [41]

:[40]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
pushi.e 100
add.i.v
call.i scr_blcon(argc=3)
popz.v

:[41]
popenv [40]
pushi.e 3
pop.v.i 291.shake
pushi.e 10
pop.v.i self.con

:[42]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [44]

:[43]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [45]

:[44]
push.e 0

:[45]
bf [47]

:[46]
push.s "obj_woshbody_266"@30010
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_woshbody_267"@30012
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
pushi.e 80
add.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 11
pop.v.i self.con

:[47]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [49]

:[48]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [50]

:[49]
push.e 0

:[50]
bf [54]

:[51]
pushi.e 4
pop.v.i self.hspeed
push.s "obj_woshbody_275"@30014
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_woshbody_276"@30016
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_woshbody_277"@30018
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 3
pop.v.i 291.shake
push.v self.aaron
conv.v.i
pushenv [53]

:[52]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
pushi.e 80
add.i.v
call.i scr_blcon(argc=3)
popz.v

:[53]
popenv [52]
pushi.e 13
pop.v.i self.con

:[54]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [56]

:[55]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [57]

:[56]
push.e 0

:[57]
bf [61]

:[58]
pushi.e -8
pop.v.i 291.vspeed
push.s "obj_woshbody_286"@30020
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
pop.v.i 291.shake
push.v self.aaron
conv.v.i
pushenv [60]

:[59]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
pushi.e 80
add.i.v
call.i scr_blcon(argc=3)
popz.v

:[60]
popenv [59]
pushi.e 14
pop.v.i self.con
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[61]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [63]

:[62]
pushi.e 1
pushi.e -5
pushi.e 95
pop.v.i [array]global.flag
pushi.e 150
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 16
pop.v.i self.con
pushi.e 8
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[63]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [end]

:[64]
pushglb.v global.currentroom
call.i room_goto(argc=1)
popz.v

:[end]