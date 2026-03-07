.localvar 0 arguments
.localvar 1 oldstring 976
.localvar 2 newchar 977
.localvar 3 len 978
.localvar 4 lastchar 979
.localvar 5 compose4 981
.localvar 6 compose3 983
.localvar 7 compose2 985

:[0]
pushbltn.v self.argument0
pop.v.v local.oldstring
pushbltn.v self.argument1
pop.v.v local.newchar
pushloc.v local.oldstring
call.i strlen(argc=1)
pop.v.v local.len
pushloc.v local.newchar
push.s "a"@2906
cmp.s.v GTE
bf [2]

:[1]
pushloc.v local.newchar
push.s "z"@47111
cmp.s.v LTE
b [3]

:[2]
push.e 0

:[3]
not.b
bf [18]

:[4]
pushloc.v local.oldstring
push.s ""@36
cmp.s.v NEQ
bf [6]

:[5]
pushloc.v local.len
pushloc.v local.oldstring
call.i string_char_at(argc=2)
push.s "n"@359
cmp.s.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
pushloc.v local.len
pushi.e 1
sub.i.v
pushi.e 1
conv.i.v
pushloc.v local.oldstring
call.i substr(argc=3)
push.s "ん"@47112
add.s.v
pop.v.v local.oldstring

:[9]
pushloc.v local.newchar
push.s "-"@47113
cmp.s.v EQ
bf [11]

:[10]
push.s "ー"@47114
pop.v.s local.newchar

:[11]
pushloc.v local.newchar
push.s "/"@12963
cmp.s.v EQ
bf [13]

:[12]
push.s "・"@47115
pop.v.s local.newchar

:[13]
pushloc.v local.newchar
push.s "["@47116
cmp.s.v EQ
bf [15]

:[14]
push.s "「"@47117
pop.v.s local.newchar

:[15]
pushloc.v local.newchar
push.s "]"@6330
cmp.s.v EQ
bf [17]

:[16]
push.s "」"@47118
pop.v.s local.newchar

:[17]
pushloc.v local.oldstring
pushloc.v local.newchar
add.v.v
ret.v

:[18]
pushloc.v local.oldstring
push.s ""@36
cmp.s.v EQ
bf [20]

:[19]
pushloc.v local.newchar
ret.v

:[20]
pushloc.v local.len
pushloc.v local.oldstring
call.i string_char_at(argc=2)
pop.v.v local.lastchar
pushloc.v local.lastchar
push.s "a"@2906
cmp.s.v GTE
bf [22]

:[21]
pushloc.v local.lastchar
push.s "z"@47111
cmp.s.v LTE
b [23]

:[22]
push.e 0

:[23]
not.b
bf [35]

:[24]
pushloc.v local.newchar
push.s "a"@2906
cmp.s.v EQ
bf [26]

:[25]
push.s "あ"@47120
pop.v.s local.newchar

:[26]
pushloc.v local.newchar
push.s "i"@37
cmp.s.v EQ
bf [28]

:[27]
push.s "い"@47121
pop.v.s local.newchar

:[28]
pushloc.v local.newchar
push.s "u"@2917
cmp.s.v EQ
bf [30]

:[29]
push.s "う"@47122
pop.v.s local.newchar

:[30]
pushloc.v local.newchar
push.s "e"@47123
cmp.s.v EQ
bf [32]

:[31]
push.s "え"@47124
pop.v.s local.newchar

:[32]
pushloc.v local.newchar
push.s "o"@47125
cmp.s.v EQ
bf [34]

:[33]
push.s "お"@47126
pop.v.s local.newchar

:[34]
pushloc.v local.oldstring
pushloc.v local.newchar
add.v.v
ret.v

:[35]
pushloc.v local.newchar
push.s "a"@2906
cmp.s.v EQ
bt [40]

:[36]
pushloc.v local.newchar
push.s "i"@37
cmp.s.v EQ
bt [40]

:[37]
pushloc.v local.newchar
push.s "u"@2917
cmp.s.v EQ
bt [40]

:[38]
pushloc.v local.newchar
push.s "e"@47123
cmp.s.v EQ
bt [40]

