.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.goodot
pushi.e 0
pop.v.i global.msc
push.v self.prevhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
cmp.v.v EQ
bf [4]

:[1]
pushi.e 1
pop.v.i self.goodot
push.v self.p_mode
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v self.myplot
pushi.e 1
add.i.v
pop.v.v self.myplot

:[3]
b [5]

:[4]
pushi.e 0
pop.v.i self.goodot
push.v self.hitplot
pushi.e 1
add.i.v
pop.v.v self.hitplot

:[5]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pop.v.v self.prevhp
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
push.s "obj_sosorry_269"@25979
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.myplot
pushi.e 5
cmp.i.v EQ
bf [8]

:[6]
push.v self.p_mode
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
push.v self.goodot
pushi.e 1
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
pushi.e 1
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.s "obj_sosorry_274"@25981
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[11]
push.v self.hitplot
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
push.s "obj_sosorry_279"@25983
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sosorry_280"@25985
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_sosorry_281"@25987
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_sosorry_282"@25989
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[13]
push.v self.hitplot
pushi.e 2
cmp.i.v EQ
bf [15]

:[14]
push.s "obj_sosorry_287"@25991
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sosorry_288"@25993
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_sosorry_289"@25995
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[15]
push.v self.hitplot
pushi.e 3
cmp.i.v EQ
bf [17]

:[16]
push.s "obj_sosorry_294"@25996
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sosorry_295"@25998
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_sosorry_296"@26000
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_sosorry_297"@26002
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_sosorry_298"@26004
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[17]
push.v self.hitplot
pushi.e 4
cmp.i.v EQ
bf [19]

:[18]
push.s "obj_sosorry_303"@26006
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sosorry_304"@26008
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_sosorry_305"@26009
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_sosorry_306"@26011
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_sosorry_307"@26013
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[19]
push.v self.hitplot
pushi.e 5
cmp.i.v EQ
bf [21]

:[20]
push.s "obj_sosorry_312"@26015
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sosorry_313"@26017
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_sosorry_314"@26019
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_sosorry_315"@26021
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_sosorry_316"@26023
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_sosorry_317"@26025
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_sosorry_318"@26027
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_sosorry_319"@26029
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_sosorry_320"@26031
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_sosorry_321"@26033
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_sosorry_322"@26035
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_sosorry_323"@26037
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg

:[21]
push.v self.hitplot
pushi.e 6
cmp.i.v EQ
bf [23]

:[22]
push.s "obj_sosorry_328"@26039
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sosorry_329"@26040
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_sosorry_330"@26042
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[23]
push.v self.hitplot
pushi.e 7
cmp.i.v EQ
bf [25]

:[24]
push.s "obj_sosorry_335"@26044
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[25]
push.v self.hitplot
pushi.e 8
cmp.i.v EQ
bf [27]

:[26]
push.s "obj_sosorry_340"@26045
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sosorry_341"@26047
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[27]
push.v self.hitplot
pushi.e 9
cmp.i.v EQ
bf [29]

:[28]
push.s "obj_sosorry_346"@26049
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sosorry_347"@26051
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_sosorry_348"@26053
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_sosorry_349"@26055
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_sosorry_350"@26057
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_sosorry_351"@26059
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_sosorry_352"@26061
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_sosorry_353"@26063
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_sosorry_354"@26065
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_sosorry_355"@26067
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_sosorry_356"@26069
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_sosorry_357"@26071
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_sosorry_358"@26073
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg

:[29]
push.v self.hitplot
pushi.e 10
cmp.i.v EQ
bf [31]

:[30]
push.s "obj_sosorry_363"@26075
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sosorry_364"@26077
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_sosorry_365"@26079
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_sosorry_366"@26081
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_sosorry_367"@26083
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_sosorry_368"@26085
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_sosorry_369"@26087
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_sosorry_370"@26089
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg

:[31]
push.v self.hitplot
pushi.e 11
cmp.i.v EQ
bf [35]

:[32]
pushi.e 190
pushenv [34]

:[33]
call.i instance_destroy(argc=0)
popz.v

