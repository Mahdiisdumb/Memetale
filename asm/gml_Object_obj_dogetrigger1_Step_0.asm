.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 52
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.visible

:[2]
push.v self.conversation
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushglb.v global.currentsong
call.i caster_pause(argc=1)
popz.v
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.image_yscale
pushi.e 1
pop.v.i self.visible
pushi.e 1384
pop.v.i self.sprite_index
push.d 0.1
pop.v.d self.image_speed
pushi.e 140
pop.v.i self.y
push.d -0.5
pop.v.d self.vspeed
pushi.e 2
pop.v.i self.conversation

:[4]
push.v self.conversation
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
push.v self.y
pushi.e 120
cmp.i.v LTE
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
pushi.e 120
pop.v.i self.y
pushi.e 20
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 3
pop.v.i self.conversation
pushi.e 0
pop.v.i self.vspeed

:[9]
push.v self.conversation
pushi.e 4
cmp.i.v EQ
bf [13]

:[10]
push.s "obj_dogetrigger1_108"@11756
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dogetrigger1_109"@11758
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_dogetrigger1_110"@11760
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_dogetrigger1_111"@11762
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
call.i scr_murderlv(argc=0)
pushi.e 2
cmp.i.v GTE
bf [12]

:[11]
push.s "obj_dogetrigger1_114"@11763
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dogetrigger1_115"@11764
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_dogetrigger1_116"@11766
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_dogetrigger1_117"@11768
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[12]
call.i scr_regulartext(argc=0)
popz.v
pushi.e 5
pop.v.i self.conversation

:[13]
push.v self.conversation
pushi.e 5
cmp.i.v EQ
bf [15]

:[14]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
pushi.e 23
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
push.d 5.5
pop.v.d self.conversation

:[18]
pushglb.v global.plot
pushi.e 41
cmp.i.v EQ
bf [20]

:[19]
push.v self.conversation
push.d 5.5
cmp.d.v EQ
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
pushi.e 1
pop.v.i global.interact
pushi.e 11
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
push.d 5.6
pop.v.d self.conversation

:[23]
push.v self.conversation
push.d 5.6
cmp.d.v EQ
bf [25]

:[24]
pushi.e 1
pop.v.i global.interact

:[25]
pushglb.v global.plot
pushi.e 41
cmp.i.v EQ
bf [27]

:[26]
push.v self.conversation
pushi.e 6
cmp.i.v EQ
b [28]

:[27]
push.e 0

:[28]
bf [38]

:[29]
pushglb.v global.currentsong
call.i caster_resume(argc=1)
popz.v
pushi.e 0
pop.v.i global.mercy
pushi.e 1
pop.v.i global.interact
pushi.e -5
pushi.e 52
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [31]

:[30]
pushi.e 42
pop.v.i global.plot
pushi.e 0
pop.v.i global.interact
call.i instance_destroy(argc=0)
popz.v
exit.i

:[31]
pushi.e -5
pushi.e 52
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bt [33]

:[32]
pushi.e -5
pushi.e 52
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
b [34]

:[33]
push.e 1

:[34]
bf [38]

:[35]
push.s "obj_dogetrigger1_156"@11770
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dogetrigger1_157"@11772
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e -5
pushi.e 52
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [37]

:[36]
push.s "obj_dogetrigger1_160"@11774
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_dogetrigger1_161"@11776
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_dogetrigger1_162"@11778
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_dogetrigger1_163"@11780
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[37]
pushi.e 7
pop.v.i self.conversation
call.i scr_regulartext(argc=0)
popz.v

:[38]
push.v self.conversation
pushi.e 7
cmp.i.v EQ
bf [40]

:[39]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [41]

:[40]
push.e 0

:[41]
bf [43]

:[42]
pushi.e 1
pop.v.i self.vspeed
pushi.e 20
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 8
pop.v.i self.conversation

:[43]
push.v self.conversation
pushi.e 9
cmp.i.v EQ
bf [end]

:[44]
pushi.e 0
pop.v.i self.vspeed
pushi.e 42
pop.v.i global.plot
pushi.e 0
pop.v.i global.interact
call.i instance_destroy(argc=0)
popz.v

:[end]