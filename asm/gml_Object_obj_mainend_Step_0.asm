.localvar 0 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.con
pushi.e 105
conv.i.v
call.i snd_play(argc=1)
popz.v

:[2]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [33]

:[3]
pushi.e 0
pop.v.i global.faceemotion
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.msc
push.s "obj_mainend_158"@15940
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sansface(argc=2)
popz.v
push.s "obj_mainend_160"@15942
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mainend_161"@15944
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_mainend_162"@15946
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 16
conv.i.v
call.i scr_itemcheck(argc=1)
popz.v
push.v self.haveit
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 1
cmp.i.v NEQ
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
push.s "obj_mainend_169"@15947
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_mainend_170"@15949
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_mainend_171"@15951
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_mainend_172"@15953
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg

:[8]
push.s "file0"@3189
conv.s.v
call.i ossafe_file_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 1
cmp.i.v NEQ
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
push.s "obj_mainend_177"@15954
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mainend_178"@15955
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_mainend_179"@15957
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_mainend_180"@15958
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg

:[13]
pushglb.v global.armor
pushi.e 4
cmp.i.v EQ
bf [15]

:[14]
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 1
cmp.i.v NEQ
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
push.s "obj_mainend_186"@15959
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_mainend_187"@15961
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_mainend_188"@15963
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_mainend_189"@15964
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg

:[18]
pushi.e -5
pushi.e 260
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [20]

:[19]
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 1
cmp.i.v NEQ
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
push.s "obj_mainend_195"@15965
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_mainend_196"@15966
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_mainend_197"@15968
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_mainend_198"@15969
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg

:[23]
pushi.e -5
pushi.e 260
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [27]

:[24]
pushglb.v global.lv
pushi.e 1
cmp.i.v EQ
bf [27]

:[25]
pushglb.v global.armor
pushi.e 4
cmp.i.v EQ
bf [27]

:[26]
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 1
cmp.i.v NEQ
b [28]

:[27]
push.e 0

:[28]
bf [30]

:[29]
push.s "obj_mainend_204"@15970
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_mainend_205"@15971
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_mainend_206"@15973
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_mainend_207"@15975
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_mainend_208"@15977
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_mainend_209"@15978
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg

:[30]
push.v self.q
pushi.e 7
cmp.i.v EQ
bf [32]

:[31]
push.s "obj_mainend_214"@15979
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mainend_215"@15981
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[32]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 2
pop.v.i self.con

:[33]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [35]

:[34]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [36]

:[35]
push.e 0

:[36]
bf [60]

:[37]
push.v self.q
pushi.e 3
cmp.i.v NEQ
bf [39]

:[38]
push.v self.q
pushi.e 7
cmp.i.v NEQ
b [40]

:[39]
push.e 0

:[40]
bf [42]

:[41]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v

:[42]
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.v self.q
pushi.e 0
cmp.i.v EQ
bf [44]

:[43]
pushi.e 3
pop.v.i self.con

:[44]
push.v self.q
pushi.e 1
cmp.i.v EQ
bf [46]

:[45]
pushi.e 20
pop.v.i self.con

:[46]
push.v self.q
pushi.e 2
cmp.i.v EQ
bf [48]

:[47]
pushi.e 30
pop.v.i self.con

:[48]
push.v self.q
pushi.e 3
cmp.i.v EQ
bf [50]

:[49]
pushi.e 40
pop.v.i self.con

:[50]
push.v self.q
pushi.e 4
cmp.i.v EQ
bf [52]

:[51]
pushi.e 50
pop.v.i self.con

:[52]
push.v self.q
pushi.e 5
cmp.i.v EQ
bf [54]

:[53]
pushi.e 60
pop.v.i self.con

:[54]
push.v self.q
pushi.e 6
cmp.i.v EQ
bf [56]

:[55]
pushi.e 70
pop.v.i self.con

:[56]
push.v self.q
pushi.e 7
cmp.i.v EQ
bf [58]

:[57]
pushi.e 90
pop.v.i self.con

:[58]
push.v self.q
pushi.e 20
cmp.i.v EQ
bf [60]

:[59]
pushi.e 80
pop.v.i self.con

:[60]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [62]

:[61]
pushi.e 3
pop.v.i global.facechoice
pushi.e 3
pop.v.i global.faceemotion
push.s "obj_mainend_250"@15983
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mainend_251"@15985
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mainend_252"@15987
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mainend_253"@15989
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_mainend_254"@15991
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_mainend_255"@15993
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_mainend_256"@15995
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_mainend_257"@15997
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_mainend_258"@15999
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_mainend_263"@16001
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_mainend_264"@16003
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_mainend_265"@16005
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_mainend_267"@16007
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_mainend_268"@16009
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_mainend_269"@16011
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_mainend_270"@16013
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_mainend_271"@16015
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_mainend_272"@16017
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 17
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_mainend_274"@16019
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 19
conv.i.v
call.i scr_sansface(argc=2)
popz.v
push.s "obj_mainend_276"@16021
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 20
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 21
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_mainend_278"@16023
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 22
pop.v.v [array]global.msg
push.s "obj_mainend_279"@16025
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 23
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 24
conv.i.v
call.i scr_sansface(argc=2)
popz.v
push.s "obj_mainend_281"@16027
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 25
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 5
pop.v.i self.con

:[62]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [64]

:[63]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [65]

:[64]
push.e 0

:[65]
bf [81]

:[66]
pushi.e 6
pop.v.i self.con
pushi.e 19
pop.v.i global.typer
pushi.e 4
pop.v.i global.facechoice
pushi.e 3
pop.v.i global.faceemotion
push.s "obj_mainend_292"@16029
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mainend_293"@16031
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mainend_294"@16033
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mainend_295"@16035
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_mainend_296"@16037
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_mainend_297"@16039
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_mainend_298"@16041
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_mainend_299"@16043
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_mainend_300"@16045
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_mainend_301"@16047
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_mainend_302"@16049
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_mainend_303"@16051
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_mainend_304"@16053
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_mainend_305"@16055
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_mainend_306"@16057
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_mainend_307"@16059
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
pushi.e -5
pushi.e 389
push.v [array]global.flag
pushi.e 3
cmp.i.v LTE
bt [68]

