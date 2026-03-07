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
pushi.e 25
cmp.i.v LT
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
push.s "obj_chilldrake_246"@10899
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[10]
push.v self.mycommand
pushi.e 25
cmp.i.v GTE
bf [12]

:[11]
push.v self.mycommand
pushi.e 50
cmp.i.v LT
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
push.s "obj_chilldrake_247"@10901
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[15]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [17]

:[16]
push.v self.mycommand
pushi.e 75
cmp.i.v LT
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
push.s "obj_chilldrake_248"@10903
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[20]
push.v self.mycommand
pushi.e 75
cmp.i.v GTE
bf [22]

:[21]
push.v self.mycommand
pushi.e 100
cmp.i.v LTE
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
push.s "obj_chilldrake_249"@10905
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[25]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [36]

:[26]
push.v self.joketold
pushi.e 1
cmp.i.v EQ
bf [33]

:[27]
push.v self.gg
pushi.e 0
cmp.i.v EQ
bf [29]

:[28]
push.s "obj_chilldrake_254"@10907
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[29]
push.v self.gg
pushi.e 1
cmp.i.v EQ
bf [31]

:[30]
push.s "obj_chilldrake_255"@10909
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[31]
push.v self.gg
pushi.e 2
cmp.i.v EQ
bf [33]

:[32]
push.s "obj_chilldrake_256"@10911
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[33]
push.v self.joketold
pushi.e 0
cmp.i.v EQ
bf [35]

:[34]
push.s "obj_chilldrake_258"@10913
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[35]
pushi.e 108
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[36]
push.v self.whatiheard
pushi.e 1
cmp.i.v NEQ
bf [42]

:[37]
push.v self.whatiheard
pushi.e 3
cmp.i.v NEQ
bf [42]

:[38]
push.v self.whatiheard
pushi.e 4
cmp.i.v NEQ
bf [42]

:[39]
push.v self.whatiheard
pushi.e 19
cmp.i.v NEQ
bf [42]

:[40]
push.v self.whatiheard
pushi.e 20
cmp.i.v NEQ
bf [42]

:[41]
push.v self.mercymod
pushi.e -25
cmp.i.v NEQ
b [43]

:[42]
push.e 0

:[43]
bf [45]

:[44]
pushi.e 1
pop.v.i self.joketold

:[45]
push.v self.whatiheard
pushi.e 4
cmp.i.v EQ
bf [52]

:[46]
push.v self.gg
pushi.e 0
cmp.i.v EQ
bf [48]

:[47]
push.s "obj_chilldrake_265"@10915
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[48]
push.v self.gg
pushi.e 1
cmp.i.v EQ
bf [50]

:[49]
push.s "obj_chilldrake_266"@10917
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[50]
push.v self.gg
pushi.e 2
cmp.i.v EQ
bf [52]

:[51]
push.s "obj_chilldrake_267"@10919
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[52]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [60]

:[53]
push.v self.gg
pushi.e 0
cmp.i.v EQ
bf [55]

:[54]
push.s "obj_chilldrake_272"@10921
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[55]
push.v self.gg
pushi.e 1
cmp.i.v EQ
bf [57]

:[56]
push.s "obj_chilldrake_273"@10923
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[57]
push.v self.gg
pushi.e 2
cmp.i.v EQ
bf [59]

:[58]
push.s "obj_chilldrake_274"@10925
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[59]
pushi.e 0
pop.v.i self.joketold

:[60]
push.v self.whatiheard
pushi.e 20
cmp.i.v EQ
bf [68]

:[61]
push.v self.gg
pushi.e 0
cmp.i.v EQ
bf [63]

:[62]
push.s "obj_chilldrake_279"@10927
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[63]
push.v self.gg
pushi.e 1
cmp.i.v EQ
bf [65]

:[64]
push.s "obj_chilldrake_280"@10929
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[65]
push.v self.gg
pushi.e 2
cmp.i.v EQ
bf [67]

:[66]
push.s "obj_chilldrake_281"@10931
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[67]
pushi.e 200
pop.v.i self.mercymod

:[68]
push.v self.whatiheard
pushi.e 19
cmp.i.v EQ
bf [76]

:[69]
push.v self.gg
pushi.e 0
cmp.i.v EQ
bf [71]

:[70]
push.s "obj_chilldrake_286"@10933
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[71]
push.v self.gg
pushi.e 1
cmp.i.v EQ
bf [73]

:[72]
push.s "obj_chilldrake_287"@10935
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[73]
push.v self.gg
pushi.e 2
cmp.i.v EQ
bf [75]

:[74]
push.s "obj_chilldrake_288"@10937
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[75]
pushi.e -25
pop.v.i self.mercymod

:[76]
push.s "obj_chilldrake_296"@10938
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