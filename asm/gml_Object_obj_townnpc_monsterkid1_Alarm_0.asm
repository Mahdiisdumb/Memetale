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
push.s "obj_townnpc_monsterkid1_80"@28010
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_townnpc_monsterkid1_81"@28012
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.talkedto
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.s "obj_townnpc_monsterkid1_82"@28014
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[2]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [12]

:[3]
pushi.e -5
pushi.e 98
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [6]

:[4]
push.s "obj_townnpc_monsterkid1_88"@28016
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_townnpc_monsterkid1_89"@28018
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_townnpc_monsterkid1_90"@28020
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_townnpc_monsterkid1_91"@28022
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.v self.talkedto
pushi.e 0
cmp.i.v GT
bf [6]

:[5]
push.s "obj_townnpc_monsterkid1_93"@28023
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[6]
pushi.e -5
pushi.e 98
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [9]

:[7]
push.s "obj_townnpc_monsterkid1_97"@28025
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_townnpc_monsterkid1_98"@28027
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.talkedto
pushi.e 0
cmp.i.v GT
bf [9]

:[8]
push.s "obj_townnpc_monsterkid1_100"@28028
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[9]
pushi.e -5
pushi.e 98
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [12]

:[10]
push.s "obj_townnpc_monsterkid1_104"@28030
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_townnpc_monsterkid1_105"@28032
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_townnpc_monsterkid1_106"@28034
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_townnpc_monsterkid1_107"@28036
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_townnpc_monsterkid1_108"@28038
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_townnpc_monsterkid1_109"@28040
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.v self.talkedto
pushi.e 0
cmp.i.v GT
bf [12]

:[11]
push.s "obj_townnpc_monsterkid1_111"@28042
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[12]
call.i scr_murderlv(argc=0)
pushi.e 7
cmp.i.v GTE
bf [14]

:[13]
push.s "obj_townnpc_monsterkid1_117"@28044
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_townnpc_monsterkid1_118"@28046
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_townnpc_monsterkid1_119"@28048
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[14]
pushbltn.v self.room
pushi.e 83
cmp.i.v EQ
bf [27]

:[15]
push.s "obj_townnpc_monsterkid1_122"@28050
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_townnpc_monsterkid1_123"@28052
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_townnpc_monsterkid1_124"@28054
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_townnpc_monsterkid1_125"@28056
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.v self.talkedto
pushi.e 0
cmp.i.v GT
bf [17]

:[16]
push.s "obj_townnpc_monsterkid1_127"@28058
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[17]
push.v self.talkedto
pushi.e 0
cmp.i.v GT
bf [19]

:[18]
push.v self.con
pushi.e 2
cmp.i.v EQ
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
push.s "obj_townnpc_monsterkid1_129"@28060
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_townnpc_monsterkid1_130"@28062
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[22]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [24]

:[23]
push.v self.talkedto
pushi.e 0
cmp.i.v GT
b [25]

:[24]
push.e 0

:[25]
bf [27]

:[26]
push.s "obj_townnpc_monsterkid1_132"@28064
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_townnpc_monsterkid1_133"@28066
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[27]
pushbltn.v self.room
pushi.e 109
cmp.i.v EQ
bf [39]

:[28]
push.v self.talkedto
pushi.e 0
cmp.i.v EQ
bf [31]

:[29]
push.s "obj_townnpc_monsterkid1_141"@28068
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1127
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [31]

:[30]
pushi.e 4
pop.v.i 1127.con

:[31]
push.v self.talkedto
pushi.e 0
cmp.i.v GT
bf [33]

:[32]
push.s "obj_townnpc_monsterkid1_147"@28070
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[33]
pushglb.v global.plot
pushi.e 112
cmp.i.v EQ
bf [39]

:[34]
pushi.e -5
pushi.e 85
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [37]

:[35]
pushi.e 0
pop.v.i self.myinteract
pushi.e 1127
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [37]

:[36]
pushi.e 10
pop.v.i 1127.con

:[37]
pushi.e -5
pushi.e 85
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [39]

:[38]
push.s "obj_townnpc_monsterkid1_161"@28072
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer

:[39]
pushglb.v global.plot
pushi.e 112
cmp.i.v NEQ
bf [41]

:[40]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer

:[41]
push.v self.talkedto
pushi.e 1
add.i.v
pop.v.v self.talkedto

:[end]