:[67]
pushglb.v global.kills
pushi.e 0
cmp.i.v GT
b [69]

:[68]
push.e 1

:[69]
bf [80]

:[70]
push.s "obj_mainend_311"@16061
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mainend_312"@16063
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_mainend_313"@16065
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_mainend_314"@16067
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_mainend_315"@16069
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_mainend_316"@16071
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_mainend_317"@16073
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_mainend_318"@16075
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_mainend_319"@16077
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_mainend_320"@16079
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_mainend_321"@16081
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_mainend_322"@16083
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_mainend_323"@16085
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_mainend_324"@16087
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_mainend_325"@16089
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_mainend_326"@16091
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
push.s "obj_mainend_327"@16093
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]global.msg
push.s "obj_mainend_328"@16095
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 19
pop.v.v [array]global.msg
push.s "obj_mainend_329"@16097
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 20
pop.v.v [array]global.msg
push.s "obj_mainend_330"@16099
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 21
pop.v.v [array]global.msg
push.s "obj_mainend_331"@16101
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 22
pop.v.v [array]global.msg
push.s "obj_mainend_332"@16103
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 23
pop.v.v [array]global.msg
push.s "obj_mainend_333"@16105
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 24
pop.v.v [array]global.msg
push.s "obj_mainend_334"@16106
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 25
pop.v.v [array]global.msg
push.s "obj_mainend_335"@16108
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 26
pop.v.v [array]global.msg
pushglb.v global.kills
pushi.e 1
cmp.i.v GTE
bf [72]

:[71]
pushi.e -5
pushi.e 389
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
b [73]

:[72]
push.e 0

:[73]
bf [77]

:[74]
push.s "obj_mainend_338"@16110
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 27
pop.v.v [array]global.msg
push.s "obj_mainend_339"@16112
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 28
pop.v.v [array]global.msg
push.s "obj_mainend_340"@16114
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 29
pop.v.v [array]global.msg
push.s "obj_mainend_341"@16116
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 30
pop.v.v [array]global.msg
push.s "obj_mainend_342"@16118
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 31
pop.v.v [array]global.msg
push.s "obj_mainend_343"@16120
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 32
pop.v.v [array]global.msg
push.s "obj_mainend_344"@16122
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 33
pop.v.v [array]global.msg
push.s "obj_mainend_345"@16124
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 34
pop.v.v [array]global.msg
push.s "obj_mainend_346"@16126
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 35
pop.v.v [array]global.msg
push.s "obj_mainend_347"@16128
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 36
pop.v.v [array]global.msg
push.s "obj_mainend_348"@16130
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 37
pop.v.v [array]global.msg
push.s "obj_mainend_349"@16132
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 38
pop.v.v [array]global.msg
push.s "obj_mainend_350"@16134
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 39
pop.v.v [array]global.msg
push.s "obj_mainend_351"@16136
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 40
pop.v.v [array]global.msg
push.s "obj_mainend_352"@16138
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 41
pop.v.v [array]global.msg
push.s "obj_mainend_353"@16140
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 42
pop.v.v [array]global.msg
push.s "obj_mainend_354"@16142
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 43
pop.v.v [array]global.msg
push.s "obj_mainend_355"@16144
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 44
pop.v.v [array]global.msg
push.s "obj_mainend_356"@16146
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 45
pop.v.v [array]global.msg
push.s "obj_mainend_357"@16148
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 46
pop.v.v [array]global.msg
push.s "obj_mainend_358"@16150
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 47
pop.v.v [array]global.msg
push.s "obj_mainend_359"@16152
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 48
pop.v.v [array]global.msg
pushi.e -5
pushi.e 425
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [76]

:[75]
push.s "obj_mainend_364"@16154
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 32
pop.v.v [array]global.msg
push.s "obj_mainend_365"@16156
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 33
pop.v.v [array]global.msg
push.s "obj_mainend_366"@16158
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 34
pop.v.v [array]global.msg
push.s "obj_mainend_367"@16160
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 35
pop.v.v [array]global.msg
push.s "obj_mainend_368"@16162
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 36
pop.v.v [array]global.msg
push.s "obj_mainend_369"@16164
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 37
pop.v.v [array]global.msg
push.s "obj_mainend_370"@16166
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 38
pop.v.v [array]global.msg
push.s "obj_mainend_371"@16168
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 39
pop.v.v [array]global.msg
push.s "obj_mainend_372"@16170
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 40
pop.v.v [array]global.msg
push.s "obj_mainend_373"@16172
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 41
pop.v.v [array]global.msg
push.s "obj_mainend_374"@16174
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 42
pop.v.v [array]global.msg
push.s "obj_mainend_375"@16176
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 43
pop.v.v [array]global.msg
push.s "obj_mainend_376"@16178
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 44
pop.v.v [array]global.msg
push.s "obj_mainend_377"@16180
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 45
pop.v.v [array]global.msg
push.s "obj_mainend_378"@16182
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 46
pop.v.v [array]global.msg
push.s "obj_mainend_379"@16184
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 47
pop.v.v [array]global.msg

:[76]
b [79]

