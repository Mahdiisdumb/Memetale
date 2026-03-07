.localvar 0 arguments

:[0]
pushi.e 3
pop.v.i self.myinteract
pushi.e 0
pop.v.i global.msc
push.s "obj_smallfrog_61"@25633
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_smallfrog_62"@25635
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_smallfrog_63"@25637
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_smallfrog_64"@25639
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_smallfrog_65"@25641
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_smallfrog_66"@25643
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e -5
pushi.e 6
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.s "obj_smallfrog_70"@25644
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_smallfrog_71"@25645
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_smallfrog_72"@25647
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_smallfrog_73"@25649
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_smallfrog_74"@25651
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[2]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.s "obj_smallfrog_79"@25652
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_smallfrog_80"@25654
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_smallfrog_81"@25656
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_smallfrog_82"@25658
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[4]
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushbltn.v self.room
pushi.e 29
cmp.i.v EQ
bf [9]

:[5]
push.s "obj_smallfrog_90"@25660
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_smallfrog_91"@25662
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_smallfrog_92"@25664
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_smallfrog_93"@25666
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_smallfrog_94"@25668
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.s "obj_smallfrog_97"@25670
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_smallfrog_98"@25672
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_smallfrog_99"@25674
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_smallfrog_100"@25676
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[7]
pushi.e -5
pushi.e 6
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
push.s "obj_smallfrog_105"@25677
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_smallfrog_106"@25678
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_smallfrog_107"@25680
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_smallfrog_108"@25682
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_smallfrog_109"@25684
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[9]
pushbltn.v self.room
pushi.e 21
cmp.i.v EQ
bf [12]

:[10]
push.v self.x
pushi.e 300
cmp.i.v GT
bf [12]

:[11]
push.v self.x
pushi.e 400
cmp.i.v LT
b [13]

:[12]
push.e 0

:[13]
bf [19]

:[14]
pushi.e 0
pop.v.i global.msc
pushglb.v global.osflavor
pushi.e 2
cmp.i.v LTE
bf [16]

:[15]
push.s "obj_smallfrog_117"@25686
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_smallfrog_118"@25688
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_smallfrog_119"@25690
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_smallfrog_120"@25692
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
b [17]

:[16]
push.s "obj_smallfrog_117_console"@25694
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_smallfrog_118_console"@25696
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_smallfrog_119_console"@25698
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_smallfrog_120_console"@25700
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[17]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
push.s "obj_smallfrog_124"@25702
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[19]
pushbltn.v self.room
pushi.e 21
cmp.i.v EQ
bf [21]

:[20]
push.v self.x
pushi.e 400
cmp.i.v GT
b [22]

:[21]
push.e 0

:[22]
bf [36]

:[23]
pushi.e -5
pushi.e 22
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [25]

:[24]
pushi.e 748
pop.v.i global.msc

:[25]
pushi.e -5
pushi.e 22
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [27]

:[26]
pushi.e 751
pop.v.i global.msc

:[27]
pushi.e -5
pushi.e 22
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [29]

:[28]
pushi.e 753
pop.v.i global.msc

:[29]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [36]

:[30]
pushi.e 0
pop.v.i global.msc
pushi.e -5
pushi.e 22
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [32]

:[31]
push.s "obj_smallfrog_140"@25704
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_smallfrog_141"@25706
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[32]
pushi.e -5
pushi.e 22
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [34]

:[33]
push.s "obj_smallfrog_145"@25708
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_smallfrog_146"@25710
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[34]
pushi.e -5
pushi.e 22
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [36]

:[35]
push.s "obj_smallfrog_150"@25712
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_smallfrog_151"@25714
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[36]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [end]

:[37]
pushi.e 1
pop.v.i global.interact
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer

:[end]