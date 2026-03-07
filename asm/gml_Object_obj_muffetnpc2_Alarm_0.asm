.localvar 0 arguments

:[0]
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
push.s "obj_muffetnpc2_75"@18564
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_muffetnpc2_76"@18566
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [15]

:[1]
push.s "obj_muffetnpc2_81"@18568
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_muffetnpc2_82"@18570
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_muffetnpc2_83"@18572
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_muffetnpc2_84"@18574
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_muffetnpc2_85"@18576
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 59
push.v [array]global.flag
pushi.e 1
cmp.i.v GTE
bf [3]

:[2]
push.s "obj_muffetnpc2_87"@18578
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[3]
pushi.e -5
pushi.e 59
push.v [array]global.flag
pushi.e 13
cmp.i.v GTE
bf [5]

:[4]
push.s "obj_muffetnpc2_89"@18580
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[5]
pushi.e -5
pushi.e 59
push.v [array]global.flag
pushi.e 25
cmp.i.v GTE
bf [7]

:[6]
push.s "obj_muffetnpc2_91"@18582
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[7]
pushi.e -5
pushi.e 59
push.v [array]global.flag
pushi.e 40
cmp.i.v GTE
bf [9]

:[8]
push.s "obj_muffetnpc2_93"@18584
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[9]
pushi.e -5
pushi.e 59
push.v [array]global.flag
pushi.e 70
cmp.i.v GTE
bf [11]

:[10]
push.s "obj_muffetnpc2_95"@18586
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[11]
pushi.e -5
pushi.e 59
push.v [array]global.flag
pushi.e 100
cmp.i.v GTE
bf [13]

:[12]
push.s "obj_muffetnpc2_99"@18588
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_muffetnpc2_100"@18590
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[13]
pushi.e -5
pushi.e 59
push.v [array]global.flag
pushi.e 9000
cmp.i.v GTE
bf [15]

:[14]
push.s "obj_muffetnpc2_105"@18592
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_muffetnpc2_106"@18594
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[15]
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

:[end]