:[77]
push.s "obj_mainend_385"@16186
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 27
pop.v.v [array]global.msg
push.s "obj_mainend_386"@16188
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 28
pop.v.v [array]global.msg
push.s "obj_mainend_387"@16189
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 29
pop.v.v [array]global.msg
push.s "obj_mainend_388"@16191
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 30
pop.v.v [array]global.msg
push.s "obj_mainend_389"@16193
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 31
pop.v.v [array]global.msg
push.s "obj_mainend_390"@16195
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 32
pop.v.v [array]global.msg
push.s "obj_mainend_391"@16197
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 33
pop.v.v [array]global.msg
push.s "obj_mainend_392"@16199
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 34
pop.v.v [array]global.msg
push.s "obj_mainend_393"@16201
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 35
pop.v.v [array]global.msg
push.s "obj_mainend_394"@16203
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 36
pop.v.v [array]global.msg
push.s "obj_mainend_395"@16205
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 37
pop.v.v [array]global.msg
push.s "obj_mainend_396"@16207
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 38
pop.v.v [array]global.msg
push.s "obj_mainend_397"@16209
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 39
pop.v.v [array]global.msg
push.s "obj_mainend_398"@16211
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 40
pop.v.v [array]global.msg
push.s "obj_mainend_399"@16213
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 41
pop.v.v [array]global.msg
push.s "obj_mainend_400"@16215
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 42
pop.v.v [array]global.msg
pushi.e -5
pushi.e 425
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [79]

:[78]
push.s "obj_mainend_404"@16217
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 29
pop.v.v [array]global.msg
push.s "obj_mainend_405"@16219
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 30
pop.v.v [array]global.msg
push.s "obj_mainend_406"@16221
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 31
pop.v.v [array]global.msg
push.s "obj_mainend_407"@16222
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 32
pop.v.v [array]global.msg
push.s "obj_mainend_408"@16223
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 33
pop.v.v [array]global.msg
push.s "obj_mainend_409"@16224
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 34
pop.v.v [array]global.msg
push.s "obj_mainend_410"@16225
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 35
pop.v.v [array]global.msg
push.s "obj_mainend_411"@16227
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 36
pop.v.v [array]global.msg
push.s "obj_mainend_412"@16228
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 37
pop.v.v [array]global.msg
push.s "obj_mainend_413"@16230
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 38
pop.v.v [array]global.msg
push.s "obj_mainend_414"@16231
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 39
pop.v.v [array]global.msg
push.s "obj_mainend_415"@16232
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 40
pop.v.v [array]global.msg
push.s "obj_mainend_416"@16233
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 41
pop.v.v [array]global.msg
push.s "obj_mainend_417"@16234
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 42
pop.v.v [array]global.msg
push.s "obj_mainend_418"@16235
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 43
pop.v.v [array]global.msg

:[79]
pushi.e 8
pop.v.i self.con

:[80]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[81]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [83]

:[82]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [84]

:[83]
push.e 0

:[84]
bf [88]

:[85]
pushi.e 0
pushi.e -5
pushi.e 430
pop.v.i [array]global.flag
pushi.e 8
pop.v.i self.con
pushi.e 37
pop.v.i global.typer
pushi.e 5
pop.v.i global.facechoice
pushi.e 2
pop.v.i global.faceemotion
push.s "obj_mainend_434"@16237
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mainend_435"@16239
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 2
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_mainend_437"@16241
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 4
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "obj_mainend_439"@16243
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 6
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_mainend_441"@16245
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 8
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "obj_mainend_443"@16247
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_mainend_444"@16249
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_mainend_445"@16251
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_mainend_446"@16253
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_mainend_447"@16255
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 14
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_mainend_449"@16257
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 16
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "obj_mainend_451"@16259
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
push.s "obj_mainend_453"@16261
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 19
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 20
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "obj_mainend_455"@16263
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 21
pop.v.v [array]global.msg
push.s "obj_mainend_456"@16265
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 22
pop.v.v [array]global.msg
push.s "obj_mainend_457"@16267
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 23
pop.v.v [array]global.msg
push.s "obj_mainend_458"@16269
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 24
pop.v.v [array]global.msg
push.s "obj_mainend_459"@16271
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 25
pop.v.v [array]global.msg
push.s "obj_mainend_460"@16272
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 26
pop.v.v [array]global.msg
push.s "obj_mainend_461"@16274
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 27
pop.v.v [array]global.msg
push.s "obj_mainend_462"@16276
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 28
pop.v.v [array]global.msg
push.s "obj_mainend_463"@16278
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 29
pop.v.v [array]global.msg
push.s "obj_mainend_464"@16280
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 30
pop.v.v [array]global.msg
push.s "obj_mainend_465"@16281
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 31
pop.v.v [array]global.msg
push.s "obj_mainend_466"@16283
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 32
pop.v.v [array]global.msg
push.s "obj_mainend_467"@16285
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 33
pop.v.v [array]global.msg
push.s "obj_mainend_469"@16287
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 34
pop.v.v [array]global.msg
push.s "obj_mainend_470"@16289
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 35
pop.v.v [array]global.msg
push.s "obj_mainend_471"@16291
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 36
pop.v.v [array]global.msg
push.s "obj_mainend_472"@16293
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 37
pop.v.v [array]global.msg
push.s "obj_mainend_473"@16295
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 38
pop.v.v [array]global.msg
push.s "obj_mainend_474"@16297
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 39
pop.v.v [array]global.msg
push.s "obj_mainend_475"@16299
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 40
pop.v.v [array]global.msg
push.s "obj_mainend_476"@16301
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 41
pop.v.v [array]global.msg
push.s "obj_mainend_477"@16303
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 42
pop.v.v [array]global.msg
push.s "obj_mainend_478"@16304
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 43
pop.v.v [array]global.msg
push.s "obj_mainend_479"@16306
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 44
pop.v.v [array]global.msg
push.s "obj_mainend_480"@16308
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 45
pop.v.v [array]global.msg
push.s "obj_mainend_481"@16310
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 46
pop.v.v [array]global.msg
push.s "obj_mainend_482"@16312
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 47
pop.v.v [array]global.msg
push.s "obj_mainend_483"@16314
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 48
pop.v.v [array]global.msg
push.s "obj_mainend_484"@16316
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 49
pop.v.v [array]global.msg
push.s "obj_mainend_485"@16318
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 50
pop.v.v [array]global.msg
push.s "obj_mainend_486"@16320
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 51
pop.v.v [array]global.msg
push.s "obj_mainend_487"@16321
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 52
pop.v.v [array]global.msg
push.s "obj_mainend_488"@16323
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 53
pop.v.v [array]global.msg
push.s "obj_mainend_489"@16325
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 54
pop.v.v [array]global.msg
push.s "obj_mainend_490"@16326
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 55
pop.v.v [array]global.msg
push.s "obj_mainend_491"@16328
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 56
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 57
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_mainend_493"@16330
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 58
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 59
conv.i.v
call.i scr_sansface(argc=2)
popz.v
push.s "obj_mainend_495"@16332
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 60
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 61
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_mainend_497"@16334
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 62
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 63
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "obj_mainend_499"@16336
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 64
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 65
conv.i.v
call.i scr_sansface(argc=2)
popz.v
push.s "obj_mainend_501"@16338
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 66
pop.v.v [array]global.msg
push.s "obj_mainend_502"@16340
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 67
pop.v.v [array]global.msg
push.s "obj_mainend_503"@16342
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 68
pop.v.v [array]global.msg
push.s "obj_mainend_504"@16344
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 69
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 70
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_mainend_506"@16346
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 71
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 72
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "obj_mainend_508"@16348
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 73
pop.v.v [array]global.msg
pushi.e -5
pushi.e 493
push.v [array]global.flag
pushi.e 10
cmp.i.v GTE
bf [87]

