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
push.s "obj_readable_room3_59"@22809
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushbltn.v self.room
pushi.e 36
cmp.i.v EQ
bf [2]

:[1]
push.s "obj_readable_room3_60"@22811
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[2]
pushbltn.v self.room
pushi.e 224
cmp.i.v EQ
bf [5]

:[3]
push.s "obj_readable_room3_63"@22813
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_murderlv(argc=0)
pushi.e 16
cmp.i.v GTE
bf [5]

:[4]
push.s "obj_readable_room3_66"@22815
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[5]
pushbltn.v self.room
pushi.e 35
cmp.i.v EQ
bf [8]

:[6]
push.s "obj_readable_room3_71"@22817
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
push.s "obj_readable_room3_74"@22819
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room3_75"@22821
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[8]
pushbltn.v self.room
pushi.e 221
cmp.i.v EQ
bf [10]

:[9]
push.s "obj_readable_room3_79"@22823
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[10]
pushbltn.v self.room
pushi.e 223
cmp.i.v EQ
bf [12]

:[11]
push.s "obj_readable_room3_81"@22825
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[12]
pushbltn.v self.room
pushi.e 34
cmp.i.v EQ
bf [14]

:[13]
push.s "obj_readable_room3_83"@22827
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[14]
pushbltn.v self.room
pushi.e 37
cmp.i.v EQ
bf [16]

:[15]
push.s "obj_readable_room3_84"@22829
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[16]
pushbltn.v self.room
pushi.e 225
cmp.i.v EQ
bf [18]

:[17]
push.s "obj_readable_room3_85"@22831
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[18]
pushbltn.v self.room
pushi.e 74
cmp.i.v EQ
bf [20]

:[19]
push.s "obj_readable_room3_89"@22833
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room3_90"@22835
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room3_91"@22837
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_readable_room3_92"@22839
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_readable_room3_93"@22841
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[20]
pushbltn.v self.room
pushi.e 45
cmp.i.v EQ
bf [22]

:[21]
push.s "obj_readable_room3_104"@22843
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[22]
pushbltn.v self.room
pushi.e 48
cmp.i.v EQ
bf [24]

:[23]
push.s "obj_readable_room3_108"@22845
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[24]
pushbltn.v self.room
pushi.e 53
cmp.i.v EQ
bf [26]

:[25]
push.s "obj_readable_room3_112"@22847
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[26]
pushbltn.v self.room
pushi.e 57
cmp.i.v EQ
bf [28]

:[27]
push.s "obj_readable_room3_116"@22849
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[28]
pushbltn.v self.room
pushi.e 59
cmp.i.v EQ
bf [30]

:[29]
push.s "obj_readable_room3_120"@22850
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[30]
pushbltn.v self.room
pushi.e 61
cmp.i.v EQ
bf [32]

:[31]
push.s "obj_readable_room3_124"@22851
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[32]
pushbltn.v self.room
pushi.e 67
cmp.i.v EQ
bf [34]

:[33]
push.s "obj_readable_room3_128"@22853
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[34]
pushbltn.v self.room
pushi.e 68
cmp.i.v EQ
bf [36]

:[35]
push.s "obj_readable_room3_132"@22855
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[36]
pushbltn.v self.room
pushi.e 87
cmp.i.v EQ
bf [38]

:[37]
push.s "obj_readable_room3_139"@22857
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[38]
pushbltn.v self.room
pushi.e 88
cmp.i.v EQ
bf [40]

:[39]
push.s "obj_readable_room3_141"@22859
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[40]
pushbltn.v self.room
pushi.e 90
cmp.i.v EQ
bf [42]

:[41]
push.s "obj_readable_room3_142"@22861
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[42]
pushbltn.v self.room
pushi.e 91
cmp.i.v EQ
bf [44]

:[43]
push.s "obj_readable_room3_147"@22863
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room3_148"@22865
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[44]
pushbltn.v self.room
pushi.e 101
cmp.i.v EQ
bf [46]

:[45]
push.s "obj_readable_room3_154"@22867
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room3_155"@22869
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room3_156"@22871
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_readable_room3_157"@22873
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_readable_room3_158"@22875
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_readable_room3_159"@22877
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg

:[46]
pushbltn.v self.room
pushi.e 126
cmp.i.v EQ
bf [48]

:[47]
push.s "obj_readable_room3_165"@22879
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room3_166"@22881
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room3_167"@22883
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[48]
pushbltn.v self.room
pushi.e 76
cmp.i.v EQ
bf [52]

:[49]
pushi.e 1027
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [51]

:[50]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_readable_room3_175"@22885
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room3_176"@22887
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
b [52]

