.localvar 0 arguments

:[0]
pushi.e 3
pop.v.i self.myinteract
pushi.e 0
pop.v.i global.msc
pushi.e 47
pop.v.i global.typer
pushi.e 6
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e -5
pushi.e 196
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 808
pop.v.i global.msc

:[2]
pushi.e -5
pushi.e 196
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.s "obj_alphys_friendc_81"@9542
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_alphys_friendc_82"@9544
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_alphys_friendc_83"@9546
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_alphys_friendc_84"@9548
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_alphys_friendc_85"@9550
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[4]
pushi.e -5
pushi.e 196
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
push.s "obj_alphys_friendc_90"@9552
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_alphys_friendc_91"@9554
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 2
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "obj_alphys_friendc_93"@9556
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_alphys_friendc_94"@9558
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 7
conv.i.v
pushi.e 5
conv.i.v
call.i scr_alface(argc=2)
popz.v
push.s "obj_alphys_friendc_96"@9560
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_alphys_friendc_97"@9562
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 8
conv.i.v
call.i scr_sansface(argc=2)
popz.v
push.s "obj_alphys_friendc_99"@9564
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_alphys_friendc_100"@9566
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 11
conv.i.v
call.i scr_alface(argc=2)
popz.v
push.s "obj_alphys_friendc_102"@9568
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 13
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_alphys_friendc_104"@9570
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 15
conv.i.v
call.i scr_alface(argc=2)
popz.v
push.s "obj_alphys_friendc_106"@9572
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 17
conv.i.v
call.i scr_sansface(argc=2)
popz.v
push.s "obj_alphys_friendc_108"@9574
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 19
conv.i.v
call.i scr_torface(argc=2)
popz.v
push.s "obj_alphys_friendc_110"@9576
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 20
pop.v.v [array]global.msg
push.s "obj_alphys_friendc_111"@9577
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 21
pop.v.v [array]global.msg
push.s "obj_alphys_friendc_112"@9579
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 22
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 23
conv.i.v
call.i scr_alface(argc=2)
popz.v
push.s "obj_alphys_friendc_114"@9581
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 24
pop.v.v [array]global.msg

:[6]
pushi.e -5
pushi.e 196
push.v [array]global.flag
pushi.e 3
cmp.i.v GTE
bf [8]

:[7]
push.s "obj_alphys_friendc_119"@9583
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_alphys_friendc_120"@9585
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_alphys_friendc_121"@9587
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[8]
pushi.e -5
pushi.e 196
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag
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