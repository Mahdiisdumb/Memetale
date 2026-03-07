.localvar 0 arguments

:[0]
pushi.e 3
pop.v.i self.myinteract
pushi.e 0
pop.v.i global.msc
pushi.e 17
pop.v.i global.typer
pushi.e 3
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e -5
pushi.e 192
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [17]

:[1]
pushi.e -5
pushi.e 41
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [7]

:[2]
push.s "obj_sans_friendc_75"@23566
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_torface(argc=2)
popz.v
push.s "obj_sans_friendc_77"@23568
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e -5
pushi.e 42
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [4]

:[3]
push.s "obj_sans_friendc_79"@23570
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[4]
pushi.e -5
pushi.e 42
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
push.s "obj_sans_friendc_81"@23572
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[6]
pushi.e 1
conv.i.v
pushi.e 4
conv.i.v
call.i scr_sansface(argc=2)
popz.v
push.s "obj_sans_friendc_83"@23574
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 6
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_sans_friendc_85"@23576
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_sans_friendc_86"@23578
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 9
conv.i.v
call.i scr_sansface(argc=2)
popz.v
push.s "obj_sans_friendc_88"@23580
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 11
conv.i.v
call.i scr_torface(argc=2)
popz.v
push.s "obj_sans_friendc_90"@23582
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_sans_friendc_91"@23584
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_sans_friendc_92"@23586
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 15
conv.i.v
call.i scr_alface(argc=2)
popz.v
push.s "obj_sans_friendc_94"@23588
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_sans_friendc_95"@23590
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
push.s "obj_sans_friendc_96"@23592
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]global.msg
push.s "obj_sans_friendc_97"@23594
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 19
pop.v.v [array]global.msg

:[7]
pushi.e -5
pushi.e 41
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
pushi.e -5
pushi.e 42
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
push.s "obj_sans_friendc_102"@23596
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sans_friendc_103"@23598
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_sans_friendc_104"@23600
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
call.i scr_torface(argc=2)
popz.v
push.s "obj_sans_friendc_106"@23602
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_sans_friendc_107"@23604
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
call.i scr_sansface(argc=2)
popz.v
push.s "obj_sans_friendc_109"@23606
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_sans_friendc_110"@23608
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 9
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_sans_friendc_112"@23610
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 11
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "obj_sans_friendc_114"@23612
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
pushi.e 4
conv.i.v
pushi.e 13
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_sans_friendc_116"@23614
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 15
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "obj_sans_friendc_118"@23616
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_sans_friendc_119"@23618
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 18
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_sans_friendc_121"@23620
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 19
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 20
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "obj_sans_friendc_123"@23622
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 21
pop.v.v [array]global.msg
pushi.e 7
conv.i.v
pushi.e 22
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_sans_friendc_125"@23624
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 23
pop.v.v [array]global.msg

:[12]
pushi.e -5
pushi.e 41
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
pushi.e -5
pushi.e 42
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
push.s "obj_sans_friendc_131"@23626
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_torface(argc=2)
popz.v
push.s "obj_sans_friendc_133"@23628
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_asgface(argc=2)
popz.v
push.s "obj_sans_friendc_135"@23629
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 5
conv.i.v
call.i scr_alface(argc=2)
popz.v
push.s "obj_sans_friendc_137"@23631
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 7
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_sans_friendc_139"@23633
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_sans_friendc_140"@23635
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 10
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "obj_sans_friendc_142"@23637
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_sans_friendc_143"@23639
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 13
conv.i.v
call.i scr_torface(argc=2)
popz.v
push.s "obj_sans_friendc_145"@23641
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 15
conv.i.v
call.i scr_alface(argc=2)
popz.v
push.s "obj_sans_friendc_147"@23643
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg

:[17]
pushi.e -5
pushi.e 192
push.v [array]global.flag
pushi.e 1
cmp.i.v GTE
bf [19]

:[18]
push.s "obj_sans_friendc_154"@23645
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sans_friendc_155"@23647
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 4
conv.i.v
pushi.e 2
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_sans_friendc_157"@23649
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 4
conv.i.v
call.i scr_sansface(argc=2)
popz.v
push.s "obj_sans_friendc_159"@23651
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg

:[19]
pushi.e -5
pushi.e 192
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