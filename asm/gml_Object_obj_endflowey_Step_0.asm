.localvar 0 arguments
.localvar 1 writerx 1503
.localvar 2 writery 1504

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [56]

:[1]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "AF"@47750
conv.s.v
push.s "Flowey"@31516
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.AF
pushi.e 0
conv.i.v
push.s "AK"@47751
conv.s.v
push.s "Flowey"@31516
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.AK
pushi.e 0
conv.i.v
push.s "NK"@47752
conv.s.v
push.s "Flowey"@31516
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.NK
pushi.e 0
conv.i.v
push.s "IK"@47753
conv.s.v
push.s "Flowey"@31516
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.IK
pushi.e 0
conv.i.v
push.s "CK"@47754
conv.s.v
push.s "Flowey"@31516
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.CK
pushi.e 0
conv.i.v
push.s "CHANGE"@47755
conv.s.v
push.s "Flowey"@31516
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.CHANGE
pushi.e 0
conv.i.v
push.s "EX"@47756
conv.s.v
push.s "Flowey"@31516
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.EX
pushi.e 0
conv.i.v
push.s "truename"@47757
conv.s.v
push.s "Flowey"@31516
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.truename
call.i ossafe_ini_close(argc=0)
popz.v
push.v self.EX
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 100
pop.v.i self.con

:[3]
push.v self.EX
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 110
pop.v.i self.con

:[5]
push.v self.EX
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
pushi.e 120
pop.v.i self.con

:[7]
push.v self.EX
pushi.e 3
cmp.i.v EQ
bf [9]

:[8]
pushi.e 130
pop.v.i self.con

:[9]
push.v self.EX
pushi.e 4
cmp.i.v GTE
bf [11]

:[10]
pushi.e 140
pop.v.i self.con

:[11]
pushi.e -5
pushi.e 476
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
push.v global.kills
pushi.e 1
add.i.v
pop.v.v global.kills

:[13]
push.v self.NK
pushi.e 0
cmp.i.v GT
bt [15]

:[14]
push.v self.CHANGE
pushi.e 0
cmp.i.v GT
b [16]

:[15]
push.e 1

:[16]
bf [20]

:[17]
push.v self.CHANGE
pushi.e 2
cmp.i.v LT
bf [20]

:[18]
pushglb.v global.kills
pushi.e 1
cmp.i.v GTE
bf [20]

:[19]
pushi.e 70
pop.v.i self.con

:[20]
push.v self.IK
pushi.e 0
cmp.i.v GT
bf [24]

:[21]
push.v self.CHANGE
pushi.e 0
cmp.i.v EQ
bf [24]

:[22]
pushglb.v global.kills
pushi.e 0
cmp.i.v EQ
bf [24]

:[23]
pushi.e 60
pop.v.i self.con

:[24]
push.v self.AK
pushi.e 0
cmp.i.v EQ
bf [29]

:[25]
push.v self.IK
pushi.e 0
cmp.i.v GT
bf [29]

:[26]
pushi.e -5
pushi.e 476
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [29]

:[27]
pushglb.v global.kills
pushi.e 1
cmp.i.v EQ
bf [29]

:[28]
pushi.e 30
pop.v.i self.con

:[29]
push.v self.NK
pushi.e 0
cmp.i.v EQ
bf [31]

:[30]
push.v self.IK
pushi.e 0
cmp.i.v EQ
b [32]

:[31]
push.e 0

:[32]
bf [35]

:[33]
pushglb.v global.kills
pushi.e 1
cmp.i.v GTE
bf [35]

:[34]
pushi.e 50
pop.v.i self.con

:[35]
push.v self.NK
pushi.e 0
cmp.i.v EQ
bf [37]

:[36]
push.v self.IK
pushi.e 0
cmp.i.v EQ
b [38]

:[37]
push.e 0

:[38]
bf [45]

:[39]
pushi.e -5
pushi.e 45
push.v [array]global.flag
pushi.e 4
cmp.i.v NEQ
bf [45]

:[40]
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 0
cmp.i.v LTE
bf [45]

:[41]
pushi.e -5
pushi.e 350
push.v [array]global.flag
pushi.e 1
cmp.i.v NEQ
bf [45]

:[42]
pushi.e -5
pushi.e 425
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [45]

:[43]
pushglb.v global.kills
pushi.e 0
cmp.i.v LTE
bf [45]

:[44]
pushi.e 10
pop.v.i self.con

:[45]
push.v self.AF
pushi.e 0
cmp.i.v EQ
bf [54]

:[46]
pushi.e -5
pushi.e 45
push.v [array]global.flag
pushi.e 4
cmp.i.v NEQ
bf [54]

:[47]
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 0
cmp.i.v LTE
bf [54]

