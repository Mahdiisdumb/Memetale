.localvar 0 arguments

:[0]
pushi.e 187
conv.i.v
push.v self.y
pushi.e 52
add.i.v
push.v self.x
pushi.e 145
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 3
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.gg
pushi.e 100
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pop.v.v self.mycommand
push.v self.mercymod
pushi.e -25
cmp.i.v EQ
bf [2]

:[1]
call.i scr_monstersum(argc=0)
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 0
pop.v.i self.mercymod

:[5]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [7]

:[6]
push.v self.mycommand
pushi.e 14
cmp.i.v LT
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
push.s "obj_snowdrake_248"@25765
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[10]
push.v self.mycommand
pushi.e 14
cmp.i.v GTE
bf [12]

:[11]
push.v self.mycommand
pushi.e 28
cmp.i.v LT
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
push.s "obj_snowdrake_249"@25767
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[15]
push.v self.mycommand
pushi.e 28
cmp.i.v GTE
bf [17]

:[16]
push.v self.mycommand
pushi.e 42
cmp.i.v LT
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
push.s "obj_snowdrake_250"@25769
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[20]
push.v self.mycommand
pushi.e 42
cmp.i.v GTE
bf [22]

:[21]
push.v self.mycommand
pushi.e 66
cmp.i.v LTE
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
push.s "obj_snowdrake_251"@25771
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[25]
push.v self.mycommand
pushi.e 66
cmp.i.v GTE
bf [27]

:[26]
push.v self.mycommand
pushi.e 80
cmp.i.v LTE
b [28]

:[27]
push.e 0

:[28]
bf [30]

:[29]
push.s "obj_snowdrake_252"@25773
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[30]
push.v self.mycommand
pushi.e 80
cmp.i.v GTE
bf [32]

:[31]
push.v self.mycommand
pushi.e 90
cmp.i.v LTE
b [33]

:[32]
push.e 0

:[33]
bf [35]

:[34]
push.s "obj_snowdrake_253"@25775
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[35]
push.v self.mycommand
pushi.e 90
cmp.i.v GTE
bf [37]

:[36]
push.v self.mycommand
pushi.e 100
cmp.i.v LTE
b [38]

:[37]
push.e 0

:[38]
bf [40]

:[39]
push.s "obj_snowdrake_254"@25777
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[40]
push.v self.mercymod
pushi.e -25
cmp.i.v EQ
bf [47]

:[41]
push.v self.gg
pushi.e 0
cmp.i.v EQ
bf [43]

:[42]
push.s "obj_snowdrake_257"@25779
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[43]
push.v self.gg
pushi.e 1
cmp.i.v EQ
bf [45]

:[44]
push.s "obj_snowdrake_258"@25781
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[45]
push.v self.gg
pushi.e 2
cmp.i.v EQ
bf [47]

:[46]
push.s "obj_snowdrake_259"@25783
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[47]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [61]

:[48]
push.v self.joketold
pushi.e 1
cmp.i.v EQ
bf [58]

:[49]
push.v self.gg
pushi.e 0
cmp.i.v EQ
bf [51]

:[50]
push.s "obj_snowdrake_265"@25785
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[51]
push.v self.gg
pushi.e 1
cmp.i.v EQ
bf [53]

:[52]
push.s "obj_snowdrake_266"@25787
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[53]
push.v self.gg
pushi.e 2
cmp.i.v EQ
bf [55]

:[54]
push.s "obj_snowdrake_267"@25789
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[55]
pushi.e -5
pushi.e 57
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [57]

:[56]
push.s "obj_snowdrake_268"@25790
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[57]
pushi.e 1
pushi.e -5
pushi.e 57
pop.v.i [array]global.flag

:[58]
push.v self.joketold
pushi.e 0
cmp.i.v EQ
bf [60]

:[59]
push.s "obj_snowdrake_271"@25792
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[60]
pushi.e 108
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[61]
push.v self.whatiheard
pushi.e 1
cmp.i.v NEQ
bf [67]

:[62]
push.v self.whatiheard
pushi.e 3
cmp.i.v NEQ
bf [67]

:[63]
push.v self.whatiheard
pushi.e 4
cmp.i.v NEQ
bf [67]

:[64]
push.v self.whatiheard
pushi.e 19
cmp.i.v NEQ
bf [67]

:[65]
push.v self.whatiheard
pushi.e 20
cmp.i.v NEQ
bf [67]

:[66]
push.v self.mercymod
pushi.e -25
cmp.i.v NEQ
b [68]

:[67]
push.e 0

:[68]
bf [70]

:[69]
pushi.e 1
pop.v.i self.joketold

:[70]
push.v self.whatiheard
pushi.e 4
cmp.i.v EQ
bf [77]

:[71]
push.v self.gg
pushi.e 0
cmp.i.v EQ
bf [73]

:[72]
push.s "obj_snowdrake_278"@25794
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[73]
push.v self.gg
pushi.e 1
cmp.i.v EQ
bf [75]

:[74]
push.s "obj_snowdrake_279"@25796
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[75]
push.v self.gg
pushi.e 2
cmp.i.v EQ
bf [77]

:[76]
push.s "obj_snowdrake_280"@25798
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[77]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [85]

:[78]
push.v self.gg
pushi.e 0
cmp.i.v EQ
bf [80]

:[79]
push.s "obj_snowdrake_285"@25800
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[80]
push.v self.gg
pushi.e 1
cmp.i.v EQ
bf [82]

:[81]
push.s "obj_snowdrake_286"@25802
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[82]
push.v self.gg
pushi.e 2
cmp.i.v EQ
bf [84]

:[83]
push.s "obj_snowdrake_287"@25804
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[84]
pushi.e 0
pop.v.i self.joketold

:[85]
push.v self.whatiheard
pushi.e 20
cmp.i.v EQ
bf [93]

:[86]
push.v self.gg
pushi.e 0
cmp.i.v EQ
bf [88]

:[87]
push.s "obj_snowdrake_292"@25805
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[88]
push.v self.gg
pushi.e 1
cmp.i.v EQ
bf [90]

:[89]
push.s "obj_snowdrake_293"@25807
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[90]
push.v self.gg
pushi.e 2
cmp.i.v EQ
bf [92]

:[91]
push.s "obj_snowdrake_294"@25808
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[92]
pushi.e 200
pop.v.i self.mercymod

:[93]
push.v self.whatiheard
pushi.e 19
cmp.i.v EQ
bf [101]

:[94]
push.v self.gg
pushi.e 0
cmp.i.v EQ
bf [96]

:[95]
push.s "obj_snowdrake_299"@25810
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[96]
push.v self.gg
pushi.e 1
cmp.i.v EQ
bf [98]

:[97]
push.s "obj_snowdrake_300"@25812
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[98]
push.v self.gg
pushi.e 2
cmp.i.v EQ
bf [100]

:[99]
push.s "obj_snowdrake_301"@25814
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[100]
pushi.e -25
pop.v.i self.mercymod

:[101]
push.s "obj_snowdrake_309"@25815
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 2
pop.v.i global.typer
pushi.e 786
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 15
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd
pushi.e 6
pop.v.i global.border
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
add.v.v
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
pushi.e 8
sub.i.v
pop.v.v 744.x
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
add.v.v
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
pushi.e 8
sub.i.v
pop.v.v 744.y

:[end]