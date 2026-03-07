.localvar 0 arguments

:[0]
push.v self.conversation
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.fade
push.d 0.5
push.v self.fade
conv.v.i
pop.v.d [stacktop]self.fadespeed
push.s "music/papyrus.ogg"@2632
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
pushi.e 1
conv.i.v
push.d 0.6
conv.d.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
pushi.e 3
pop.v.i self.myinteract
pushi.e 0
pop.v.i global.msc
pushi.e 19
pop.v.i global.typer
pushi.e 4
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e 1
pop.v.i global.interact
push.v self.papyrus
conv.v.i
push.v [stacktop]self.ltsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.sans
conv.v.i
push.v [stacktop]self.ltsprite
push.v self.sans
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.s "obj_papyrus3_177"@20449
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
pop.v.v self.mydialoguer
pushi.e 2
pop.v.i self.conversation

:[2]
push.v self.conversation
pushi.e 2
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
pushi.e 3
pop.v.i self.conversation
pushi.e 1339
conv.i.v
push.v self.papyrus
conv.v.i
push.v [stacktop]self.y
pushi.e 12
sub.i.v
push.v self.papyrus
conv.v.i
push.v [stacktop]self.x
pushi.e 3
add.i.v
call.i instance_create(argc=3)
pop.v.v self.xxblcon
pushi.e 45
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[7]
push.v self.conversation
pushi.e 4
cmp.i.v EQ
bf [11]

:[8]
pushi.e 0
pop.v.i global.msc
pushi.e 19
pop.v.i global.typer
pushi.e 4
pop.v.i global.facechoice
pushi.e 1
pop.v.i global.faceemotion
pushi.e 1
pop.v.i global.interact
pushi.e 1426
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.s "obj_papyrus3_200"@20451
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sansface(argc=2)
popz.v
push.s "obj_papyrus3_202"@20453
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papyrus3_203"@20455
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
push.s "obj_papyrus3_206"@20457
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[10]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer
pushi.e 6
pop.v.i self.conversation

:[11]
push.v self.conversation
pushi.e 6
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
bf [16]

:[15]
pushi.e 1010
conv.i.v
pushi.e 0
conv.i.v
pushi.e 10
conv.i.v
call.i instance_create(argc=3)
popz.v
push.v self.papyrus
conv.v.i
push.v [stacktop]self.ltsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.sans
conv.v.i
push.v [stacktop]self.ltsprite
push.v self.sans
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 1
pop.v.i 1576.cutscene
pushi.e -4
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_object
pushi.e 7
pop.v.i self.conversation
pushi.e 220
pop.v.i self.x
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.solid

:[16]
push.v self.conversation
pushi.e 8
cmp.i.v EQ
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
bf [21]

:[20]
pushi.e 22
pop.v.i self.conversation

:[21]
push.v self.conversation
pushi.e 22
cmp.i.v EQ
bf [27]

:[22]
pushi.e 1
pop.v.i global.interact
pushi.e 228
pop.v.i global.msc
pushi.e 1
pop.v.i global.faceemotion
pushi.e 4
pop.v.i global.facechoice
pushi.e 19
pop.v.i global.typer
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [26]

:[23]
pushi.e 0
pop.v.i global.msc
pushi.e -5
pushi.e 254
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [25]

:[24]
push.s "obj_papyrus3_245"@20459
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sansface(argc=2)
popz.v
push.s "obj_papyrus3_247"@20461
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_papyrus3_249"@20462
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_papyrus3_250"@20464
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
b [26]

:[25]
push.s "obj_papyrus3_254"@20466
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sansface(argc=2)
popz.v
push.s "obj_papyrus3_256"@20467
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papyrus3_257"@20469
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 4
conv.i.v
pushi.e 4
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_papyrus3_259"@20471
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_papyrus3_260"@20473
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg

:[26]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer
pushi.e 23
pop.v.i self.conversation

:[27]
push.v self.conversation
pushi.e 23
cmp.i.v EQ
bf [29]

:[28]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [30]

:[29]
push.e 0

:[30]
bf [32]

:[31]
pushi.e 5
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 1
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.fun
push.v self.papyrus
conv.v.i
push.v [stacktop]self.rsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.d 0.25
push.v self.papyrus
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.hhh
push.d 0.05
push.v self.hhh
conv.v.i
pop.v.d [stacktop]self.fadespeed
pushi.e 30
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 24
pop.v.i self.conversation

:[32]
push.v self.conversation
pushi.e 25
cmp.i.v EQ
bf [end]

:[33]
push.s "music/snowy.ogg"@2633
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
push.d 0.95
conv.d.v
pushi.e 1
conv.i.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
pushi.e 47
pop.v.i global.plot
pushi.e 0
pop.v.i global.interact
pushi.e 1010
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [37]

:[34]
pushi.e 1010
pushenv [36]

:[35]
call.i instance_destroy(argc=0)
popz.v

:[36]
popenv [35]

:[37]
pushi.e 1024
conv.i.v
push.v self.sans
conv.v.i
push.v [stacktop]self.y
push.v self.sans
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
popz.v
push.v self.sans
conv.v.i
pushenv [39]

:[38]
call.i instance_destroy(argc=0)
popz.v

:[39]
popenv [38]
push.v self.papyrus
conv.v.i
pushenv [41]

:[40]
call.i instance_destroy(argc=0)
popz.v

:[41]
popenv [40]
call.i instance_destroy(argc=0)
popz.v

:[end]