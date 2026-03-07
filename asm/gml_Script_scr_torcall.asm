.localvar 0 arguments

:[0]
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e -5
pushi.e 286
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.s "scr_torcall_7"@4931
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "scr_torcall_8"@4932
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "scr_torcall_9"@4933
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_torcall_10"@4934
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_torcall_11"@4935
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_torcall_12"@4936
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "scr_torcall_13"@4937
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "scr_torcall_14"@4938
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "scr_torcall_15"@4939
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "scr_torcall_16"@4940
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "scr_torcall_17"@4941
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg

:[2]
pushi.e -5
pushi.e 286
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.s "scr_torcall_22"@4942
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "scr_torcall_23"@4943
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "scr_torcall_24"@4944
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_torcall_25"@4945
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_torcall_26"@4946
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_torcall_27"@4947
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg

:[4]
pushi.e -5
pushi.e 286
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
push.s "scr_torcall_32"@4948
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "scr_torcall_33"@4949
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "scr_torcall_34"@4950
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_torcall_35"@4951
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[6]
pushi.e -5
pushi.e 286
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [8]

:[7]
push.s "scr_torcall_40"@4952
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[8]
pushi.e -5
pushi.e 286
push.v [array]global.flag
pushi.e 4
cmp.i.v EQ
bf [10]

:[9]
push.s "scr_torcall_45"@4953
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "scr_torcall_46"@4954
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "scr_torcall_47"@4955
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_torcall_48"@4956
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[10]
pushi.e -5
pushi.e 286
push.v [array]global.flag
pushi.e 5
cmp.i.v EQ
bf [12]

:[11]
push.s "scr_torcall_53"@4957
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "scr_torcall_54"@4958
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[12]
pushi.e -5
pushi.e 286
push.v [array]global.flag
pushi.e 6
cmp.i.v EQ
bf [14]

:[13]
push.s "scr_torcall_59"@4959
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "scr_torcall_60"@4960
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "scr_torcall_61"@4961
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[14]
pushi.e -5
pushi.e 286
push.v [array]global.flag
pushi.e 7
cmp.i.v EQ
bf [16]

:[15]
push.s "scr_torcall_66"@4962
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "scr_torcall_67"@4963
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "scr_torcall_68"@4964
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_torcall_69"@4965
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_torcall_70"@4966
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[16]
pushi.e -5
pushi.e 286
push.v [array]global.flag
pushi.e 8
cmp.i.v EQ
bf [18]

:[17]
push.s "scr_torcall_75"@4967
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "scr_torcall_76"@4968
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "scr_torcall_77"@4969
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[18]
pushi.e -5
pushi.e 286
push.v [array]global.flag
pushi.e 9
cmp.i.v EQ
bf [20]

:[19]
push.s "scr_torcall_82"@4970
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "scr_torcall_83"@4971
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[20]
pushi.e -5
pushi.e 286
push.v [array]global.flag
pushi.e 10
cmp.i.v EQ
bf [22]

:[21]
push.s "scr_torcall_88"@4972
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "scr_torcall_89"@4973
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "scr_torcall_90"@4974
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[22]
pushi.e -5
pushi.e 286
push.v [array]global.flag
pushi.e 11
cmp.i.v EQ
bf [24]

:[23]
push.s "scr_torcall_95"@4975
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "scr_torcall_96"@4976
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "scr_torcall_97"@4977
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_torcall_98"@4978
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[24]
pushi.e -5
pushi.e 286
push.v [array]global.flag
pushi.e 12
cmp.i.v EQ
bf [26]

:[25]
push.s "scr_torcall_103"@4979
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "scr_torcall_104"@4980
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "scr_torcall_105"@4981
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_torcall_106"@4982
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[26]
pushi.e -5
pushi.e 286
push.v [array]global.flag
pushi.e 13
cmp.i.v EQ
bf [28]

:[27]
push.s "scr_torcall_111"@4983
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "scr_torcall_112"@4984
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "scr_torcall_113"@4985
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_torcall_114"@4986
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_torcall_115"@4987
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[28]
pushi.e -5
pushi.e 286
push.v [array]global.flag
pushi.e 14
cmp.i.v EQ
bf [30]

:[29]
push.s "scr_torcall_120"@4988
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "scr_torcall_121"@4989
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "scr_torcall_122"@4990
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_torcall_123"@4991
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[30]
pushi.e -5
pushi.e 286
push.v [array]global.flag
pushi.e 15
cmp.i.v EQ
bf [35]

:[31]
push.s "scr_torcall_128"@4992
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushglb.v global.osflavor
pushi.e 4
cmp.i.v GTE
bf [33]

:[32]
push.s "scr_torcall_129_console"@4993
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "scr_torcall_130_console"@4994
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
b [34]

:[33]
push.s "scr_torcall_129"@4995
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "scr_torcall_130"@4996
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[34]
push.s "scr_torcall_131"@4997
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[35]
pushi.e -5
pushi.e 286
push.v [array]global.flag
pushi.e 16
cmp.i.v EQ
bf [37]

:[36]
push.s "scr_torcall_136"@4998
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "scr_torcall_137"@4999
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "scr_torcall_138"@5000
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "scr_torcall_139"@5001
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "scr_torcall_140"@5002
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "scr_torcall_141"@5003
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg

:[37]
pushi.e -5
pushi.e 286
push.v [array]global.flag
pushi.e 17
cmp.i.v GTE
bf [39]

:[38]
push.s "scr_torcall_144"@5004
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[39]
pushi.e -5
pushi.e 286
push.v [array]global.flag
pushi.e -5
pushi.e 287
push.v [array]global.flag
cmp.v.v EQ
bf [41]

:[40]
push.s "scr_torcall_146"@5005
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[41]
pushi.e -5
pushi.e 286
push.v [array]global.flag
pushi.e -5
pushi.e 287
push.v [array]global.flag
cmp.v.v LT
bf [end]

:[42]
pushi.e -5
pushi.e 286
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag

:[end]