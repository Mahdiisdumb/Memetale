.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [19]

:[1]
pushi.e 0
pop.v.i global.facechoice
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
pushi.e -5
pushi.e 90
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [3]

:[2]
push.s "obj_monsterkidtrigger3_134"@18360
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[3]
pushi.e -5
pushi.e 90
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [8]

:[4]
pushi.e -5
pushi.e 85
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
push.s "obj_monsterkidtrigger3_140"@18362
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_monsterkidtrigger3_141"@18364
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 3
pushi.e -5
pushi.e 90
pop.v.i [array]global.flag

:[6]
pushi.e -5
pushi.e 85
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
push.s "obj_monsterkidtrigger3_146"@18366
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[8]
pushi.e -5
pushi.e 90
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [13]

:[9]
pushi.e -5
pushi.e 85
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
push.s "obj_monsterkidtrigger3_154"@18367
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[11]
pushi.e -5
pushi.e 85
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
push.s "obj_monsterkidtrigger3_158"@18369
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_monsterkidtrigger3_159"@18371
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 2
pushi.e -5
pushi.e 90
pop.v.i [array]global.flag

:[13]
pushi.e -5
pushi.e 90
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [18]

:[14]
pushi.e -5
pushi.e 85
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
push.s "obj_monsterkidtrigger3_167"@18373
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_monsterkidtrigger3_168"@18375
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 2
pushi.e -5
pushi.e 90
pop.v.i [array]global.flag

:[16]
pushi.e -5
pushi.e 85
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [18]

:[17]
push.s "obj_monsterkidtrigger3_173"@18377
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_monsterkidtrigger3_174"@18379
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 1
pushi.e -5
pushi.e 90
pop.v.i [array]global.flag

:[18]
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

:[19]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [21]

:[20]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [22]

:[21]
push.e 0

:[22]
bf [26]

:[23]
push.v self.mkid
conv.v.i
pushenv [25]

:[24]
pushi.e 1
pop.v.i self.follow
push.v self.dsprite
pop.v.v self.sprite_index

:[25]
popenv [24]
pushi.e 1
pop.v.i global.interact
pushi.e 3
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[26]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [34]

:[27]
push.v self.mkid
call.i instance_exists(argc=1)
conv.v.b
bf [34]

:[28]
push.v self.mkid
conv.v.i
push.v [stacktop]self.follow
pushi.e 3
cmp.i.v EQ
bf [34]

:[29]
pushi.e 0
pop.v.i global.msc
push.v self.mkid
conv.v.i
pushenv [31]

:[30]
push.v self.rtsprite
pop.v.v self.sprite_index

:[31]
popenv [30]
push.v self.mkid
conv.v.i
pushenv [33]

:[32]
push.d 0.25
pop.v.d self.image_speed

:[33]
popenv [32]
push.s "obj_monsterkidtrigger3_201"@18381
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 5
pop.v.i global.typer
pushi.e 1
pop.v.i global.interact
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 5
pop.v.i self.con

:[34]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [36]

:[35]
push.v self.con
pushi.e 5
cmp.i.v EQ
b [37]

:[36]
push.e 0

:[37]
bf [41]

:[38]
pushi.e 6
pop.v.i self.con
push.s "rain"@50357
conv.s.v
call.i trophy_unlock(argc=1)
popz.v
pushi.e 0
pop.v.i global.interact
push.v self.mkid
conv.v.i
pushenv [40]

:[39]
push.v self.rsprite
pop.v.v self.sprite_index

:[40]
popenv [39]
pushi.e 60
pop.v.i self.x

:[41]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [43]

:[42]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [44]

:[43]
push.e 0

:[44]
bf [46]

:[45]
pushi.e 8
pop.v.i self.con
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.follow
pushi.e 8
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.hspeed
push.v self.mkid
conv.v.i
push.v [stacktop]self.rsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.d 0.5
push.v self.mkid
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[46]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [end]

:[47]
push.v self.mkid
conv.v.i
pushenv [49]

:[48]
call.i instance_destroy(argc=0)
popz.v

:[49]
popenv [48]
pushi.e 0
pop.v.i global.interact
pushi.e 1124
conv.i.v
push.v self.ystart
push.v self.xstart
call.i instance_create(argc=3)
pop.v.v self.t
pushi.e 2
push.v self.t
conv.v.i
pop.v.i [stacktop]self.numero
call.i instance_destroy(argc=0)
popz.v

:[end]