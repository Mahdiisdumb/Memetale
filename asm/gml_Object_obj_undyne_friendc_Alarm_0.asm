.localvar 0 arguments

:[0]
pushi.e 3
pop.v.i self.myinteract
pushi.e 0
pop.v.i global.msc
pushi.e 37
pop.v.i global.typer
pushi.e 5
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [15]

:[1]
push.s "obj_undyne_friendc_76"@28551
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undyne_friendc_77"@28553
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_undyne_friendc_78"@28555
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_undyne_friendc_80"@28557
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 5
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "obj_undyne_friendc_82"@28559
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
push.s "obj_undyne_friendc_84"@28561
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 9
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "obj_undyne_friendc_86"@28563
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 11
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_undyne_friendc_88"@28565
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.v self.talkedto
pushi.e 0
cmp.i.v GT
bf [3]

:[2]
push.s "obj_undyne_friendc_92"@28567
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undyne_friendc_93"@28569
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_undyne_friendc_95"@28571
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 4
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "obj_undyne_friendc_97"@28573
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_undyne_friendc_99"@28575
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 8
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "obj_undyne_friendc_101"@28577
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 10
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_undyne_friendc_103"@28579
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_undyne_friendc_104"@28581
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg

:[3]
pushi.e -5
pushi.e 493
push.v [array]global.flag
pushi.e 9
cmp.i.v EQ
bf [11]

:[4]
pushi.e 1
pop.v.i global.faceemotion
push.s "obj_undyne_friendc_112"@28583
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undyne_friendc_113"@28585
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e -5
pushi.e 494
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bt [6]

:[5]
pushi.e -5
pushi.e 494
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
b [7]

:[6]
push.e 1

:[7]
bf [11]

:[8]
pushi.e 57
conv.i.v
call.i scr_itemget(argc=1)
popz.v
push.v self.noroom
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
pushi.e 1
pop.v.i global.faceemotion
push.s "obj_undyne_friendc_121"@28587
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undyne_friendc_122"@28589
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
b [11]

:[10]
pushi.e 1
pop.v.i global.faceemotion
push.s "obj_undyne_friendc_127"@28591
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undyne_friendc_128"@28593
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_undyne_friendc_129"@28595
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_undyne_friendc_130"@28597
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_undyne_friendc_131"@28599
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_undyne_friendc_132"@28601
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_undyne_friendc_133"@28603
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_undyne_friendc_134"@28605
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_undyne_friendc_135"@28606
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_undyne_friendc_136"@28608
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
pushi.e 3
pushi.e -5
pushi.e 494
pop.v.i [array]global.flag

:[11]
pushi.e -5
pushi.e 493
push.v [array]global.flag
pushi.e 8
cmp.i.v EQ
bf [15]

:[12]
pushi.e 56
conv.i.v
call.i scr_itemget(argc=1)
popz.v
push.v self.noroom
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
pushi.e 9
pop.v.i global.faceemotion
push.s "obj_undyne_friendc_149"@28610
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undyne_friendc_150"@28612
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
b [15]

:[14]
pushi.e 9
pop.v.i global.faceemotion
push.s "obj_undyne_friendc_155"@28614
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undyne_friendc_156"@28616
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_undyne_friendc_157"@28618
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_undyne_friendc_158"@28620
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_undyne_friendc_159"@28622
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_undyne_friendc_160"@28624
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_undyne_friendc_161"@28626
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_undyne_friendc_162"@28628
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_undyne_friendc_163"@28630
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_undyne_friendc_164"@28631
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_undyne_friendc_165"@28633
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
push.s "obj_undyne_friendc_167"@28635
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_undyne_friendc_168"@28637
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_undyne_friendc_169"@28639
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
pushi.e 9
pushi.e -5
pushi.e 493
pop.v.i [array]global.flag
pushi.e 1
pushi.e -5
pushi.e 8
pop.v.i [array]global.flag

:[15]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [24]

:[16]
pushi.e -5
pushi.e 193
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [18]

:[17]
pushi.e 806
pop.v.i global.msc

:[18]
pushi.e -5
pushi.e 193
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
push.s "obj_undyne_friendc_187"@28641
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undyne_friendc_188"@28643
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_undyne_friendc_189"@28645
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_undyne_friendc_190"@28647
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 4
conv.i.v
call.i scr_alface(argc=2)
popz.v
push.s "obj_undyne_friendc_192"@28649
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 6
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "obj_undyne_friendc_194"@28651
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg

:[20]
pushi.e -5
pushi.e 193
push.v [array]global.flag
pushi.e 2
cmp.i.v GTE
bf [23]

:[21]
push.s "obj_undyne_friendc_199"@28653
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undyne_friendc_200"@28655
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e -5
pushi.e 194
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [23]

:[22]
pushi.e 1
pushi.e -5
pushi.e 194
pop.v.i [array]global.flag

:[23]
pushi.e -5
pushi.e 193
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag

:[24]
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