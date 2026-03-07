.localvar 0 arguments
.localvar 1 xx 882
.localvar 2 yy 883
.localvar 3 str 884
.localvar 4 icon_scale 885
.localvar 5 i 887
.localvar 6 s 888
.localvar 7 ch 889
.localvar 8 sprite 890

:[0]
pushi.e -1
pushi.e 0
push.v [array]self.argument
pop.v.v local.xx
pushi.e -1
pushi.e 1
push.v [array]self.argument
pop.v.v local.yy
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
push.s "\\*"@6291
conv.s.v
call.i string_pos(argc=2)
pop.v.v local.i

:[3]
pushloc.v local.i
pushi.e 0
cmp.i.v NEQ
bf [9]

:[4]
pushloc.v local.i
pushi.e 1
cmp.i.v GT
bf [6]

:[5]
pushloc.v local.i
pushi.e 1
sub.i.v
pushi.e 1
conv.i.v
pushloc.v local.str
call.i substr(argc=3)
pop.v.v local.s
pushloc.v local.s
pushloc.v local.yy
pushloc.v local.xx
call.i draw_text(argc=3)
popz.v
push.v local.xx
pushloc.v local.s
call.i string_width(argc=1)
call.i round(argc=1)
add.v.v
pop.v.v local.xx

:[6]
pushloc.v local.i
pushi.e 2
add.i.v
pushloc.v local.str
call.i string_char_at(argc=2)
pop.v.v local.ch
pushi.e 0
conv.i.v
pushloc.v local.ch
call.i scr_getbuttonsprite(argc=2)
pop.v.v local.sprite
pushloc.v local.sprite
pushi.e -4
cmp.i.v NEQ
bf [8]

:[7]
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

:[8]
pushloc.v local.i
pushi.e 3
add.i.v
pushloc.v local.str
call.i substr(argc=2)
pop.v.v local.str
pushloc.v local.str
push.s "\\*"@6291
conv.s.v
call.i string_pos(argc=2)
pop.v.v local.i
b [3]

:[9]
pushloc.v local.str
call.i string_length(argc=1)
pushi.e 0
cmp.i.v GT
bf [end]

:[10]
pushloc.v local.str
pushloc.v local.yy
pushloc.v local.xx
call.i draw_text(argc=3)
popz.v

:[end]