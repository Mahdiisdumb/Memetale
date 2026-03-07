.localvar 0 arguments

:[0]
pushi.e 50
pop.v.i self.image_xscale
pushi.e 0
pop.v.i self.conversation
pushglb.v global.plot
pushi.e 17
cmp.i.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
b [5]

:[2]
pushi.e 4
pop.v.i global.typer
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
push.s "obj_torieltrigger6_39"@27616
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_torieltrigger6_40"@27618
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_torieltrigger6_41"@27620
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_torieltrigger6_42"@27622
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_torieltrigger6_43"@27624
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_torieltrigger6_44"@27626
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_torieltrigger6_45"@27628
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e -5
pushi.e 6
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.s "obj_torieltrigger6_49"@27629
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_torieltrigger6_50"@27631
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_torieltrigger6_51"@27633
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_torieltrigger6_52"@27635
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_torieltrigger6_53"@27636
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_torieltrigger6_54"@27637
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_torieltrigger6_55"@27639
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_torieltrigger6_56"@27641
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg

:[4]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1
pop.v.i self.conversation

:[5]
pushi.e 1
pop.v.i self.volume
pushi.e 0
pop.v.i self.fademusicout

:[end]