:[51]
push.s "obj_readable_room3_180"@22889
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[52]
pushbltn.v self.room
pushi.e 77
cmp.i.v EQ
bf [54]

:[53]
pushi.e 561
pop.v.i global.msc

:[54]
pushbltn.v self.room
pushi.e 123
cmp.i.v EQ
bf [56]

:[55]
push.s "obj_readable_room3_195"@22891
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[56]
pushbltn.v self.room
pushi.e 141
cmp.i.v EQ
bf [62]

:[57]
push.s "obj_readable_room3_200"@22893
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room3_201"@22895
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushglb.v global.plot
pushi.e 126
cmp.i.v LT
bf [59]

:[58]
call.i scr_murderlv(argc=0)
pushi.e 12
cmp.i.v LT
b [60]

:[59]
push.e 0

:[60]
bf [62]

:[61]
push.s "obj_readable_room3_202"@22896
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[62]
pushbltn.v self.room
pushi.e 142
cmp.i.v EQ
bf [64]

:[63]
push.s "obj_readable_room3_207"@22898
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room3_208"@22900
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[64]
pushbltn.v self.room
pushi.e 154
cmp.i.v EQ
bf [70]

:[65]
push.s "obj_readable_room3_213"@22902
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushglb.v global.plot
pushi.e 134
cmp.i.v LT
bf [67]

:[66]
push.s "obj_readable_room3_215"@22903
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[67]
pushi.e 1175
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [70]

:[68]
pushi.e 27
pop.v.i global.typer
push.s "obj_readable_room3_222"@22905
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room3_223"@22907
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushglb.v global.plot
pushi.e 134
cmp.i.v EQ
bf [70]

:[69]
push.s "obj_readable_room3_228"@22908
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room3_229"@22909
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[70]
pushbltn.v self.room
pushi.e 118
cmp.i.v EQ
bf [73]

:[71]
pushi.e 37
pop.v.i global.typer
pushi.e 5
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
push.s "obj_readable_room3_242"@22911
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room3_243"@22913
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room3_244"@22915
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_readable_room3_245"@22917
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_readable_room3_246"@22919
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.v self.talkedto
pushi.e 0
cmp.i.v GT
bf [73]

:[72]
push.s "obj_readable_room3_248"@22921
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[73]
pushbltn.v self.room
pushi.e 245
cmp.i.v EQ
bf [76]

:[74]
push.s "obj_readable_room3_254"@22923
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room3_255"@22925
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room3_256"@22927
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_readable_room3_257"@22929
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_readable_room3_258"@22931
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_readable_room3_259"@22933
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e -5
pushi.e 485
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [76]

:[75]
push.s "obj_readable_room3_261"@22934
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[76]
pushbltn.v self.room
pushi.e 257
cmp.i.v EQ
bf [78]

:[77]
push.s "obj_readable_room3_266"@22936
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[78]
pushbltn.v self.room
pushi.e 258
cmp.i.v EQ
bf [83]

:[79]
push.s "obj_readable_room3_272"@22938
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room3_273"@22940
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room3_274"@22942
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e -5
pushi.e 485
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [81]

:[80]
push.s "obj_readable_room3_275"@22943
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[81]
pushi.e -5
pushi.e 490
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [83]

:[82]
push.s "obj_readable_room3_276"@22944
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[83]
pushbltn.v self.room
pushi.e 246
cmp.i.v EQ
bf [85]

:[84]
pushi.e 829
pop.v.i global.msc

:[85]
pushbltn.v self.room
pushi.e 78
cmp.i.v EQ
bf [87]

:[86]
push.s "obj_readable_room3_286"@22946
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[87]
pushbltn.v self.room
pushi.e 80
cmp.i.v EQ
bf [89]

:[88]
push.s "obj_readable_room3_291"@22948
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room3_292"@22950
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_readable_room3_293"@22952
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[89]
pushbltn.v self.room
pushi.e 120
cmp.i.v EQ
bf [93]

:[90]
pushi.e 1134
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [92]

:[91]
push.s "obj_readable_room3_303"@22954
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room3_304"@22956
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
b [93]

:[92]
push.s "obj_readable_room3_308"@22958
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_readable_room3_309"@22960
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[93]
pushbltn.v self.room
pushi.e 266
cmp.i.v EQ
bf [95]

:[94]
push.s "obj_readable_room3_315"@22962
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[95]
pushbltn.v self.room
pushi.e 184
cmp.i.v EQ
bf [97]

:[96]
push.s "obj_readable_room3_320"@22964
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[97]
pushbltn.v self.room
pushi.e 128
cmp.i.v EQ
bf [99]

:[98]
push.s "obj_readable_room3_325"@22966
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[99]
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