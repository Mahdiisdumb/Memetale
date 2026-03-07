.localvar 0 arguments
.localvar 1 x0 892
.localvar 2 y0 893
.localvar 3 str 894
.localvar 4 icon_scale 895
.localvar 5 len 896
.localvar 6 line_height 897
.localvar 7 outstr 898
.localvar 8 xx 899
.localvar 9 yy 900
.localvar 10 i 901
.localvar 11 sprite 902

:[0]
pushi.e -1
pushi.e 0
push.v [array]self.argument
pop.v.v local.x0
pushi.e -1
pushi.e 1
push.v [array]self.argument
pop.v.v local.y0
pushi.e -1
pushi.e 2
push.v [array]self.argument
call.i scr_replace_buttons_pc(argc=1)
pop.v.v local.str
pushi.e 1
pop.v.i local.icon_scale
pushbltn.v self.argument_count
pushi.e 4
cmp.i.v GTE
bf [2]

:[1]
pushi.e -1
pushi.e 3
push.v [array]self.argument
pop.v.v local.icon_scale

:[2]
pushloc.v local.str
call.i strlen(argc=1)
pop.v.v local.len
push.s " "@18
conv.s.v
call.i string_height(argc=1)
pop.v.v local.line_height
push.s ""@36
pop.v.s local.outstr
pushi.e -1
pushi.e 0
push.v [array]self.argument
pop.v.v local.xx
pushi.e -1
pushi.e 1
push.v [array]self.argument
pop.v.v local.yy
pushi.e 1
pop.v.i local.i

:[3]
pushloc.v local.i
pushloc.v local.len
cmp.v.v LT
bf [16]

:[4]
pushi.e 1
conv.i.v
pushloc.v local.i
pushloc.v local.str
call.i substr(argc=3)
push.s "#"@6300
cmp.s.v EQ
bf [8]

:[5]
pushloc.v local.outstr
push.s ""@36
cmp.s.v NEQ
bf [7]

:[6]
pushloc.v local.outstr
pushloc.v local.yy
pushloc.v local.xx
call.i draw_text(argc=3)
popz.v
push.s ""@36
pop.v.s local.outstr

:[7]
pushloc.v local.x0
pop.v.v local.xx
push.v local.yy
pushloc.v local.line_height
add.v.v
pop.v.v local.yy
b [15]

:[8]
pushi.e 2
conv.i.v
pushloc.v local.i
pushloc.v local.str
call.i substr(argc=3)
push.s "\\*"@6291
cmp.s.v EQ
bf [14]

:[9]
pushloc.v local.outstr
push.s ""@36
cmp.s.v NEQ
bf [11]

:[10]
pushloc.v local.outstr
pushloc.v local.yy
pushloc.v local.xx
call.i draw_text(argc=3)
popz.v
push.v local.xx
pushloc.v local.outstr
call.i string_width(argc=1)
call.i round(argc=1)
add.v.v
pop.v.v local.xx
push.s ""@36
pop.v.s local.outstr

:[11]
push.v local.i
pushi.e 2
add.i.v
pop.v.v local.i
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local.i
pushloc.v local.str
call.i substr(argc=3)
call.i scr_getbuttonsprite(argc=2)
pop.v.v local.sprite
pushloc.v local.sprite
pushi.e -4
cmp.i.v NEQ
bf [13]

:[12]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local.icon_scale
pushloc.v local.icon_scale
pushloc.v local.yy
pushloc.v local.xx
pushi.e 0
conv.i.v
pushloc.v local.sprite
call.i draw_sprite_ext(argc=9)
popz.v
push.v local.xx
pushloc.v local.sprite
call.i sprite_get_width(argc=1)
pushi.e 1
add.i.v
pushloc.v local.icon_scale
mul.v.v
add.v.v
pop.v.v local.xx

:[13]
b [15]

:[14]
push.v local.outstr
pushi.e 1
conv.i.v
pushloc.v local.i
pushloc.v local.str
call.i substr(argc=3)
add.v.v
pop.v.v local.outstr

:[15]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [3]

:[16]
pushloc.v local.outstr
push.s ""@36
cmp.s.v NEQ
bf [end]

:[17]
pushloc.v local.outstr
pushloc.v local.yy
pushloc.v local.xx
call.i draw_text(argc=3)
popz.v

:[end]