:[48]
pushi.e -5
pushi.e 350
push.v [array]global.flag
pushi.e 1
cmp.i.v NEQ
bf [54]

:[49]
pushi.e -5
pushi.e 425
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [54]

:[50]
pushi.e -5
pushi.e 389
push.v [array]global.flag
pushi.e 3
cmp.i.v GTE
bf [54]

:[51]
pushi.e -5
pushi.e 493
push.v [array]global.flag
pushi.e 10
cmp.i.v GTE
bf [54]

:[52]
pushglb.v global.kills
pushi.e 0
cmp.i.v LTE
bf [54]

:[53]
pushi.e 20
pop.v.i self.con

:[54]
push.v self.truename
pushi.e 1
cmp.i.v EQ
bf [56]

:[55]
pushi.e 80
pop.v.i self.con

:[56]
pushi.e 60
pop.v.i local.writerx
pushi.e 60
pop.v.i local.writery
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [58]

:[57]
pushi.e 95
pop.v.i local.writerx

:[58]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [67]

:[59]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "NK"@47752
conv.s.v
push.s "Flowey"@31516
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v
pushi.e 0
pop.v.i global.msc
pushi.e 120
pop.v.i global.typer
push.s "obj_endflowey_188"@12129
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_endflowey_189"@12131
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_endflowey_190"@12133
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_endflowey_191"@12135
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_endflowey_192"@12137
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_endflowey_193"@12139
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_endflowey_194"@12141
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_endflowey_195"@12143
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_endflowey_196"@12145
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_endflowey_197"@12147
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_endflowey_198"@12149
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_endflowey_199"@12151
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_endflowey_200"@12153
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_endflowey_201"@12155
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_endflowey_202"@12156
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_endflowey_203"@12158
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_endflowey_204"@12160
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_endflowey_205"@12162
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
push.s "obj_endflowey_206"@12164
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]global.msg
push.s "obj_endflowey_207"@12166
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 19
pop.v.v [array]global.msg
push.s "obj_endflowey_208"@12168
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 20
pop.v.v [array]global.msg
push.s "file0"@3189
conv.s.v
call.i ossafe_file_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [61]

:[60]
push.s "obj_endflowey_211"@12170
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 20
pop.v.v [array]global.msg

:[61]
pushi.e -5
pushi.e 389
push.v [array]global.flag
pushi.e 3
cmp.i.v GTE
bf [63]

:[62]
push.s "obj_endflowey_216"@12172
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 21
pop.v.v [array]global.msg
b [64]

:[63]
push.s "obj_endflowey_219"@12174
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 21
pop.v.v [array]global.msg

:[64]
pushi.e -5
pushi.e 88
push.v [array]global.flag
pushi.e 4
cmp.i.v LT
bf [66]

:[65]
push.s "obj_endflowey_223"@12176
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 21
pop.v.v [array]global.msg

:[66]
push.s "obj_endflowey_226"@12178
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 22
pop.v.v [array]global.msg
push.s "obj_endflowey_227"@12180
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 23
pop.v.v [array]global.msg
push.s "obj_endflowey_228"@12182
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 24
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
pushloc.v local.writery
pushloc.v local.writerx
call.i instance_create(argc=3)
popz.v
pushi.e 2
pop.v.i self.con

:[67]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [69]

:[68]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "AF"@47750
conv.s.v
push.s "Flowey"@31516
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v
pushi.e 0
pop.v.i global.msc
pushi.e 120
pop.v.i global.typer
push.s "obj_endflowey_242"@12184
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_endflowey_243"@12186
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_endflowey_244"@12188
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_endflowey_245"@12190
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_endflowey_246"@12192
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
pushloc.v local.writery
pushloc.v local.writerx
call.i instance_create(argc=3)
popz.v
pushi.e 2
pop.v.i self.con

:[69]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [71]

:[70]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "AK"@47751
conv.s.v
push.s "Flowey"@31516
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v
pushi.e 0
pop.v.i global.msc
pushi.e 120
pop.v.i global.typer
push.s "obj_endflowey_259"@12194
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_endflowey_260"@12196
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_endflowey_261"@12198
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_endflowey_262"@12200
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_endflowey_263"@12202
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_endflowey_264"@12204
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_endflowey_265"@12206
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_endflowey_266"@12208
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_endflowey_267"@12210
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_endflowey_268"@12212
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_endflowey_269"@12214
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_endflowey_270"@12216
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
pushloc.v local.writery
pushloc.v local.writerx
call.i instance_create(argc=3)
popz.v
pushi.e 2
pop.v.i self.con

:[71]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [76]

