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
push.s "obj_grillbynpc_doggo_74"@13897
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_grillbynpc_doggo_75"@13899
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushglb.v global.plot
pushi.e 122
cmp.i.v GTE
bf [2]

:[1]
push.s "obj_grillbynpc_doggo_79"@13901
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_grillbynpc_doggo_80"@13903
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_grillbynpc_doggo_81"@13905
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[2]
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.s "obj_grillbynpc_doggo_86"@13907
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[4]
pushi.e -5
pushi.e 350
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
push.s "obj_grillbynpc_doggo_91"@13909
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[6]
push.v self.sansmode
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
push.s "obj_grillbynpc_doggo_96"@13911
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_grillbynpc_doggo_97"@13913
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[8]
pushi.e -5
pushi.e 53
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
push.s "obj_grillbynpc_doggo_101"@13915
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_grillbynpc_doggo_102"@13917
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[10]
pushi.e -5
pushi.e 53
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
pushi.e -5
pushi.e 54
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
push.s "obj_grillbynpc_doggo_104"@13919
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_grillbynpc_doggo_105"@13921
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_grillbynpc_doggo_106"@13923
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[15]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
push.s "obj_grillbynpc_doggo_110"@13925
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_grillbynpc_doggo_111"@13927
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[17]
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