:[86]
pushi.e 3
conv.i.v
pushi.e 34
conv.i.v
call.i scr_alface(argc=2)
popz.v
push.s "obj_mainend_524"@16350
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 35
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 36
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "obj_mainend_526"@16352
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 37
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 38
conv.i.v
call.i scr_alface(argc=2)
popz.v
push.s "obj_mainend_528"@16354
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 39
pop.v.v [array]global.msg
pushi.e 7
pop.v.i self.con

:[87]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[88]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [90]

:[89]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [91]

:[90]
push.e 0

:[91]
bf [93]

:[92]
pushi.e 0
pushi.e -5
pushi.e 430
pop.v.i [array]global.flag
pushi.e 8
pop.v.i self.con
pushi.e 47
pop.v.i global.typer
pushi.e 6
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_mainend_541"@16356
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mainend_542"@16357
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mainend_543"@16358
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mainend_544"@16360
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_mainend_545"@16362
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_mainend_546"@16364
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_mainend_547"@16365
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_mainend_548"@16367
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_mainend_549"@16369
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_mainend_550"@16371
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_mainend_551"@16373
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_mainend_552"@16375
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_mainend_553"@16377
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_mainend_554"@16379
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_mainend_555"@16381
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_mainend_556"@16383
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_mainend_557"@16385
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_mainend_558"@16386
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
push.s "obj_mainend_559"@16388
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]global.msg
push.s "obj_mainend_560"@16390
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 19
pop.v.v [array]global.msg
push.s "obj_mainend_561"@16391
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 20
pop.v.v [array]global.msg
push.s "obj_mainend_562"@16393
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 21
pop.v.v [array]global.msg
pushi.e 6
conv.i.v
pushi.e 22
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "obj_mainend_564"@16395
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 23
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 24
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_mainend_566"@16397
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 25
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 26
conv.i.v
call.i scr_sansface(argc=2)
popz.v
push.s "obj_mainend_568"@16398
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 27
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 28
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_mainend_570"@16399
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 29
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 30
conv.i.v
call.i scr_alface(argc=2)
popz.v
push.s "obj_mainend_572"@16401
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 31
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 32
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "obj_mainend_574"@16403
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 33
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 34
conv.i.v
call.i scr_sansface(argc=2)
popz.v
push.s "obj_mainend_576"@16404
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 35
pop.v.v [array]global.msg
push.s "obj_mainend_577"@16405
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 36
pop.v.v [array]global.msg
push.s "obj_mainend_578"@16406
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 37
pop.v.v [array]global.msg
push.s "obj_mainend_579"@16407
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 38
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 39
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_mainend_581"@16408
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 40
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 41
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "obj_mainend_583"@16410
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 42
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 43
conv.i.v
call.i scr_alface(argc=2)
popz.v
push.s "obj_mainend_585"@16412
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 44
pop.v.v [array]global.msg
push.s "obj_mainend_586"@16414
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 45
pop.v.v [array]global.msg
push.s "obj_mainend_587"@16416
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 46
pop.v.v [array]global.msg
push.s "obj_mainend_588"@16418
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 47
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[93]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [95]

:[94]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [96]

:[95]
push.e 0

:[96]
bf [98]

:[97]
pushi.e 9
pop.v.i self.con
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mf
push.d 0.02
push.v self.mf
conv.v.i
pop.v.d [stacktop]self.fadespeed
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.facechoice
push.s "obj_mainend_612"@16419
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
popz.v

:[98]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [100]

:[99]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [101]

:[100]
push.e 0

:[101]
bf [103]

:[102]
pushi.e 10
pop.v.i self.con
pushi.e 150
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[103]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [113]

:[104]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "K"@47576
conv.s.v
push.s "Flowey"@31516
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.K
pushi.e 0
conv.i.v
push.s "SPECIALK"@47747
conv.s.v
push.s "Flowey"@31516
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.SPECIALK
call.i ossafe_ini_close(argc=0)
popz.v
push.v self.K
pushi.e 0
cmp.i.v GT
bt [106]

:[105]
push.v self.SPECIALK
pushi.e 0
cmp.i.v GT
b [107]

:[106]
push.e 1

:[107]
bf [109]

:[108]
pushi.e 1
pushi.e -5
pushi.e 475
pop.v.i [array]global.flag

:[109]
pushi.e -5
pushi.e 475
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [111]

:[110]
pushi.e 136
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 14
pop.v.i self.con
call.i instance_destroy(argc=0)
popz.v
b [113]

:[111]
pushglb.v global.savedata_async_id
pushi.e -1
cmp.i.v EQ
bf [113]