:[72]
pushi.e 1
pop.v.i self.facetype
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "IK"@47753
conv.s.v
push.s "Flowey"@31516
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v
pushi.e 0
pop.v.i global.msc
pushi.e 120
pop.v.i global.typer
push.s "obj_endflowey_284"@12218
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_endflowey_285"@12220
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_endflowey_286"@12222
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_endflowey_287"@12224
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_endflowey_288"@12226
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_endflowey_289"@12228
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_endflowey_290"@12230
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_endflowey_291"@12232
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_endflowey_292"@12234
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_endflowey_293"@12236
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_endflowey_294"@12238
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
pushi.e -5
pushi.e 476
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [74]

:[73]
push.s "obj_endflowey_296"@12240
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
b [75]

:[74]
push.s "obj_endflowey_298"@12242
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg

:[75]
push.s "obj_endflowey_299"@12244
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_endflowey_300"@12246
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_endflowey_301"@12248
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_endflowey_302"@12250
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_endflowey_303"@12252
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_endflowey_304"@12254
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
pushloc.v local.writery
pushloc.v local.writerx
call.i instance_create(argc=3)
popz.v
pushi.e 2
pop.v.i self.con

:[76]
push.v self.con
pushi.e 60
cmp.i.v EQ
bf [78]

:[77]
pushi.e 1
pop.v.i self.facetype
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "CHANGE"@47755
conv.s.v
push.s "Flowey"@31516
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v
pushi.e 0
pop.v.i global.msc
pushi.e 120
pop.v.i global.typer
push.s "obj_endflowey_319"@12256
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_endflowey_320"@12258
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_endflowey_321"@12260
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_endflowey_322"@12262
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_endflowey_323"@12264
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_endflowey_324"@12266
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_endflowey_325"@12267
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_endflowey_326"@12269
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_endflowey_327"@12271
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_endflowey_328"@12273
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_endflowey_329"@12275
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_endflowey_330"@12277
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_endflowey_331"@12279
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_endflowey_332"@12281
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_endflowey_333"@12283
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_endflowey_334"@12285
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
pushloc.v local.writery
pushloc.v local.writerx
call.i instance_create(argc=3)
popz.v
pushi.e 2
pop.v.i self.con

:[78]
push.v self.con
pushi.e 70
cmp.i.v EQ
bf [80]

:[79]
pushi.e 1
pop.v.i self.facetype
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 2
conv.i.v
push.s "CHANGE"@47755
conv.s.v
push.s "Flowey"@31516
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v
pushi.e 0
pop.v.i global.msc
pushi.e 120
pop.v.i global.typer
push.s "obj_endflowey_349"@12287
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_endflowey_350"@12289
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_endflowey_351"@12291
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_endflowey_352"@12293
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_endflowey_353"@12295
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_endflowey_354"@12297
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_endflowey_355"@12299
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_endflowey_356"@12301
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_endflowey_357"@12303
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
pushloc.v local.writery
pushloc.v local.writerx
call.i instance_create(argc=3)
popz.v
pushi.e 2
pop.v.i self.con

:[80]
push.v self.con
pushi.e 80
cmp.i.v EQ
bf [85]

:[81]
pushi.e 1
pop.v.i self.facetype
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "SPECIALK"@47747
conv.s.v
push.s "Flowey"@31516
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v
pushi.e 0
pop.v.i global.msc
pushi.e 120
pop.v.i global.typer
push.s "obj_endflowey_372"@12305
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_endflowey_373"@12307
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_endflowey_374"@12309
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_endflowey_375"@12311
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_endflowey_376"@12313
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_endflowey_377"@12315
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_endflowey_378"@12317
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_endflowey_379"@12319
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushglb.v global.kills
pushi.e 3
cmp.i.v LTE
bf [83]

:[82]
push.s "obj_endflowey_382"@12321
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
b [84]

:[83]
push.s "obj_endflowey_386"@12323
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg

:[84]
push.s "obj_endflowey_389"@12325
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_endflowey_390"@12327
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_endflowey_391"@12329
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_endflowey_392"@12331
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_endflowey_393"@12333
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_endflowey_394"@12335
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_endflowey_395"@12337
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_endflowey_396"@12339
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_endflowey_397"@12341
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
push.s "obj_endflowey_398"@12343
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]global.msg
push.s "obj_endflowey_399"@12345
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 19
pop.v.v [array]global.msg
push.s "obj_endflowey_400"@12347
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 20
pop.v.v [array]global.msg
push.s "obj_endflowey_401"@12349
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 21
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
pushloc.v local.writery
pushloc.v local.writerx
call.i instance_create(argc=3)
popz.v
pushi.e 2
pop.v.i self.con

:[85]
push.v self.con
pushi.e 100
cmp.i.v EQ
bf [87]