:[34]
popenv [33]
push.s "obj_sosorry_376"@26091
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sosorry_377"@26093
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_sosorry_378"@26094
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_sosorry_379"@26096
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_sosorry_380"@26098
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.d_con

:[35]
push.v self.goodot
pushi.e 1
cmp.i.v EQ
bf [58]

:[36]
push.v self.myplot
pushi.e 1
cmp.i.v EQ
bf [38]

:[37]
push.s "obj_sosorry_392"@26100
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sosorry_393"@26102
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_sosorry_394"@26104
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_sosorry_395"@26106
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_sosorry_396"@26108
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_sosorry_397"@26110
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg

:[38]
push.v self.myplot
pushi.e 2
cmp.i.v EQ
bf [40]

:[39]
push.s "obj_sosorry_402"@26112
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sosorry_403"@26114
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_sosorry_404"@26116
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_sosorry_405"@26118
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_sosorry_406"@26120
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_sosorry_407"@26122
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg

:[40]
push.v self.myplot
pushi.e 3
cmp.i.v EQ
bf [42]

:[41]
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.s "obj_sosorry_413"@26124
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sosorry_414"@26126
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_sosorry_415"@26128
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[42]
push.v self.myplot
pushi.e 4
cmp.i.v EQ
bf [44]

:[43]
push.s "obj_sosorry_420"@26130
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sosorry_421"@26132
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_sosorry_422"@26134
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_sosorry_423"@26136
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[44]
push.v self.myplot
pushi.e 5
cmp.i.v EQ
bf [46]

:[45]
push.v self.p_mode
pushi.e 1
cmp.i.v EQ
b [47]

:[46]
push.e 0

:[47]
bf [49]

:[48]
pushi.e 1
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.s "obj_sosorry_429"@26137
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[49]
push.v self.myplot
pushi.e 5
cmp.i.v EQ
bf [51]

:[50]
push.v self.p_mode
pushi.e 0
cmp.i.v EQ
b [52]

:[51]
push.e 0

:[52]
bf [54]

:[53]
push.s "obj_sosorry_434"@26139
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sosorry_435"@26141
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_sosorry_436"@26143
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_sosorry_437"@26145
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.p_con
pushi.e 1
pop.v.i self.p_mode

:[54]
push.v self.myplot
pushi.e 6
cmp.i.v EQ
bf [56]

:[55]
pushi.e 1
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.s "obj_sosorry_445"@26147
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sosorry_446"@26149
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[56]
push.v self.myplot
pushi.e 7
cmp.i.v EQ
bf [58]

:[57]
pushi.e 222
pop.v.i self.mercymod
pushi.e 3
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.s "obj_sosorry_453"@26151
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_sosorry_454"@26153
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_sosorry_455"@26155
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_sosorry_456"@26157
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_sosorry_457"@26159
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_sosorry_458"@26160
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_sosorry_459"@26162
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_sosorry_460"@26164
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_sosorry_461"@26166
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_sosorry_462"@26168
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_sosorry_463"@26170
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_sosorry_464"@26172
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_sosorry_465"@26174
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_sosorry_466"@26176
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_sosorry_467"@26177
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
push.s "obj_sosorry_468"@26179
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.n_con

:[58]
pushi.e 111
pop.v.i global.typer
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 190
add.i.v
call.i scr_blcon_x(argc=2)
popz.v
pushi.e -1500
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e -1600
push.v self.writer
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 17
pop.v.i global.border
push.v self.p_mode
pushi.e 0
cmp.i.v EQ
bf [66]

:[59]
push.v self.myplot
pushi.e 0
cmp.i.v EQ
bt [63]

:[60]
push.v self.myplot
pushi.e 1
cmp.i.v EQ
bt [63]

:[61]
push.v self.myplot
pushi.e 2
cmp.i.v EQ
bt [63]

:[62]
push.v self.myplot
pushi.e 5
cmp.i.v GTE
b [64]

:[63]
push.e 1

:[64]
bf [66]

:[65]
pushi.e 52
pop.v.i global.border

:[66]
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
pushi.e 2
pop.v.i self.talked

:[end]