:[112]
call.i game_restart(argc=0)
popz.v

:[113]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [115]

:[114]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [116]

:[115]
push.e 0

:[116]
bf [129]

:[117]
pushi.e 3
pop.v.i global.facechoice
pushi.e 3
pop.v.i global.faceemotion
push.s "obj_mainend_650"@16420
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mainend_651"@16422
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mainend_652"@16424
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mainend_653"@16426
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_mainend_654"@16427
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_mainend_655"@16428
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_mainend_656"@16430
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_mainend_665"@16432
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_mainend_666"@16434
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_mainend_667"@16436
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [119]

:[118]
push.s "obj_mainend_669"@16438
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg

:[119]
pushi.e -5
pushi.e 350
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [121]

:[120]
push.s "obj_mainend_671"@16440
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg

:[121]
pushglb.v global.kills
pushi.e 10
cmp.i.v GTE
bf [123]

:[122]
push.s "obj_mainend_673"@16441
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg

:[123]
push.s "obj_mainend_674"@16443
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_mainend_675"@16445
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_mainend_676"@16447
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_mainend_677"@16449
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_mainend_678"@16451
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_mainend_679"@16453
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_mainend_680"@16455
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_mainend_681"@16457
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
push.s "obj_mainend_682"@16458
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]global.msg
pushi.e -5
pushi.e 350
push.v [array]global.flag
pushi.e 1
cmp.i.v NEQ
bf [128]

:[124]
push.s "obj_mainend_688"@16460
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
pushi.e -5
pushi.e 425
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [126]

:[125]
push.s "obj_mainend_691"@16462
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
b [127]

:[126]
push.s "obj_mainend_695"@16464
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg

:[127]
push.s "obj_mainend_697"@16466
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_mainend_698"@16468
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_mainend_699"@16470
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_mainend_700"@16472
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
push.s "obj_mainend_701"@16474
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]global.msg
push.s "obj_mainend_702"@16476
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 19
pop.v.v [array]global.msg

:[128]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 22
pop.v.i self.con

:[129]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [131]

:[130]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [132]

:[131]
push.e 0

:[132]
bf [137]

:[133]
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 1
cmp.i.v NEQ
bf [135]

:[134]
pushi.e 8
pop.v.i self.con
push.s "obj_mainend_716"@16478
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mainend_717"@16480
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mainend_718"@16482
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mainend_719"@16484
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_mainend_720"@16486
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_mainend_721"@16488
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_mainend_722"@16490
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 7
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_mainend_724"@16492
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_mainend_725"@16494
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_mainend_726"@16496
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_mainend_727"@16498
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 12
conv.i.v
call.i scr_sansface(argc=2)
popz.v
push.s "obj_mainend_729"@16499
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 14
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_mainend_731"@16501
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 16
conv.i.v
call.i scr_sansface(argc=2)
popz.v
push.s "obj_mainend_733"@16503
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
push.s "obj_mainend_734"@16505
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]global.msg
push.s "obj_mainend_735"@16507
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 19
pop.v.v [array]global.msg
b [136]

:[135]
pushi.e 23
pop.v.i self.con
push.s "obj_mainend_740"@16508
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mainend_741"@16510
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mainend_742"@16512
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mainend_743"@16514
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_mainend_744"@16516
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_mainend_745"@16518
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_mainend_746"@16519
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_mainend_747"@16521
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_mainend_748"@16523
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_mainend_749"@16525
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_mainend_750"@16527
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_mainend_751"@16528
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_mainend_752"@16530
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_mainend_753"@16532
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_mainend_754"@16534
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_mainend_755"@16536
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_mainend_756"@16537
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_mainend_757"@16539
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
push.s "obj_mainend_758"@16541
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]global.msg
push.s "obj_mainend_759"@16542
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 19
pop.v.v [array]global.msg

:[136]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[137]
push.v self.con
pushi.e 23
cmp.i.v EQ
bf [139]

:[138]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [140]

:[139]
push.e 0

:[140]
bf [143]

:[141]
push.v 784.stringno
pushi.e 14
cmp.i.v EQ
bf [143]

:[142]
pushglb.v global.currentsong
call.i caster_stop(argc=1)
popz.v

:[143]
push.v self.con
pushi.e 23
cmp.i.v EQ
bf [145]

:[144]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [146]

:[145]
push.e 0

:[146]
bf [148]

:[147]
pushi.e 8
pop.v.i self.con

:[148]
push.v self.con
pushi.e 31
cmp.i.v EQ
bf [150]

:[149]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [151]

:[150]
push.e 0

:[151]
bf [156]

:[152]
pushi.e 3
pop.v.i global.facechoice
pushi.e 1
pop.v.i global.faceemotion
pushi.e 8
pop.v.i self.con
push.s "obj_mainend_784"@16544
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mainend_785"@16546
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mainend_786"@16548
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mainend_787"@16550
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_mainend_788"@16552
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_mainend_789"@16554
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_mainend_790"@16556
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_mainend_791"@16558
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_mainend_792"@16560
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_mainend_793"@16562
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_mainend_794"@16564
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_mainend_795"@16566
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_mainend_796"@16568
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_mainend_797"@16570
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [154]

:[153]
push.s "obj_mainend_801"@16572
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_mainend_802"@16574
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_mainend_803"@16576
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_mainend_804"@16578
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
push.s "obj_mainend_805"@16580
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]global.msg
push.s "obj_mainend_806"@16582
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 19
pop.v.v [array]global.msg
push.s "obj_mainend_807"@16584
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 20
pop.v.v [array]global.msg
push.s "obj_mainend_808"@16586
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 21
pop.v.v [array]global.msg
pushi.e 32
pop.v.i self.con
b [155]

