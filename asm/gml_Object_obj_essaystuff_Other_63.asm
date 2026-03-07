.localvar 0 arguments
.localvar 1 str 3607
.localvar 2 input_str 3608
.localvar 3 input_len 3609
.localvar 4 i 3610
.localvar 5 ch 3611
.localvar 6 ok 3612

:[0]
push.s "id"@48271
conv.s.v
pushbltn.v self.async_load
call.i ds_map_find_value(argc=2)
push.v self.getstring_event_id
cmp.v.v EQ
bf [end]

:[1]
push.s ""@36
pop.v.s local.str
push.s "status"@48801
conv.s.v
pushbltn.v self.async_load
call.i ds_map_find_value(argc=2)
conv.v.b
bf [60]

:[2]
push.s "result"@6347
conv.s.v
pushbltn.v self.async_load
call.i ds_map_find_value(argc=2)
pop.v.v local.input_str
pushloc.v local.input_str
call.i strlen(argc=1)
pop.v.v local.input_len
pushi.e 1
pop.v.i local.i

:[3]
pushloc.v local.i
pushloc.v local.input_len
cmp.v.v LTE
bf [60]

:[4]
pushloc.v local.i
pushloc.v local.input_str
call.i string_char_at(argc=2)
call.i ord(argc=1)
pop.v.v local.ch
pushi.e 0
pop.v.i local.ok
pushloc.v local.ch
pushi.e 32
cmp.i.v GTE
bf [6]

:[5]
pushloc.v local.ch
pushi.e 126
cmp.i.v LTE
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
pushi.e 1
pop.v.i local.ok
b [57]

:[9]
pushloc.v local.ch
pushi.e 8216
cmp.i.v EQ
bf [11]

:[10]
pushi.e 96
pop.v.i local.ch
pushi.e 1
pop.v.i local.ok
b [57]

:[11]
pushloc.v local.ch
pushi.e 8217
cmp.i.v EQ
bf [13]

:[12]
pushi.e 39
pop.v.i local.ch
pushi.e 1
pop.v.i local.ok
b [57]

:[13]
pushloc.v local.ch
pushi.e 8220
cmp.i.v EQ
bt [15]

:[14]
pushloc.v local.ch
pushi.e 8221
cmp.i.v EQ
b [16]

:[15]
push.e 1

:[16]
bf [18]

:[17]
pushi.e 34
pop.v.i local.ch
pushi.e 1
pop.v.i local.ok
b [57]

:[18]
pushloc.v local.ch
pushi.e 12288
cmp.i.v GTE
bf [20]

:[19]
pushloc.v local.ch
pushi.e 12290
cmp.i.v LTE
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
pushi.e 1
pop.v.i local.ok
b [57]

:[23]
pushloc.v local.ch
pushi.e 12300
cmp.i.v GTE
bf [25]

:[24]
pushloc.v local.ch
pushi.e 12305
cmp.i.v LTE
b [26]

:[25]
push.e 0

:[26]
bf [28]

:[27]
pushi.e 1
pop.v.i local.ok
b [57]

:[28]
pushloc.v local.ch
pushi.e 12316
cmp.i.v EQ
bf [30]

:[29]
push.i 65374
pop.v.i local.ch
pushi.e 1
pop.v.i local.ok
b [57]

:[30]
pushloc.v local.ch
pushi.e 12353
cmp.i.v GTE
bf [32]

:[31]
pushloc.v local.ch
pushi.e 12435
cmp.i.v LTE
b [33]

:[32]
push.e 0

:[33]
bf [35]

:[34]
pushi.e 1
pop.v.i local.ok
b [57]

:[35]
pushloc.v local.ch
pushi.e 12449
cmp.i.v GTE
bf [37]

:[36]
pushloc.v local.ch
pushi.e 12531
cmp.i.v LTE
b [38]

:[37]
push.e 0

:[38]
bf [40]

:[39]
pushi.e 1
pop.v.i local.ok
b [57]

:[40]
pushloc.v local.ch
pushi.e 12539
cmp.i.v EQ
bt [42]

:[41]
pushloc.v local.ch
pushi.e 12540
cmp.i.v EQ
b [43]

:[42]
push.e 1

:[43]
bf [45]

:[44]
pushi.e 1
pop.v.i local.ok
b [57]

:[45]
pushloc.v local.ch
push.i 65281
cmp.i.v GTE
bf [47]

:[46]
pushloc.v local.ch
push.i 65374
cmp.i.v LT
b [48]

:[47]
push.e 0

:[48]
bf [50]

:[49]
push.v local.ch
push.i -65248
add.i.v
pop.v.v local.ch
pushi.e 1
pop.v.i local.ok
b [57]

:[50]
pushloc.v local.ch
push.i 65374
cmp.i.v EQ
bf [52]

:[51]
pushi.e 1
pop.v.i local.ok
b [57]

:[52]
pushloc.v local.ch
push.i 65377
cmp.i.v GTE
bf [54]

:[53]
pushloc.v local.ch
push.i 65439
cmp.i.v LTE
b [55]

:[54]
push.e 0

:[55]
bf [57]

:[56]
pushi.e 1
pop.v.i local.ok

:[57]
pushloc.v local.ok
conv.v.b
bf [59]

:[58]
push.v local.str
pushloc.v local.ch
call.i chr(argc=1)
add.v.v
pop.v.v local.str

:[59]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [3]

:[60]
push.s " "@18
pushloc.v local.str
add.v.s
pop.v.v self.mystring
pushi.e 30
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i global.disable_os_pause

:[end]