:[86]
pushi.e 1
pop.v.i self.facetype
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "EX"@47756
conv.s.v
push.s "Flowey"@31516
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v
pushi.e 0
pop.v.i global.msc
pushi.e 120
pop.v.i global.typer
push.s "obj_endflowey_415"@12351
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_endflowey_416"@12353
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_endflowey_417"@12355
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_endflowey_418"@12357
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_endflowey_419"@12359
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_endflowey_420"@12361
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_endflowey_421"@12363
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_endflowey_422"@12365
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_endflowey_423"@12367
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_endflowey_424"@12369
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_endflowey_425"@12371
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_endflowey_426"@12372
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_endflowey_427"@12373
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_endflowey_428"@12375
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_endflowey_429"@12377
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
pushloc.v local.writery
pushloc.v local.writerx
call.i instance_create(argc=3)
popz.v
pushi.e 2
pop.v.i self.con

:[87]
push.v self.con
pushi.e 110
cmp.i.v EQ
bf [89]

:[88]
pushi.e 1
pop.v.i self.facetype
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 2
conv.i.v
push.s "EX"@47756
conv.s.v
push.s "Flowey"@31516
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v
pushi.e 0
pop.v.i global.msc
pushi.e 120
pop.v.i global.typer
push.s "obj_endflowey_443"@12379
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_endflowey_444"@12381
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_endflowey_445"@12383
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_endflowey_446"@12385
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_endflowey_447"@12387
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_endflowey_448"@12389
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_endflowey_449"@12391
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_endflowey_450"@12393
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_endflowey_451"@12395
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_endflowey_452"@12397
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_endflowey_453"@12399
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_endflowey_454"@12401
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
pushloc.v local.writery
pushloc.v local.writerx
call.i instance_create(argc=3)
popz.v
pushi.e 2
pop.v.i self.con

:[89]
push.v self.con
pushi.e 120
cmp.i.v EQ
bf [91]

:[90]
pushi.e 1
pop.v.i self.facetype
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 3
conv.i.v
push.s "EX"@47756
conv.s.v
push.s "Flowey"@31516
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v
pushi.e 0
pop.v.i global.msc
pushi.e 120
pop.v.i global.typer
push.s "obj_endflowey_468"@12403
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_endflowey_469"@12405
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_endflowey_470"@12407
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_endflowey_471"@12409
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_endflowey_472"@12411
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_endflowey_473"@12413
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_endflowey_474"@12415
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_endflowey_475"@12417
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_endflowey_476"@12419
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_endflowey_477"@12421
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_endflowey_478"@12423
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_endflowey_479"@12425
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_endflowey_480"@12427
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_endflowey_481"@12429
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_endflowey_482"@12431
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_endflowey_483"@12433
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_endflowey_484"@12435
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
pushloc.v local.writery
pushloc.v local.writerx
call.i instance_create(argc=3)
popz.v
pushi.e 2
pop.v.i self.con

:[91]
push.v self.con
pushi.e 130
cmp.i.v EQ
bf [93]

:[92]
pushi.e 1
pop.v.i self.facetype
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 4
conv.i.v
push.s "EX"@47756
conv.s.v
push.s "Flowey"@31516
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v
pushi.e 0
pop.v.i global.msc
pushi.e 120
pop.v.i global.typer
push.s "obj_endflowey_498"@12437
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_endflowey_499"@12439
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_endflowey_500"@12440
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_endflowey_501"@12442
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_endflowey_502"@12444
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_endflowey_503"@12446
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_endflowey_504"@12448
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_endflowey_505"@12450
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_endflowey_506"@12452
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_endflowey_507"@12454
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_endflowey_508"@12456
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_endflowey_509"@12458
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_endflowey_510"@12460
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
pushloc.v local.writery
pushloc.v local.writerx
call.i instance_create(argc=3)
popz.v
pushi.e 2
pop.v.i self.con

:[93]
push.v self.con
pushi.e 140
cmp.i.v EQ
bf [95]

:[94]
pushi.e 1
pop.v.i self.facetype
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 5
conv.i.v
push.s "EX"@47756
conv.s.v
push.s "Flowey"@31516
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v
pushi.e 120
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_endflowey_524"@12461
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_endflowey_525"@12463
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
pushloc.v local.writery
pushloc.v local.writerx
call.i instance_create(argc=3)
popz.v
pushi.e 2
pop.v.i self.con

:[95]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [97]

:[96]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [98]

:[97]
push.e 0

:[98]
bf [100]

:[99]
pushi.e 3
pop.v.i self.flowey
pushi.e 3
pop.v.i self.con
pushi.e 100
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[100]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [end]

:[101]
pushi.e 323
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]