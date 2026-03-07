.localvar 0 arguments

:[0]
pushi.e 3
pop.v.i self.myinteract
pushi.e 0
pop.v.i global.msc
pushi.e 18
pop.v.i global.typer
pushi.e 4
pop.v.i global.facechoice
pushi.e 3
pop.v.i global.faceemotion
pushi.e -5
pushi.e 195
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.s "obj_papyrus_friendc_76"@20885
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrus_friendc_77"@20887
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i scr_asgface(argc=2)
popz.v
push.s "obj_papyrus_friendc_79"@20889
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_papyrus_friendc_80"@20891
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 7
conv.i.v
pushi.e 5
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_papyrus_friendc_82"@20893
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_papyrus_friendc_83"@20895
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_papyrus_friendc_84"@20897
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_papyrus_friendc_85"@20899
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_papyrus_friendc_86"@20901
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg

:[2]
pushi.e -5
pushi.e 195
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.s "obj_papyrus_friendc_91"@20903
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrus_friendc_92"@20905
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papyrus_friendc_93"@20907
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sansface(argc=2)
popz.v
push.s "obj_papyrus_friendc_95"@20909
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 5
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_papyrus_friendc_97"@20911
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_papyrus_friendc_98"@20913
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg

:[4]
pushi.e -5
pushi.e 195
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
push.s "obj_papyrus_friendc_103"@20915
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
push.s "obj_papyrus_friendc_105"@20917
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
push.s "obj_papyrus_friendc_107"@20919
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 5
conv.i.v
call.i scr_torface(argc=2)
popz.v
push.s "obj_papyrus_friendc_109"@20921
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 7
conv.i.v
call.i scr_alface(argc=2)
popz.v
push.s "obj_papyrus_friendc_111"@20923
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
push.s "obj_papyrus_friendc_113"@20925
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg

:[6]
pushi.e -5
pushi.e 195
push.v [array]global.flag
pushi.e 3
cmp.i.v GTE
bf [8]

:[7]
push.s "obj_papyrus_friendc_118"@20927
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrus_friendc_119"@20929
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[8]
pushi.e -5
pushi.e 195
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