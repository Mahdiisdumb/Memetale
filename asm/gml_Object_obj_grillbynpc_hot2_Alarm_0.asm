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
push.s "obj_grillbynpc_hot2_73"@13984
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_grillbynpc_hot2_74"@13986
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_grillbynpc_hot2_75"@13988
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.talkedto
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.s "obj_grillbynpc_hot2_77"@13990
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[2]
push.v self.sansmode
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.s "obj_grillbynpc_hot2_81"@13992
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_grillbynpc_hot2_82"@13994
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[4]
pushglb.v global.plot
pushi.e 122
cmp.i.v GTE
bf [6]

:[5]
push.s "obj_grillbynpc_hot2_87"@13996
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[6]
call.i scr_deaddog(argc=0)
conv.v.b
bf [8]

:[7]
push.s "obj_grillbynpc_hot2_92"@13998
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_grillbynpc_hot2_93"@14000
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_grillbynpc_hot2_94"@14002
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[8]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
push.s "obj_grillbynpc_hot2_101"@14004
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_grillbynpc_hot2_102"@14006
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_grillbynpc_hot2_103"@14008
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[10]
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
push.s "obj_grillbynpc_hot2_109"@14010
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_grillbynpc_hot2_110"@14012
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[12]
pushi.e -5
pushi.e 350
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
push.s "obj_grillbynpc_hot2_115"@14014
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_grillbynpc_hot2_116"@14016
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[14]
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