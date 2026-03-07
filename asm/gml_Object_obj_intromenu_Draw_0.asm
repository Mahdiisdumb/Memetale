.localvar 0 arguments
.localvar 1 sans_y 1228
.localvar 2 pap_x 1229
.localvar 3 version 1230

:[0]
push.v self.siner_o
pushi.e 1
add.i.v
pop.v.v self.siner_o
push.v self.naming
pushi.e 3
cmp.i.v EQ
bf [20]

:[1]
push.v self.mlevel
pushi.e 0
cmp.i.v GT
bf [3]

:[2]
pushi.e -120
conv.i.v
pushi.e 0
conv.i.v
pushi.e 9
conv.i.v
call.i draw_background(argc=3)
popz.v

:[3]
push.v self.mlevel
pushi.e 1
cmp.i.v EQ
bf [6]

:[4]
push.v self.fk
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
pushi.e 169
conv.i.v
pushi.e 147
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1183
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[6]
push.v self.mlevel
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
pushi.e 138
conv.i.v
pushi.e 125
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1206
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[8]
push.v self.mlevel
pushi.e 3
cmp.i.v EQ
bf [10]

:[9]
pushi.e 138
conv.i.v
pushi.e 125
conv.i.v
push.v self.siner_o
pushi.e 8
conv.i.d
div.d.v
pushi.e 1207
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 151
conv.i.v
pushi.e 241
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1403
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 164
conv.i.v
pushi.e 271
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1447
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[10]
push.v self.mlevel
pushi.e 4
cmp.i.v EQ
bf [16]

:[11]
pushi.e 33
pop.v.i local.sans_y
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [13]

:[12]
push.v local.sans_y
pushi.e 5
sub.i.v
pop.v.v local.sans_y

:[13]
pushi.e 243
pop.v.i local.pap_x
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [15]

:[14]
push.v local.pap_x
pushi.e 8
add.i.v
pop.v.v local.pap_x

:[15]
pushi.e 138
conv.i.v
pushi.e 125
conv.i.v
push.v self.siner_o
pushi.e 8
conv.i.d
div.d.v
pushi.e 1207
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 151
conv.i.v
pushloc.v local.pap_x
pushi.e 0
conv.i.v
pushi.e 1400
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 103
conv.i.v
pushloc.v local.pap_x
pushi.e 3
sub.i.v
pushi.e 0
conv.i.v
pushi.e 1501
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushloc.v local.sans_y
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1447
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[16]
push.v self.mlevel
pushi.e 5
cmp.i.v EQ
bf [18]

:[17]
pushi.e 138
conv.i.v
pushi.e 125
conv.i.v
push.v self.siner_o
pushi.e 8
conv.i.d
div.d.v
pushi.e 1207
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 167
conv.i.v
pushi.e 270
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1731
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 132
conv.i.v
pushi.e 272
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1400
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 84
conv.i.v
pushi.e 269
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1501
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 169
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1433
conv.i.v
call.i scr_getsprite(argc=1)
call.i draw_sprite(argc=4)
popz.v

:[18]
push.v self.mlevel
pushi.e 6
cmp.i.v EQ
bf [20]

:[19]
pushi.e 138
conv.i.v
pushi.e 143
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1192
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 147
conv.i.v
pushi.e 119
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1403
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 161
conv.i.v
pushi.e 172
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1444
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 136
conv.i.v
pushi.e 99
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1495
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 158
conv.i.v
pushi.e 74
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1730
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 130
conv.i.v
pushi.e 195
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2004
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 157
conv.i.v
pushi.e 9
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1216
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 139
conv.i.v
pushi.e 28
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1758
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 162
conv.i.v
pushi.e 262
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1483
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[20]
pushi.e 55
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.naming
pushi.e 3
cmp.i.v EQ
bf [end]

:[21]
push.s "0.01"@47583
pop.v.s local.version
pushbltn.v self.os_type
pushi.e 14
cmp.i.v EQ
bf [23]

:[22]
push.v local.version
push.s "-4"@47585
add.s.v
pop.v.v local.version

:[23]
pushbltn.v self.os_type
pushi.e 12
cmp.i.v EQ
bf [25]

:[24]
push.v local.version
push.s "-V"@47586
add.s.v
pop.v.v local.version

:[25]
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i scr_setfont(argc=1)
popz.v
push.s "Memetale v"@47587
pushloc.v local.version
add.v.s
push.s " (C) Luke Doge and Mahdiisdumb 2026"@47588
add.s.v
pushi.e 232
conv.i.v
pushi.e 160
conv.i.v
call.i scr_drawtext_centered(argc=3)
popz.v

:[end]