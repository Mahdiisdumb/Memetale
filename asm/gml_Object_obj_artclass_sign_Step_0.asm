.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_depth(argc=5)
popz.v
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [25]

:[1]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [24]

:[2]
pushi.e 1
pop.v.i global.interact
pushi.e 3
pop.v.i self.myinteract
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i self.skip
push.s "obj_artclass_sign_208"@9777
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.murd
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.skip
push.s "obj_artclass_sign_213"@9779
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[4]
pushi.e -5
pushi.e 281
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
push.s "obj_artclass_sign_218"@9781
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.skip

:[6]
pushi.e -5
pushi.e 281
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
push.s "obj_artclass_sign_224"@9783
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.skip

:[8]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bt [10]

:[9]
pushi.e -5
pushi.e 8
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [11]

:[10]
push.e 1

:[11]
bf [13]

:[12]
push.s "obj_artclass_sign_231"@9785
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.skip

:[13]
push.v self.skip
pushi.e 0
cmp.i.v EQ
bf [23]

:[14]
pushbltn.v self.current_month
pushi.e 10
cmp.i.v EQ
bf [16]

:[15]
pushbltn.v self.current_day
pushi.e 10
cmp.i.v EQ
b [17]

:[16]
push.e 0

:[17]
bf [23]

:[18]
pushbltn.v self.current_hour
pushi.e 8
cmp.i.v EQ
bt [20]

:[19]
pushbltn.v self.current_hour
pushi.e 20
cmp.i.v EQ
b [21]

:[20]
push.e 1

:[21]
bf [23]

:[22]
pushi.e 1
pop.v.i self.con
pushi.e -1
pop.v.i self.myinteract

:[23]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer
push.v self.talkedto
pushi.e 1
add.i.v
pop.v.v self.talkedto
b [25]

:[24]
pushi.e 0
pop.v.i self.myinteract

:[25]
push.v self.myinteract
pushi.e 3
cmp.i.v EQ
bf [28]

:[26]
push.v self.mydialoguer
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [28]

:[27]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.myinteract

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
bf [33]

:[32]
pushi.e 0
pop.v.i global.facing
pushi.e 50
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 2
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i global.interact

:[33]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [35]

:[34]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [36]

:[35]
push.e 0

:[36]
bf [38]

:[37]
pushi.e 0
pop.v.i global.facing
pushi.e 1
pop.v.i global.interact

:[38]
push.v self.con
pushi.e 3
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
push.s "obj_artclass_sign_281"@9787
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_artclass_sign_282"@9789
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
call.i scr_regulartext(argc=0)
popz.v
pushi.e 4
pop.v.i self.con

:[43]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [45]

:[44]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [46]

:[45]
push.e 0

:[46]
bf [48]

:[47]
pushi.e 20
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1762
conv.i.v
pushi.e 240
conv.i.v
push.v 1576.x
pushi.e 10
sub.i.v
call.i scr_marker(argc=3)
pop.v.v self.sory
pushi.e -5
push.v self.sory
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 1000
push.v self.sory
conv.v.i
pop.v.i [stacktop]self.depth
push.d 0.5
push.v self.sory
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 5
pop.v.i self.con

:[48]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [53]

:[49]
push.v self.sory
conv.v.i
push.v [stacktop]self.y
push.v 1576.y
pushi.e 15
add.i.v
cmp.v.v LTE
bf [53]

:[50]
push.v self.sory
conv.v.i
pushenv [52]

:[51]
call.i instance_destroy(argc=0)
popz.v

:[52]
popenv [51]
pushi.e 21
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1084
conv.i.v
pushi.e -5
conv.i.v
pushi.e -5
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.dk
pushi.e 300
push.v self.dk
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 300
push.v self.dk
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 6
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[53]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [57]

:[54]
push.v self.dk
conv.v.i
pushenv [56]

:[55]
call.i instance_destroy(argc=0)
popz.v

:[56]
popenv [55]
pushi.e 140
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
pushi.e 8
pop.v.i self.con
pushi.e 31
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[57]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [end]

:[58]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i global.mercy
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.con
pushi.e -1
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[end]