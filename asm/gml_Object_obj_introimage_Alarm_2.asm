.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.visible
pushi.e 1
pop.v.i self.act
pushi.e 0
pop.v.i self.dongs
pushi.e 0
pop.v.i self.image_speed
pushi.e 1
pop.v.i self.vol
push.d 0.91
conv.d.v
pushi.e 1
conv.i.v
push.v self.intromusic
call.i caster_play(argc=3)
popz.v
pushi.e 11
pop.v.i global.typer
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.msc
pushi.e 99
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i self.fadercreator
pushi.e 0
pop.v.i self.skip
push.s "obj_introimage_70"@14529
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_introimage_71"@14531
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_introimage_72"@14533
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_introimage_73"@14535
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_introimage_74"@14537
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_introimage_75"@14539
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_introimage_76"@14541
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_introimage_78"@14543
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_introimage_79"@14545
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_introimage_80"@14547
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_introimage_81"@14549
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_introimage_82"@14551
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_introimage_83"@14553
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_introimage_84"@14555
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_introimage_85"@14556
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
pushi.e 140
conv.i.v
pushi.e 40
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mywriter
pushi.e 5
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]