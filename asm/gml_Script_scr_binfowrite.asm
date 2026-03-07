.localvar 0 arguments
.localvar 1 namex 722
.localvar 2 namey 723
.localvar 3 namewidth 724

:[0]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 30
pop.v.i local.namex
pushi.e 400
pop.v.i local.namey
pushloc.v local.namey
pushloc.v local.namex
call.i scr_draw_name_curs(argc=2)
pop.v.v local.namewidth
pushi.e 7
conv.i.v
call.i draw_set_font(argc=1)
popz.v
push.s "   LV "@5078
pushglb.v global.lv
call.i string(argc=1)
add.v.s
pushi.e 400
conv.i.v
pushloc.v local.namex
pushloc.v local.namewidth
add.v.v
call.i draw_text(argc=3)
popz.v
pushi.e -5
pushi.e 271
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [14]

:[1]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 420
conv.i.v
pushi.e 275
pushglb.v global.maxhp
push.d 1.2
mul.d.v
add.v.i
pushi.e 400
conv.i.v
pushi.e 275
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 420
conv.i.v
pushi.e 275
pushglb.v global.hp
push.d 1.2
mul.d.v
add.v.i
pushi.e 400
conv.i.v
pushi.e 275
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 7
conv.i.v
call.i draw_set_font(argc=1)
popz.v
pushglb.v global.hp
call.i string(argc=1)
pop.v.v self.hpwrite
pushglb.v global.hp
pushi.e 10
cmp.i.v LT
bf [3]

:[2]
push.s "0"@3159
pushglb.v global.hp
call.i string(argc=1)
add.v.s
pop.v.v self.hpwrite

:[3]
pushglb.v global.hp
pushi.e 0
cmp.i.v LT
bf [5]

:[4]
push.s "0"@3159
pop.v.s self.hpwrite

:[5]
pushi.e -5
pushi.e 509
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.s "00.001"@5080
pop.v.s self.hpwrite

:[7]
pushi.e -5
pushi.e 509
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
push.s "00.0001"@5081
pop.v.s self.hpwrite

:[9]
pushi.e -5
pushi.e 509
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [11]

:[10]
push.s "00.000001"@5082
pop.v.s self.hpwrite

:[11]
pushi.e -5
pushi.e 509
push.v [array]global.flag
pushi.e 4
cmp.i.v EQ
bf [13]

:[12]
push.s "00.0000000001"@5083
pop.v.s self.hpwrite

:[13]
push.v self.hpwrite
push.s " / "@5084
add.s.v
pushglb.v global.maxhp
call.i string(argc=1)
add.v.v
pushi.e 400
conv.i.v
pushi.e 290
pushglb.v global.maxhp
push.d 1.2
mul.d.v
add.v.i
call.i draw_text(argc=3)
popz.v
b [end]

:[14]
push.d 0.5
conv.d.v
pushi.e 128
conv.i.v
pushi.e 255
conv.i.v
call.i merge_color(argc=3)
call.i draw_set_color(argc=1)
popz.v
pushi.e 420
conv.i.v
pushi.e 255
pushglb.v global.maxhp
push.d 1.2
mul.d.v
add.v.i
pushi.e 400
conv.i.v
pushi.e 255
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 420
conv.i.v
pushi.e 255
pushglb.v global.hp
push.d 1.2
mul.d.v
add.v.i
pushi.e 400
conv.i.v
pushi.e 255
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.i 16711935
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.km
pushi.e 40
cmp.i.v GT
bf [16]

:[15]
pushi.e 40
pop.v.i global.km

:[16]
pushglb.v global.km
pushglb.v global.hp
cmp.v.v GTE
bf [18]

:[17]
pushglb.v global.hp
pushi.e 1
sub.i.v
pop.v.v global.km

:[18]
pushi.e 420
conv.i.v
pushi.e 255
pushglb.v global.hp
push.d 1.2
mul.d.v
add.v.i
pushglb.v global.km
push.d 1.2
mul.d.v
sub.v.v
pushi.e 400
conv.i.v
pushi.e 255
pushglb.v global.hp
push.d 1.2
mul.d.v
add.v.i
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 405
conv.i.v
pushi.e 265
pushglb.v global.maxhp
push.d 1.2
mul.d.v
add.v.i
pushi.e 0
conv.i.v
pushi.e 710
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 7
conv.i.v
call.i draw_set_font(argc=1)
popz.v
pushglb.v global.hp
call.i string(argc=1)
pop.v.v self.hpwrite
pushglb.v global.km
pushi.e 0
cmp.i.v GT
bf [20]

:[19]
push.i 16711935
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[20]
pushglb.v global.hp
pushi.e 10
cmp.i.v LT
bf [22]

:[21]
push.s "0"@3159
pushglb.v global.hp
call.i string(argc=1)
add.v.s
pop.v.v self.hpwrite

:[22]
pushglb.v global.hp
pushi.e 0
cmp.i.v LT
bf [24]

:[23]
push.s "0"@3159
pop.v.s self.hpwrite

:[24]
push.v self.hpwrite
push.s " / "@5084
add.s.v
pushglb.v global.maxhp
call.i string(argc=1)
add.v.v
pushi.e 400
conv.i.v
pushi.e 305
pushglb.v global.maxhp
push.d 1.2
mul.d.v
add.v.i
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 184
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [28]

:[25]
pushi.e 184
pushenv [27]

:[26]
call.i instance_destroy(argc=0)
popz.v

:[27]
popenv [26]

:[28]
pushi.e 400
conv.i.v
pushi.e 220
conv.i.v
pushi.e 0
conv.i.v
pushi.e 23
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[end]