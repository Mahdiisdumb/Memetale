.localvar 0 arguments

:[0]
pushi.e 3
pop.v.i self.myinteract
pushi.e 0
pop.v.i global.msc
pushi.e 19
pop.v.i global.typer
pushi.e 4
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushbltn.v self.room
pushi.e 59
cmp.i.v EQ
bf [9]

:[1]
push.s "obj_papyrus_room_119"@20955
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrus_room_120"@20957
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papyrus_room_121"@20959
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papyrus_room_122"@20961
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_papyrus_room_123"@20962
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 1003
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [9]

:[2]
push.v self.x
push.v 1003.x
pushi.e 100
sub.i.v
cmp.v.v GT
bf [9]

:[3]
push.v self.dtsprite
pop.v.v self.sprite_index
push.s "obj_papyrus_room_129"@20964
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrus_room_130"@20966
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papyrus_room_131"@20968
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papyrus_room_132"@20970
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_papyrus_room_133"@20972
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_papyrus_room_134"@20974
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.v self.talkedto
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
push.s "obj_papyrus_room_135"@20976
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrus_room_136"@20978
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[5]
push.v self.talkedto
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
pushi.e 692
pop.v.i global.msc

:[7]
push.v self.talkedto
pushi.e 2
cmp.i.v GT
bf [9]

:[8]
pushi.e 694
pop.v.i global.msc

:[9]
pushbltn.v self.room
pushi.e 117
cmp.i.v EQ
bf [40]

:[10]
pushi.e 1
pop.v.i self.dir
pushi.e 0
pop.v.i self.d
pushglb.v global.plot
pushi.e 122
cmp.i.v LT
bf [12]

:[11]
pushi.e 1
pop.v.i self.d

:[12]
pushi.e -5
pushi.e 354
push.v [array]global.flag
pushi.e 2
cmp.i.v LT
bf [14]

:[13]
pushi.e 1
pop.v.i self.d

:[14]
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
pushi.e 1
pop.v.i self.d

:[16]
pushi.e -5
pushi.e 88
push.v [array]global.flag
pushi.e 3
cmp.i.v LT
bf [18]

:[17]
pushi.e 1
pop.v.i self.d

:[18]
pushi.e -5
pushi.e 350
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
pushi.e 1
pop.v.i self.d

:[20]
pushi.e -5
pushi.e 350
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [22]

:[21]
pushi.e 1
pop.v.i self.d

:[22]
pushglb.v global.kills
pushi.e 0
cmp.i.v GT
bf [24]

:[23]
pushi.e 1
pop.v.i self.d

:[24]
push.v self.d
pushi.e 1
cmp.i.v EQ
bf [37]

:[25]
push.s "obj_papyrus_room_157"@20980
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushglb.v global.kills
pushi.e 0
cmp.i.v GT
bf [28]

:[26]
push.s "obj_papyrus_room_161"@20982
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrus_room_162"@20984
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papyrus_room_163"@20986
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papyrus_room_164"@20988
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_papyrus_room_165"@20990
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_papyrus_room_166"@20992
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_papyrus_room_167"@20994
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_papyrus_room_168"@20996
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_papyrus_room_169"@20998
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_papyrus_room_170"@21000
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_papyrus_room_171"@21002
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_papyrus_room_172"@21004
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_papyrus_room_173"@21006
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.v self.talkedto
pushi.e 0
cmp.i.v GT
bf [28]

:[27]
push.s "obj_papyrus_room_176"@21008
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrus_room_177"@21010
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papyrus_room_178"@21012
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papyrus_room_179"@21014
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[28]
pushi.e -5
pushi.e 350
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [31]

:[29]
push.s "obj_papyrus_room_185"@21016
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrus_room_186"@21018
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papyrus_room_187"@21020
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papyrus_room_188"@21022
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_papyrus_room_189"@21024
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_papyrus_room_190"@21026
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_papyrus_room_191"@21028
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_papyrus_room_192"@21030
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_papyrus_room_193"@21032
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.v self.talkedto
pushi.e 0
cmp.i.v GT
bf [31]

:[30]
push.s "obj_papyrus_room_196"@21034
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[31]
pushi.e -5
pushi.e 350
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [34]

:[32]
push.s "obj_papyrus_room_202"@21036
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrus_room_203"@21038
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papyrus_room_204"@21040
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papyrus_room_205"@21042
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_papyrus_room_206"@21044
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_papyrus_room_207"@21046
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_papyrus_room_208"@21048
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_papyrus_room_209"@21050
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_papyrus_room_210"@21052
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_papyrus_room_211"@21054
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.v self.talkedto
pushi.e 0
cmp.i.v GT
bf [34]

:[33]
push.s "obj_papyrus_room_214"@21056
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[34]
pushglb.v global.plot
pushi.e 122
cmp.i.v LT
bf [37]

:[35]
push.s "obj_papyrus_room_220"@21057
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrus_room_221"@21059
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papyrus_room_222"@21061
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papyrus_room_223"@21063
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.v self.talkedto
pushi.e 0
cmp.i.v GT
bf [37]

:[36]
push.s "obj_papyrus_room_226"@21064
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[37]
push.v self.d
pushi.e 0
cmp.i.v EQ
bf [40]

:[38]
pushi.e 698
pop.v.i global.msc
push.v self.talkedto
pushi.e 0
cmp.i.v GT
bf [40]

:[39]
pushi.e 700
pop.v.i global.msc

:[40]
pushbltn.v self.room
pushi.e 68
cmp.i.v EQ
bf [54]

:[41]
push.s "obj_papyrus_room_244"@21066
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrus_room_245"@21068
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e -5
pushi.e 354
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [43]

:[42]
push.s "obj_papyrus_room_248"@21070
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrus_room_249"@21072
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[43]
pushi.e -5
pushi.e 354
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [45]

:[44]
push.s "obj_papyrus_room_253"@21074
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrus_room_254"@21076
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papyrus_room_255"@21078
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[45]
pushi.e 1315
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [54]

:[46]
push.s "obj_papyrus_room_259"@21080
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrus_room_260"@21082
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushglb.v global.plot
pushi.e 175
cmp.i.v GT
bf [48]

:[47]
push.s "obj_papyrus_room_263"@21084
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrus_room_264"@21086
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papyrus_room_265"@21088
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papyrus_room_266"@21090
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_papyrus_room_267"@21092
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[48]
pushi.e -5
pushi.e 493
push.v [array]global.flag
pushi.e 8
cmp.i.v EQ
bf [50]

:[49]
push.s "obj_papyrus_room_272"@21094
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrus_room_273"@21096
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[50]
pushi.e -5
pushi.e 493
push.v [array]global.flag
pushi.e 9
cmp.i.v EQ
bf [52]

:[51]
push.s "obj_papyrus_room_278"@21098
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrus_room_279"@21100
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papyrus_room_280"@21102
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papyrus_room_281"@21104
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_papyrus_room_282"@21106
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_papyrus_room_283"@21108
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg

:[52]
pushi.e -5
pushi.e 493
push.v [array]global.flag
pushi.e 10
cmp.i.v EQ
bf [54]

:[53]
push.s "obj_papyrus_room_287"@21110
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papyrus_room_288"@21112
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papyrus_room_289"@21114
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papyrus_room_290"@21116
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[54]
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