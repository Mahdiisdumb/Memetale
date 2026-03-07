.localvar 0 arguments

:[0]
push.v global.invc
pushi.e 1
sub.i.v
pop.v.v global.invc
pushglb.v global.invc
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.d 0.5
pop.v.d self.image_speed
b [3]

:[2]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed

:[3]
push.v 1575.left
conv.v.b
bf [7]

:[4]
push.v self.movement
pushi.e 1
cmp.i.v EQ
bf [7]

:[5]
push.v self.x
pushglb.v global.sp
sub.v.v
pop.v.v self.x
pushi.e 1
conv.i.v
call.i control_check(argc=1)
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.v self.x
pushglb.v global.sp
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.x

:[7]
push.v 1575.right
conv.v.b
bf [11]

:[8]
push.v self.movement
pushi.e 1
cmp.i.v EQ
bf [11]

:[9]
push.v self.x
pushglb.v global.sp
add.v.v
pop.v.v self.x
pushi.e 1
conv.i.v
call.i control_check(argc=1)
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
push.v self.x
pushglb.v global.sp
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.x

:[11]
push.v 1575.up
conv.v.b
bf [15]

:[12]
push.v self.movement
pushi.e 1
cmp.i.v EQ
bf [15]

:[13]
push.v self.y
pushglb.v global.sp
sub.v.v
pop.v.v self.y
pushi.e 1
conv.i.v
call.i control_check(argc=1)
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
push.v self.x
pushglb.v global.sp
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.x

:[15]
push.v 1575.down
conv.v.b
bf [19]

:[16]
push.v self.movement
pushi.e 1
cmp.i.v EQ
bf [19]

:[17]
push.v self.y
pushglb.v global.sp
add.v.v
pop.v.v self.y
pushi.e 1
conv.i.v
call.i control_check(argc=1)
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
push.v self.x
pushglb.v global.sp
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.x

:[19]
pushglb.v global.hp
pushi.e 1
cmp.i.v LT
bf [21]

:[20]
pushi.e 171
conv.i.v
call.i script_execute(argc=1)
popz.v

:[21]
push.v self.deleteafter
pushi.e 1
cmp.i.v EQ
bf [23]

:[22]
push.v self.blconwd
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [24]

:[23]
push.e 0

:[24]
bf [36]

:[25]
pushi.e 10
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
push.v self.blcon
call.i instance_exists(argc=1)
conv.v.b
bf [29]

:[26]
push.v self.blcon
conv.v.i
pushenv [28]

:[27]
call.i instance_destroy(argc=0)
popz.v

:[28]
popenv [27]

:[29]
push.v self.blconwd
call.i instance_exists(argc=1)
conv.v.b
bf [33]

:[30]
push.v self.blconwd
conv.v.i
pushenv [32]

:[31]
call.i instance_destroy(argc=0)
popz.v

:[32]
popenv [31]

:[33]
pushi.e 1
pop.v.i self.movement
pushi.e 170
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [35]

:[34]
pushi.e 0
pop.v.i 170.face_index
pushi.e 0
pop.v.i 170.face_speed

:[35]
pushi.e 0
pop.v.i self.deleteafter

:[36]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [39]

:[37]
push.v self.movement
pushi.e 1
cmp.i.v EQ
bf [39]

:[38]
push.v self.canpress
pushi.e 1
cmp.i.v EQ
b [40]

:[39]
push.e 0

:[40]
bf [end]

:[41]
pushi.e 170
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[42]
pushi.e 28
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.bodypart
push.v 170.x
pop.v.v self.xx
push.v 170.y
pop.v.v self.yy
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 750
conv.i.v
push.v self.yy
pushi.e 130
add.i.v
push.v self.xx
pushi.e 86
add.i.v
push.v self.yy
pushi.e 58
add.i.v
push.v self.xx
pushi.e 24
add.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [44]

:[43]
pushi.e 1
pop.v.i self.bodypart

