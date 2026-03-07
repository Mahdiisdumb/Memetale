.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i global.msc
push.s "obj_boysnightout_80"@10816
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.d 1.1
pop.v.d self.con
call.i scr_regulartext(argc=0)
popz.v

:[2]
push.v self.con
push.d 1.1
cmp.d.v EQ
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
bf [15]

:[6]
pushi.e 1
pop.v.i global.facing
pushi.e 1937
conv.i.v
pushi.e 310
conv.i.v
pushi.e 545
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.dragon
pushi.e 1935
conv.i.v
pushi.e 290
conv.i.v
pushi.e 530
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.rabbit
push.v self.dragon
conv.v.i
pushenv [8]

:[7]
call.i scr_depth(argc=0)
popz.v

:[8]
popenv [7]
push.v self.rabbit
conv.v.i
pushenv [10]

:[9]
call.i scr_depth(argc=0)
popz.v

:[10]
popenv [9]
push.v self.dragon
conv.v.i
pushenv [12]

:[11]
push.d 0.25
pop.v.d self.image_speed

:[12]
popenv [11]
push.v self.rabbit
conv.v.i
pushenv [14]

:[13]
push.d 0.25
pop.v.d self.image_speed

:[14]
popenv [13]
pushi.e -3
push.v self.dragon
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e -3
push.v self.rabbit
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 2
pop.v.i self.con

:[15]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [21]

:[16]
push.v self.dragon
conv.v.i
push.v [stacktop]self.x
push.v 1576.x
pushi.e 70
add.i.v
cmp.v.v LT
bf [18]

:[17]
push.v self.rabbit
conv.v.i
push.v [stacktop]self.x
push.v 1576.x
pushi.e 70
add.i.v
cmp.v.v LT
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
pushi.e 0
pop.v.i 1365.hspeed
pushi.e 0
pop.v.i 1365.image_speed
pushi.e 0
pop.v.i 1365.image_index
pushi.e 3
pop.v.i self.con

:[21]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [23]

:[22]
push.s "obj_boysnightout_113"@10818
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_boysnightout_114"@10820
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_boysnightout_115"@10822
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_boysnightout_116"@10824
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_boysnightout_117"@10825
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
call.i scr_regulartext(argc=0)
popz.v
pushi.e 4
pop.v.i self.con

:[23]
push.v self.con
pushi.e 4
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
bf [32]

:[27]
push.v self.dragon
conv.v.i
pushenv [29]

:[28]
pushi.e 1938
pop.v.i self.sprite_index

:[29]
popenv [28]
push.v self.rabbit
conv.v.i
pushenv [31]

:[30]
pushi.e 1936
pop.v.i self.sprite_index

:[31]
popenv [30]
pushi.e 3
pop.v.i 1365.hspeed
pushi.e 3
pop.v.i 1576.hspeed
push.d 0.25
pop.v.d 1365.image_speed
push.d 0.25
pop.v.d 1576.image_speed
pushi.e 5
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[32]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [34]

:[33]
pushi.e 0
pop.v.i 1365.hspeed
pushi.e 0
pop.v.i 1365.image_speed
pushi.e 0
pop.v.i 1365.image_index
pushi.e 7
pop.v.i self.con
pushi.e 3
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[34]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [36]

:[35]
pushi.e 0
pop.v.i 1576.hspeed
pushi.e 0
pop.v.i 1576.image_speed
pushi.e 0
pop.v.i 1576.image_index
pushi.e 9
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[36]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [40]

:[37]
push.v self.rabbit
conv.v.i
pushenv [39]

:[38]
pushi.e 1934
pop.v.i self.sprite_index

:[39]
popenv [38]
push.s "obj_boysnightout_156"@10827
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_boysnightout_157"@10829
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_boysnightout_158"@10831
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
call.i scr_regulartext(argc=0)
popz.v
pushi.e 11
pop.v.i self.con

:[40]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [42]

:[41]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 1
cmp.i.v EQ
b [43]

:[42]
push.e 0

:[43]
bf [44]

:[44]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [46]

:[45]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [47]

:[46]
push.e 0

:[47]
bf [53]

:[48]
push.v self.rabbit
conv.v.i
pushenv [50]

:[49]
pushi.e 1935
pop.v.i self.sprite_index

:[50]
popenv [49]
push.v self.dragon
conv.v.i
pushenv [52]

:[51]
pushi.e 1937
pop.v.i self.sprite_index

:[52]
popenv [51]
pushi.e 12
pop.v.i self.con
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[53]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [57]

:[54]
push.v self.rabbit
conv.v.i
pushenv [56]

:[55]
pushi.e 1934
pop.v.i self.sprite_index

:[56]
popenv [55]
push.s "obj_boysnightout_181"@10833
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_boysnightout_182"@10835
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_boysnightout_183"@10837
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_boysnightout_184"@10839
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 14
pop.v.i self.con
call.i scr_regulartext(argc=0)
popz.v

:[57]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [59]

:[58]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 1
cmp.i.v EQ
b [60]

:[59]
push.e 0

:[60]
bf [69]

:[61]
push.v 784.stringno
pushi.e 2
cmp.i.v EQ
bf [65]

:[62]
push.v self.rabbit
conv.v.i
pushenv [64]

:[63]
pushi.e 1936
pop.v.i self.sprite_index

:[64]
popenv [63]

:[65]
push.v 784.stringno
pushi.e 3
cmp.i.v EQ
bf [69]

:[66]
push.v self.rabbit
conv.v.i
pushenv [68]

:[67]
pushi.e 1935
pop.v.i self.sprite_index

:[68]
popenv [67]

:[69]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [71]

:[70]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [72]

:[71]
push.e 0

:[72]
bf [74]

:[73]
pushi.e 49
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
pushi.e 15
pop.v.i self.con
pushi.e 33
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[74]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [end]

:[75]
pushi.e 0
pop.v.i global.mercy
pushi.e 0
pop.v.i global.interact
pushglb.v global.currentsong
call.i caster_resume(argc=1)
popz.v
pushi.e -5
pushi.e 12
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [77]

:[76]
pushi.e 1
pushi.e -5
pushi.e 402
pop.v.i [array]global.flag

:[77]
pushi.e 17
pop.v.i self.con
pushi.e 146
pop.v.i global.plot
pushi.e 1365
pushenv [79]

:[78]
call.i instance_destroy(argc=0)
popz.v

:[79]
popenv [78]

:[end]