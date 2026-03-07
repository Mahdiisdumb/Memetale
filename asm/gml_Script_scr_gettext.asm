.localvar 0 arguments
.localvar 1 text_id 927
.localvar 2 text 929
.localvar 3 loc_text 931
.localvar 4 i 932
.localvar 5 sel 933
.localvar 6 replace 934
.localvar 7 before 935
.localvar 8 after 936

:[0]
pushi.e -1
pushi.e 0
push.v [array]self.argument
pop.v.v local.text_id
pushloc.v local.text_id
pushglb.v global.text_data_en
call.i ds_map_find_value(argc=2)
pop.v.v local.text
pushloc.v local.text
call.i is_undefined(argc=1)
conv.v.b
bf [2]

:[1]
push.s ""@36
pop.v.s local.text

:[2]
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [5]

:[3]
pushloc.v local.text_id
pushglb.v global.text_data_ja
call.i ds_map_find_value(argc=2)
pop.v.v local.loc_text
pushloc.v local.loc_text
call.i is_undefined(argc=1)
conv.v.b
not.b
bf [5]

:[4]
pushloc.v local.loc_text
pop.v.v local.text

:[5]
pushi.e 1
pop.v.i local.i

:[6]
pushloc.v local.i
pushloc.v local.text
call.i string_length(argc=1)
pushi.e 3
sub.i.v
cmp.v.v LTE
bf [65]

:[7]
pushi.e 2
conv.i.v
pushloc.v local.i
pushloc.v local.text
call.i string_copy(argc=3)
push.s "\\["@6329
cmp.s.v EQ
bf [9]

:[8]
pushloc.v local.i
pushi.e 3
add.i.v
pushloc.v local.text
call.i string_char_at(argc=2)
push.s "]"@6330
cmp.s.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [64]

:[11]
pushloc.v local.i
pushi.e 2
add.i.v
pushloc.v local.text
call.i string_char_at(argc=2)
pop.v.v local.sel
pushloc.v local.sel
push.s "C"@6306
cmp.s.v EQ
bf [13]

:[12]
pushglb.v global.charname
pop.v.v local.replace
b [63]

:[13]
pushloc.v local.sel
push.s "G"@5047
cmp.s.v EQ
bf [15]

:[14]
pushglb.v global.gold
call.i string(argc=1)
pop.v.v local.replace
b [63]

:[15]
pushloc.v local.sel
push.s "I"@6333
cmp.s.v EQ
bf [17]

:[16]
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]global.menucoord
conv.v.i
push.v [array]global.itemname
pop.v.v local.replace
b [63]

:[17]
pushloc.v local.sel
push.s "1"@6320
cmp.s.v EQ
bf [19]

:[18]
pushbltn.v self.argument_count
pushi.e 1
cmp.i.v GT
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
pushi.e -1
pushi.e 1
push.v [array]self.argument
pop.v.v local.replace
b [63]

:[22]
pushloc.v local.sel
push.s "2"@6334
cmp.s.v EQ
bf [24]

:[23]
pushbltn.v self.argument_count
pushi.e 2
cmp.i.v GT
b [25]

:[24]
push.e 0

:[25]
bf [27]

:[26]
pushi.e -1
pushi.e 2
push.v [array]self.argument
pop.v.v local.replace
b [63]

:[27]
pushloc.v local.sel
push.s "3"@6335
cmp.s.v EQ
bf [29]

:[28]
pushbltn.v self.argument_count
pushi.e 3
cmp.i.v GT
b [30]

:[29]
push.e 0

:[30]
bf [32]

:[31]
pushi.e -1
pushi.e 3
push.v [array]self.argument
pop.v.v local.replace
b [63]

:[32]
pushloc.v local.sel
push.s "4"@6336
cmp.s.v EQ
bf [34]

:[33]
pushbltn.v self.argument_count
pushi.e 4
cmp.i.v GT
b [35]

:[34]
push.e 0

:[35]
bf [37]

:[36]
pushi.e -1
pushi.e 4
push.v [array]self.argument
pop.v.v local.replace
b [63]

:[37]
pushloc.v local.sel
push.s "5"@6337
cmp.s.v EQ
bf [39]

:[38]
pushbltn.v self.argument_count
pushi.e 5
cmp.i.v GT
b [40]

:[39]
push.e 0

:[40]
bf [42]

:[41]
pushi.e -1
pushi.e 5
push.v [array]self.argument
pop.v.v local.replace
b [63]

:[42]
pushloc.v local.sel
push.s "6"@6338
cmp.s.v EQ
bf [44]

:[43]
pushbltn.v self.argument_count
pushi.e 6
cmp.i.v GT
b [45]

:[44]
push.e 0

:[45]
bf [47]

:[46]
pushi.e -1
pushi.e 6
push.v [array]self.argument
pop.v.v local.replace
b [63]

:[47]
pushloc.v local.sel
push.s "7"@6339
cmp.s.v EQ
bf [49]

:[48]
pushbltn.v self.argument_count
pushi.e 7
cmp.i.v GT
b [50]

:[49]
push.e 0

:[50]
bf [52]

:[51]
pushi.e -1
pushi.e 7
push.v [array]self.argument
pop.v.v local.replace
b [63]

:[52]
pushloc.v local.sel
push.s "8"@6340
cmp.s.v EQ
bf [54]

:[53]
pushbltn.v self.argument_count
pushi.e 8
cmp.i.v GT
b [55]

:[54]
push.e 0

:[55]
bf [57]

:[56]
pushi.e -1
pushi.e 8
push.v [array]self.argument
pop.v.v local.replace
b [63]

:[57]
pushloc.v local.sel
push.s "9"@6341
cmp.s.v EQ
bf [59]

:[58]
pushbltn.v self.argument_count
pushi.e 9
cmp.i.v GT
b [60]

:[59]
push.e 0

:[60]
bf [62]

:[61]
pushi.e -1
pushi.e 9
push.v [array]self.argument
pop.v.v local.replace
b [63]

:[62]
push.s ""@36
pop.v.s local.replace

:[63]
pushloc.v local.i
pushi.e 1
sub.i.v
pushi.e 1
conv.i.v
pushloc.v local.text
call.i string_copy(argc=3)
pop.v.v local.before
pushloc.v local.text
call.i string_length(argc=1)
pushloc.v local.i
pushi.e 4
add.i.v
pushloc.v local.text
call.i string_copy(argc=3)
pop.v.v local.after
pushloc.v local.before
pushloc.v local.replace
add.v.v
pushloc.v local.after
add.v.v
pop.v.v local.text
push.v local.i
pushloc.v local.replace
call.i string_length(argc=1)
pushi.e 1
sub.i.v
add.v.v
pop.v.v local.i

:[64]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [6]

:[65]
pushloc.v local.text
ret.v

:[end]