:[154]
push.s "obj_mainend_813"@16587
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_mainend_814"@16589
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_mainend_815"@16591
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_mainend_816"@16592
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
pushi.e 3
conv.i.v
pushi.e 18
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_mainend_818"@16594
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 19
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 20
conv.i.v
call.i scr_sansface(argc=2)
popz.v
push.s "obj_mainend_820"@16596
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 21
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 22
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_mainend_822"@16598
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 23
pop.v.v [array]global.msg
push.s "obj_mainend_823"@16599
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 24
pop.v.v [array]global.msg
push.s "obj_mainend_824"@16601
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 25
pop.v.v [array]global.msg
push.s "obj_mainend_825"@16603
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 26
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 27
conv.i.v
call.i scr_sansface(argc=2)
popz.v
push.s "obj_mainend_827"@16605
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 28
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 29
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_mainend_829"@16607
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 30
pop.v.v [array]global.msg
push.s "obj_mainend_830"@16609
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 31
pop.v.v [array]global.msg
push.s "obj_mainend_831"@16611
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 32
pop.v.v [array]global.msg
push.s "obj_mainend_832"@16613
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 33
pop.v.v [array]global.msg
push.s "obj_mainend_833"@16614
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 34
pop.v.v [array]global.msg
push.s "obj_mainend_834"@16616
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 35
pop.v.v [array]global.msg
push.s "obj_mainend_835"@16618
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 36
pop.v.v [array]global.msg
push.s "obj_mainend_836"@16620
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 37
pop.v.v [array]global.msg
push.s "obj_mainend_837"@16622
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 38
pop.v.v [array]global.msg
push.s "obj_mainend_838"@16624
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 39
pop.v.v [array]global.msg
push.s "obj_mainend_839"@16626
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 40
pop.v.v [array]global.msg
push.s "obj_mainend_840"@16628
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 41
pop.v.v [array]global.msg
push.s "obj_mainend_841"@16630
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 42
pop.v.v [array]global.msg
push.s "obj_mainend_842"@16632
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 43
pop.v.v [array]global.msg
push.s "obj_mainend_843"@16634
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 44
pop.v.v [array]global.msg
push.s "obj_mainend_844"@16636
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 45
pop.v.v [array]global.msg
push.s "obj_mainend_845"@16638
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 46
pop.v.v [array]global.msg
push.s "obj_mainend_846"@16640
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 47
pop.v.v [array]global.msg
push.s "obj_mainend_847"@16642
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 48
pop.v.v [array]global.msg
push.s "obj_mainend_848"@16644
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 49
pop.v.v [array]global.msg
push.s "obj_mainend_849"@16646
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 50
pop.v.v [array]global.msg

:[155]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[156]
push.v self.con
pushi.e 32
cmp.i.v EQ
bf [158]

:[157]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [159]

:[158]
push.e 0

:[159]
bf [162]

:[160]
push.v 784.stringno
pushi.e 18
cmp.i.v EQ
bf [162]

:[161]
pushglb.v global.currentsong
call.i caster_stop(argc=1)
popz.v

:[162]
push.v self.con
pushi.e 32
cmp.i.v EQ
bf [164]

:[163]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [165]

:[164]
push.e 0

:[165]
bf [167]

:[166]
pushi.e 8
pop.v.i self.con

:[167]
push.v self.con
pushi.e 41
cmp.i.v EQ
bf [169]

:[168]
pushi.e 3
pop.v.i global.facechoice
pushi.e 3
pop.v.i global.faceemotion
push.s "obj_mainend_875"@16648
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mainend_876"@16650
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mainend_877"@16652
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mainend_878"@16654
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_mainend_879"@16656
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_mainend_880"@16658
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_mainend_881"@16660
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_mainend_882"@16662
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_mainend_883"@16664
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_mainend_884"@16666
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 42
pop.v.i self.con

:[169]
push.v self.con
pushi.e 42
cmp.i.v EQ
bf [171]

:[170]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [172]

:[171]
push.e 0

:[172]
bf [177]

:[173]
push.d 0.95
conv.d.v
push.d 0.7
conv.d.v
pushglb.v global.currentsong
call.i caster_play(argc=3)
popz.v
pushi.e 27
pop.v.i global.typer
pushi.e 8
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_mainend_896"@16668
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mainend_897"@16670
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mainend_898"@16672
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mainend_899"@16674
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_mainend_900"@16676
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_mainend_901"@16678
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_mainend_902"@16680
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_mainend_903"@16682
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_mainend_904"@16684
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_mainend_905"@16686
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_mainend_906"@16688
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_mainend_907"@16690
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_mainend_908"@16692
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_mainend_909"@16694
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_mainend_910"@16696
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_mainend_911"@16698
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_mainend_912"@16700
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_mainend_913"@16702
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
push.s "obj_mainend_914"@16703
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]global.msg
push.s "obj_mainend_915"@16705
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 19
pop.v.v [array]global.msg
push.s "obj_mainend_916"@16707
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 20
pop.v.v [array]global.msg
push.s "obj_mainend_917"@16709
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 21
pop.v.v [array]global.msg
push.s "obj_mainend_918"@16711
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 22
pop.v.v [array]global.msg
push.s "obj_mainend_919"@16712
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 23
pop.v.v [array]global.msg
push.s "obj_mainend_920"@16714
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 24
pop.v.v [array]global.msg
push.s "obj_mainend_921"@16716
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 25
pop.v.v [array]global.msg
push.s "obj_mainend_922"@16717
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 26
pop.v.v [array]global.msg
push.s "obj_mainend_923"@16719
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 27
pop.v.v [array]global.msg
push.s "obj_mainend_924"@16721
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 28
pop.v.v [array]global.msg
push.s "obj_mainend_925"@16723
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 29
pop.v.v [array]global.msg
push.s "obj_mainend_926"@16725
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 30
pop.v.v [array]global.msg
push.s "obj_mainend_927"@16727
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 31
pop.v.v [array]global.msg
push.s "obj_mainend_928"@16729
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 32
pop.v.v [array]global.msg
push.s "obj_mainend_929"@16731
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 33
pop.v.v [array]global.msg
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [175]