:[39]
pushloc.v local.newchar
push.s "o"@47125
cmp.s.v EQ
b [41]

:[40]
push.e 1

:[41]
not.b
bf [46]

:[42]
pushloc.v local.lastchar
push.s "n"@359
cmp.s.v EQ
bf [44]

:[43]
pushloc.v local.len
pushi.e 1
sub.i.v
pushi.e 1
conv.i.v
pushloc.v local.oldstring
call.i substr(argc=3)
push.s "ん"@47112
add.s.v
pop.v.v local.oldstring
push.s "ん"@47112
pop.v.s local.lastchar
b [46]

:[44]
pushloc.v local.newchar
pushloc.v local.lastchar
cmp.v.v EQ
bf [46]

:[45]
pushloc.v local.len
pushi.e 1
sub.i.v
pushi.e 1
conv.i.v
pushloc.v local.oldstring
call.i substr(argc=3)
push.s "っ"@47127
add.s.v
pop.v.v local.oldstring
push.s "っ"@47127
pop.v.s local.lastchar

:[46]
pushloc.v local.len
pushi.e 3
cmp.i.v GTE
bf [49]

:[47]
pushloc.v local.len
pushi.e 3
sub.i.v
pushloc.v local.oldstring
call.i substr(argc=2)
pushloc.v local.newchar
add.v.v
pushglb.v global.kanatype_lookup_4ch
call.i ds_map_find_value(argc=2)
pop.v.v local.compose4
pushloc.v local.compose4
call.i is_undefined(argc=1)
conv.v.b
not.b
bf [49]

:[48]
pushloc.v local.len
pushi.e 3
sub.i.v
pushi.e 1
conv.i.v
pushloc.v local.oldstring
call.i substr(argc=3)
pushloc.v local.compose4
add.v.v
ret.v

:[49]
pushloc.v local.len
pushi.e 2
cmp.i.v GTE
bf [52]

:[50]
pushloc.v local.len
pushi.e 1
sub.i.v
pushloc.v local.oldstring
call.i substr(argc=2)
pushloc.v local.newchar
add.v.v
pushglb.v global.kanatype_lookup_3ch
call.i ds_map_find_value(argc=2)
pop.v.v local.compose3
pushloc.v local.compose3
call.i is_undefined(argc=1)
conv.v.b
not.b
bf [52]

:[51]
pushloc.v local.len
pushi.e 2
sub.i.v
pushi.e 1
conv.i.v
pushloc.v local.oldstring
call.i substr(argc=3)
pushloc.v local.compose3
add.v.v
ret.v

:[52]
pushloc.v local.lastchar
pushloc.v local.newchar
add.v.v
pushglb.v global.kanatype_lookup_2ch
call.i ds_map_find_value(argc=2)
pop.v.v local.compose2
pushloc.v local.compose2
call.i is_undefined(argc=1)
conv.v.b
not.b
bf [54]

:[53]
pushloc.v local.len
pushi.e 1
sub.i.v
pushi.e 1
conv.i.v
pushloc.v local.oldstring
call.i substr(argc=3)
pushloc.v local.compose2
add.v.v
ret.v

:[54]
pushloc.v local.newchar
push.s "a"@2906
cmp.s.v EQ
bf [56]

:[55]
push.s "あ"@47120
pop.v.s local.newchar

:[56]
pushloc.v local.newchar
push.s "i"@37
cmp.s.v EQ
bf [58]

:[57]
push.s "い"@47121
pop.v.s local.newchar

:[58]
pushloc.v local.newchar
push.s "u"@2917
cmp.s.v EQ
bf [60]

:[59]
push.s "う"@47122
pop.v.s local.newchar

:[60]
pushloc.v local.newchar
push.s "e"@47123
cmp.s.v EQ
bf [62]

:[61]
push.s "え"@47124
pop.v.s local.newchar

:[62]
pushloc.v local.newchar
push.s "o"@47125
cmp.s.v EQ
bf [64]

:[63]
push.s "お"@47126
pop.v.s local.newchar

:[64]
pushloc.v local.oldstring
pushloc.v local.newchar
add.v.v
ret.v

:[end]