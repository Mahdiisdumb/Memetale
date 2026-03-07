.localvar 0 arguments
.localvar 1 xx 920
.localvar 2 yy 921
.localvar 3 use_font 922
.localvar 4 i 923

:[0]
pushbltn.v self.argument0
pop.v.v local.xx
pushbltn.v self.argument1
pop.v.v local.yy
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [2]

:[1]
pushi.e 12
pop.v.i local.use_font
push.v local.yy
pushi.e 3
add.i.v
pop.v.v local.yy
b [7]

:[2]
pushi.e 7
pop.v.i local.use_font
pushi.e 1
pop.v.i local.i

:[3]
pushloc.v local.i
pushglb.v global.charname
call.i strlen(argc=1)
cmp.v.v LT
bf [7]

:[4]
pushloc.v local.i
pushglb.v global.charname
call.i string_char_at(argc=2)
call.i ord(argc=1)
pushi.e 12288
cmp.i.v GTE
bf [6]

:[5]
pushi.e 12
pop.v.i local.use_font
push.v local.yy
pushi.e 3
add.i.v
pop.v.v local.yy
b [7]

:[6]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [3]

:[7]
pushloc.v local.use_font
call.i draw_set_font(argc=1)
popz.v
pushglb.v global.charname
pushloc.v local.yy
pushloc.v local.xx
call.i draw_text(argc=3)
popz.v
pushglb.v global.charname
call.i string_width(argc=1)
ret.v

:[end]