:[44]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 750
conv.i.v
push.v self.yy
pushi.e 164
add.i.v
push.v self.xx
pushi.e 110
add.i.v
push.v self.yy
pushi.e 56
add.i.v
push.v self.xx
pushi.e 84
add.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [46]

:[45]
pushi.e 2
pop.v.i self.bodypart

:[46]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 750
conv.i.v
push.v self.yy
pushi.e 112
add.i.v
push.v self.xx
pushi.e 24
add.i.v
push.v self.yy
pushi.e 66
add.i.v
push.v self.xx
pushi.e 0
add.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [48]

:[47]
pushi.e 2
pop.v.i self.bodypart

:[48]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 750
conv.i.v
push.v self.yy
pushi.e 172
add.i.v
push.v self.xx
pushi.e 138
add.i.v
push.v self.yy
pushi.e 144
add.i.v
push.v self.xx
pushi.e 90
add.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [50]

:[49]
pushi.e 3
pop.v.i self.bodypart

:[50]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 750
conv.i.v
push.v self.yy
pushi.e 146
add.i.v
push.v self.xx
pushi.e 44
add.i.v
push.v self.yy
pushi.e 112
add.i.v
push.v self.xx
pushi.e 0
add.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [52]

:[51]
pushi.e 3
pop.v.i self.bodypart

:[52]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 750
conv.i.v
push.v self.yy
pushi.e 196
add.i.v
push.v self.xx
pushi.e 84
add.i.v
push.v self.yy
pushi.e 130
add.i.v
push.v self.xx
pushi.e 34
add.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [54]

:[53]
pushi.e 4
pop.v.i self.bodypart

:[54]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 750
conv.i.v
push.v self.yy
pushi.e 216
add.i.v
push.v self.xx
pushi.e 124
add.i.v
push.v self.yy
pushi.e 196
add.i.v
push.v self.xx
pushi.e 12
add.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [56]

:[55]
pushi.e 5
pop.v.i self.bodypart

:[56]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 750
conv.i.v
push.v self.yy
pushi.e 58
add.i.v
push.v self.xx
pushi.e 88
add.i.v
push.v self.yy
push.v self.xx
pushi.e 36
add.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [58]

:[57]
pushi.e 6
pop.v.i self.bodypart

:[58]
push.v self.bodypart
pushi.e 0
cmp.i.v GT
bf [end]

:[59]
pushi.e 1
pop.v.i self.deleteafter
push.v self.bodypart
pushi.e 2
cmp.i.v EQ
bf [61]

:[60]
push.s "obj_dateheart_158"@11579
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dateheart_159"@11581
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_dateheart_160"@11583
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_dateheart_161"@11585
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[61]
push.v self.bodypart
pushi.e 1
cmp.i.v EQ
bf [63]

:[62]
push.s "obj_dateheart_165"@11587
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dateheart_166"@11589
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_dateheart_167"@11591
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_dateheart_168"@11593
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[63]
push.v self.bodypart
pushi.e 3
cmp.i.v EQ
bf [65]

:[64]
push.s "obj_dateheart_172"@11595
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dateheart_173"@11597
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[65]
push.v self.bodypart
pushi.e 4
cmp.i.v EQ
bf [67]

:[66]
push.s "obj_dateheart_177"@11599
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dateheart_178"@11601
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[67]
push.v self.bodypart
pushi.e 5
cmp.i.v EQ
bf [69]

:[68]
push.s "obj_dateheart_182"@11603
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dateheart_183"@11605
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_dateheart_184"@11607
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[69]
push.v self.bodypart
pushi.e 6
cmp.i.v EQ
bf [71]

:[70]
push.s "obj_dateheart_188"@11609
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[71]
push.v self.bodypart
pushi.e 6
cmp.i.v LT
bf [73]

:[72]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[73]
push.v self.bodypart
pushi.e 6
cmp.i.v EQ
bf [end]

:[74]
pushi.e 47
pop.v.i 170.cn
call.i instance_destroy(argc=0)
popz.v

:[end]