:[174]
push.s "obj_mainend_933"@16733
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 33
pop.v.v [array]global.msg
b [176]

:[175]
push.s "obj_mainend_937"@16735
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 34
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 35
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_mainend_939"@16737
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 36
pop.v.v [array]global.msg
push.s "obj_mainend_940"@16739
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 37
pop.v.v [array]global.msg
push.s "obj_mainend_941"@16741
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 38
pop.v.v [array]global.msg
push.s "obj_mainend_942"@16743
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 39
pop.v.v [array]global.msg
push.s "obj_mainend_943"@16745
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 40
pop.v.v [array]global.msg
push.s "obj_mainend_944"@16747
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 41
pop.v.v [array]global.msg
push.s "obj_mainend_945"@16749
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 42
pop.v.v [array]global.msg
push.s "obj_mainend_946"@16751
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 43
pop.v.v [array]global.msg
push.s "obj_mainend_947"@16753
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 44
pop.v.v [array]global.msg
push.s "obj_mainend_948"@16755
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 45
pop.v.v [array]global.msg
push.s "obj_mainend_949"@16757
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 46
pop.v.v [array]global.msg
push.s "obj_mainend_950"@16759
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 47
pop.v.v [array]global.msg
push.s "obj_mainend_951"@16761
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 48
pop.v.v [array]global.msg
push.s "obj_mainend_952"@16763
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 49
pop.v.v [array]global.msg
push.s "obj_mainend_953"@16765
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 50
pop.v.v [array]global.msg

:[176]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 43
pop.v.i self.con

:[177]
push.v self.con
pushi.e 43
cmp.i.v EQ
bf [179]

:[178]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [180]

:[179]
push.e 0

:[180]
bf [185]

:[181]
push.v 784.stringno
pushi.e 20
cmp.i.v EQ
bf [183]

:[182]
pushglb.v global.currentsong
call.i caster_pause(argc=1)
popz.v

:[183]
push.v 784.stringno
pushi.e 27
cmp.i.v EQ
bf [185]

:[184]
pushglb.v global.currentsong
call.i caster_resume(argc=1)
popz.v

:[185]
push.v self.con
pushi.e 43
cmp.i.v EQ
bf [187]

:[186]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [188]

:[187]
push.e 0

:[188]
bf [190]

:[189]
pushi.e 8
pop.v.i self.con

:[190]
push.v self.con
pushi.e 51
cmp.i.v EQ
bf [192]

:[191]
pushi.e 3
pop.v.i global.facechoice
pushi.e 3
pop.v.i global.faceemotion
push.s "obj_mainend_984"@16767
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mainend_985"@16769
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mainend_986"@16771
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mainend_987"@16773
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_mainend_988"@16775
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_mainend_989"@16777
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_mainend_990"@16779
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_mainend_991"@16781
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_mainend_992"@16783
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_mainend_993"@16785
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_mainend_994"@16787
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
push.s "obj_mainend_996"@16789
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_mainend_997"@16791
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_mainend_998"@16793
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_mainend_999"@16795
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_mainend_1000"@16797
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_mainend_1001"@16799
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
push.s "obj_mainend_1002"@16801
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]global.msg
push.s "obj_mainend_1003"@16803
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 19
pop.v.v [array]global.msg
push.s "obj_mainend_1004"@16805
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 20
pop.v.v [array]global.msg
push.s "obj_mainend_1005"@16807
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 21
pop.v.v [array]global.msg
push.s "obj_mainend_1006"@16809
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 22
pop.v.v [array]global.msg
push.s "obj_mainend_1007"@16811
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 23
pop.v.v [array]global.msg
push.s "obj_mainend_1008"@16813
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 24
pop.v.v [array]global.msg
push.s "obj_mainend_1009"@16815
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 25
pop.v.v [array]global.msg
push.s "obj_mainend_1010"@16817
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 26
pop.v.v [array]global.msg
push.s "obj_mainend_1011"@16819
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 27
pop.v.v [array]global.msg
push.s "obj_mainend_1012"@16821
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 28
pop.v.v [array]global.msg
push.s "obj_mainend_1013"@16823
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 29
pop.v.v [array]global.msg
push.s "obj_mainend_1014"@16825
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 30
pop.v.v [array]global.msg
push.s "obj_mainend_1015"@16827
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 31
pop.v.v [array]global.msg
pushi.e 2
conv.i.v
pushi.e 32
conv.i.v
call.i scr_sansface(argc=2)
popz.v
push.s "obj_mainend_1017"@16829
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 33
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 34
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_mainend_1019"@16831
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 35
pop.v.v [array]global.msg
push.s "obj_mainend_1020"@16833
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 36
pop.v.v [array]global.msg
push.s "obj_mainend_1021"@16835
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 37
pop.v.v [array]global.msg
push.s "obj_mainend_1022"@16837
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 38
pop.v.v [array]global.msg
push.s "obj_mainend_1023"@16838
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 39
pop.v.v [array]global.msg
push.s "obj_mainend_1024"@16839
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 40
pop.v.v [array]global.msg
push.s "obj_mainend_1025"@16841
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 41
pop.v.v [array]global.msg
push.s "obj_mainend_1026"@16843
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 42
pop.v.v [array]global.msg
push.s "obj_mainend_1027"@16845
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 43
pop.v.v [array]global.msg
push.s "obj_mainend_1028"@16847
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 44
pop.v.v [array]global.msg
push.s "obj_mainend_1029"@16849
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 45
pop.v.v [array]global.msg
push.s "obj_mainend_1030"@16851
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 46
pop.v.v [array]global.msg
push.s "obj_mainend_1031"@16853
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 47
pop.v.v [array]global.msg
push.s "obj_mainend_1032"@16855
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 48
pop.v.v [array]global.msg
push.s "obj_mainend_1033"@16857
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 49
pop.v.v [array]global.msg
push.s "obj_mainend_1034"@16859
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 50
pop.v.v [array]global.msg
push.s "obj_mainend_1035"@16861
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 51
pop.v.v [array]global.msg
push.s "obj_mainend_1036"@16863
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 52
pop.v.v [array]global.msg
push.s "obj_mainend_1037"@16865
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 53
pop.v.v [array]global.msg
push.s "obj_mainend_1038"@16866
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 54
pop.v.v [array]global.msg
push.s "obj_mainend_1039"@16868
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 55
pop.v.v [array]global.msg
push.s "obj_mainend_1040"@16870
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 56
pop.v.v [array]global.msg
push.s "obj_mainend_1041"@16872
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 57
pop.v.v [array]global.msg
push.s "obj_mainend_1042"@16874
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 58
pop.v.v [array]global.msg
push.s "obj_mainend_1043"@16876
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 59
pop.v.v [array]global.msg
push.s "obj_mainend_1044"@16878
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 60
pop.v.v [array]global.msg
push.s "obj_mainend_1045"@16880
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 61
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 8
pop.v.i self.con

