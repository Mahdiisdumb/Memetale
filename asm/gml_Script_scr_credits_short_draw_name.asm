.localvar 0 arguments
.localvar 1 xx 912
.localvar 2 yy 913
.localvar 3 s 914
.localvar 4 specialcase 915
.localvar 5 xx0 916
.localvar 6 is_ascii 917
.localvar 7 len 918

:[0]
pushbltn.v self.argument0
pop.v.v local.xx
pushbltn.v self.argument1
pop.v.v local.yy
pushbltn.v self.argument2
pop.v.v local.s
pushi.e 0
pop.v.i local.specialcase
pushloc.v local.xx
pushi.e 0
cmp.i.v LT
bf [2]

:[1]
pushi.e 1
pop.v.i local.specialcase
pushloc.v local.xx
neg.v
pop.v.v local.xx

:[2]
pushglb.v global.language
push.s "ja"@3058
cmp.s.v NEQ
bf [4]

:[3]
pushloc.v local.s
pushloc.v local.yy
pushloc.v local.xx
call.i draw_text(argc=3)
popz.v
exit.i

:[4]
pushloc.v local.xx
pop.v.v local.xx0

:[5]
pushloc.v local.s
call.i strlen(argc=1)
pushi.e 0
cmp.i.v GT
bf [42]

:[6]
pushi.e 1
conv.i.v
pushloc.v local.s
call.i string_char_at(argc=2)
push.s "#"@6300
cmp.s.v EQ
bf [8]

:[7]
push.v local.yy
pushi.e 18
add.i.v
pop.v.v local.yy
pushloc.v local.xx0
pop.v.v local.xx
pushi.e 2
conv.i.v
pushloc.v local.s
call.i substr(argc=2)
pop.v.v local.s
b [41]

:[8]
pushi.e 1
conv.i.v
pushloc.v local.s
call.i string_char_at(argc=2)
push.s " "@18
cmp.s.v GTE
bf [18]

:[9]
pushi.e 1
conv.i.v
pushloc.v local.s
call.i string_char_at(argc=2)
push.s "~"@6317
cmp.s.v LTE
bf [18]

:[10]
pushloc.v local.specialcase
conv.v.b
not.b
bt [16]

:[11]
pushi.e 1
conv.i.v
pushloc.v local.s
call.i string_char_at(argc=2)
push.s "("@6318
cmp.s.v NEQ
bf [14]

:[12]
pushi.e 1
conv.i.v
pushloc.v local.s
call.i string_char_at(argc=2)
push.s ")"@6319
cmp.s.v NEQ
bf [14]

:[13]
pushi.e 1
conv.i.v
pushloc.v local.s
call.i string_char_at(argc=2)
push.s "1"@6320
cmp.s.v NEQ
b [15]

:[14]
push.e 0

:[15]
b [17]

:[16]
push.e 1

:[17]
b [19]

:[18]
push.e 0

:[19]
pop.v.b local.is_ascii
pushi.e 1
pop.v.i local.len

:[20]
pushloc.v local.len
pushloc.v local.s
call.i strlen(argc=1)
cmp.v.v LT
bf [34]

:[21]
pushi.e 1
pushloc.v local.len
add.v.i
pushloc.v local.s
call.i string_char_at(argc=2)
push.s "#"@6300
cmp.s.v NEQ
bf [34]

:[22]
pushi.e 1
pushloc.v local.len
add.v.i
pushloc.v local.s
call.i string_char_at(argc=2)
push.s " "@18
cmp.s.v GTE
bf [32]

:[23]
pushi.e 1
pushloc.v local.len
add.v.i
pushloc.v local.s
call.i string_char_at(argc=2)
push.s "~"@6317
cmp.s.v LTE
bf [32]

:[24]
pushloc.v local.specialcase
conv.v.b
not.b
bt [30]

:[25]
pushi.e 1
pushloc.v local.len
add.v.i
pushloc.v local.s
call.i string_char_at(argc=2)
push.s "("@6318
cmp.s.v NEQ
bf [28]

:[26]
pushi.e 1
pushloc.v local.len
add.v.i
pushloc.v local.s
call.i string_char_at(argc=2)
push.s ")"@6319
cmp.s.v NEQ
bf [28]

:[27]
pushi.e 1
pushloc.v local.len
add.v.i
pushloc.v local.s
call.i string_char_at(argc=2)
push.s "1"@6320
cmp.s.v NEQ
b [29]

:[28]
push.e 0

:[29]
b [31]

:[30]
push.e 1

:[31]
b [33]

:[32]
push.e 0

:[33]
pushloc.v local.is_ascii
cmp.v.b EQ
b [35]

:[34]
push.e 0

:[35]
bf [37]

:[36]
push.v local.len
push.e 1
add.i.v
pop.v.v local.len
b [20]

:[37]
pushloc.v local.is_ascii
conv.v.b
bf [39]

:[38]
pushi.e 2
conv.i.v
call.i draw_set_font(argc=1)
popz.v
b [40]

:[39]
pushi.e 14
conv.i.v
call.i draw_set_font(argc=1)
popz.v

:[40]
pushloc.v local.len
pushi.e 1
conv.i.v
pushloc.v local.s
call.i substr(argc=3)
pushloc.v local.yy
pushloc.v local.xx
call.i draw_text(argc=3)
popz.v
push.v local.xx
pushloc.v local.len
pushi.e 1
conv.i.v
pushloc.v local.s
call.i substr(argc=3)
call.i string_width(argc=1)
call.i round(argc=1)
add.v.v
pop.v.v local.xx
pushloc.v local.len
pushi.e 1
add.i.v
pushloc.v local.s
call.i substr(argc=2)
pop.v.v local.s

:[41]
b [5]

:[42]
pushi.e 14
conv.i.v
call.i draw_set_font(argc=1)
popz.v

:[end]