:[192]
push.v self.con
pushi.e 61
cmp.i.v EQ
bf [196]

:[193]
pushi.e 3
pop.v.i global.facechoice
pushi.e 3
pop.v.i global.faceemotion
push.s "obj_mainend_1055"@16882
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mainend_1056"@16883
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mainend_1057"@16885
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mainend_1058"@16887
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_mainend_1059"@16889
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_mainend_1060"@16891
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_mainend_1061"@16893
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_mainend_1062"@16895
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_mainend_1063"@16897
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_mainend_1064"@16899
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_mainend_1065"@16901
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_mainend_1066"@16902
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_mainend_1067"@16904
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_mainend_1068"@16906
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_mainend_1069"@16907
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_mainend_1070"@16909
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
pushglb.v global.kills
pushi.e 20
cmp.i.v GTE
bf [195]

:[194]
push.s "obj_mainend_1074"@16911
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_mainend_1075"@16913
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_mainend_1076"@16915
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
push.s "obj_mainend_1077"@16916
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]global.msg
push.s "obj_mainend_1078"@16918
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 19
pop.v.v [array]global.msg
push.s "obj_mainend_1079"@16920
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 20
pop.v.v [array]global.msg

:[195]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 8
pop.v.i self.con

:[196]
push.v self.con
pushi.e 71
cmp.i.v EQ
bf [198]

:[197]
pushi.e 3
pop.v.i global.facechoice
pushi.e 3
pop.v.i global.faceemotion
push.s "obj_mainend_1092"@16921
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mainend_1093"@16922
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mainend_1094"@16924
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mainend_1095"@16926
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_mainend_1096"@16928
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_mainend_1097"@16930
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_mainend_1098"@16932
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_mainend_1099"@16934
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_mainend_1100"@16936
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_mainend_1101"@16938
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 8
pop.v.i self.con

:[198]
push.v self.con
pushi.e 81
cmp.i.v EQ
bf [200]

:[199]
pushi.e 3
pop.v.i global.facechoice
pushi.e 3
pop.v.i global.faceemotion
push.s "obj_mainend_1112"@16939
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mainend_1113"@16940
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mainend_1114"@16942
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mainend_1115"@16944
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_mainend_1116"@16946
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_mainend_1117"@16948
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_mainend_1118"@16950
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_mainend_1119"@16952
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_mainend_1120"@16954
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_mainend_1121"@16956
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_mainend_1122"@16958
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_mainend_1123"@16960
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 8
pop.v.i self.con

:[200]
push.v self.con
pushi.e 91
cmp.i.v EQ
bf [end]

:[201]
pushi.e 47
pop.v.i global.typer
pushi.e 4
pushi.e -5
pushi.e 430
pop.v.i [array]global.flag
pushi.e 6
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_mainend_1136"@16962
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mainend_1137"@16964
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mainend_1139"@16966
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mainend_1141"@16968
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_mainend_1143"@16970
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_mainend_1145"@16972
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_mainend_1147"@16974
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_mainend_1148"@16976
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_mainend_1149"@16978
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_mainend_1150"@16980
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_mainend_1151"@16982
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_mainend_1152"@16984
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_mainend_1153"@16986
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_mainend_1154"@16988
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_mainend_1155"@16990
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_mainend_1156"@16992
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
push.s "obj_mainend_1157"@16994
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]global.msg
push.s "obj_mainend_1158"@16996
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]global.msg
push.s "obj_mainend_1159"@16998
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]global.msg
push.s "obj_mainend_1160"@17000
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 19
pop.v.v [array]global.msg
push.s "obj_mainend_1161"@17002
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 20
pop.v.v [array]global.msg
push.s "obj_mainend_1162"@17004
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 21
pop.v.v [array]global.msg
push.s "obj_mainend_1163"@17006
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 22
pop.v.v [array]global.msg
push.s "obj_mainend_1164"@17007
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 23
pop.v.v [array]global.msg
push.s "obj_mainend_1165"@17009
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 24
pop.v.v [array]global.msg
push.s "obj_mainend_1166"@17011
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 25
pop.v.v [array]global.msg
push.s "obj_mainend_1167"@17013
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 26
pop.v.v [array]global.msg
push.s "obj_mainend_1168"@17015
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 27
pop.v.v [array]global.msg
push.s "obj_mainend_1169"@17017
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 28
pop.v.v [array]global.msg
push.s "obj_mainend_1170"@17019
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 29
pop.v.v [array]global.msg
push.s "obj_mainend_1171"@17021
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 30
pop.v.v [array]global.msg
push.s "obj_mainend_1172"@17023
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 31
pop.v.v [array]global.msg
push.s "obj_mainend_1173"@17025
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 32
pop.v.v [array]global.msg
push.s "obj_mainend_1174"@17027
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 33
pop.v.v [array]global.msg
push.s "obj_mainend_1175"@17029
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 34
pop.v.v [array]global.msg
push.s "obj_mainend_1176"@17031
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 35
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 8
pop.v.i self.con

:[end]