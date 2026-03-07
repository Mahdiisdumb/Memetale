.localvar 0 arguments
.localvar 1 mettlen 2858

:[0]
pushi.e 1
conv.i.v
call.i scr_setfont(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v 308.phase
pushi.e 2
cmp.i.v GT
bf [3]

:[1]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v 308.answer
pushi.e -1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.i self.visible

:[3]
push.v self.answered
pushi.e 1
cmp.i.v EQ
bf [7]

:[4]
push.v 308.correct
push.v self.ano
cmp.v.v EQ
bf [6]

:[5]
push.i 32768
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [7]

:[6]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[7]
push.v self.atext
pop.v.v self.atext2
push.v self.atext
push.s "special1"@48392
cmp.s.v EQ
bf [18]

:[8]
pushi.e 8
pop.v.i local.mettlen
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [10]

:[9]
pushi.e 4
pop.v.i local.mettlen

:[10]
push.v self.qno
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
push.v 308.mettamt
pushloc.v local.mettlen
add.v.v
pushi.e 3
add.i.v
call.i string(argc=1)
pop.v.v self.atext2

:[12]
push.v self.qno
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
push.v 308.mettamt
pushloc.v local.mettlen
add.v.v
pushi.e 2
sub.i.v
call.i string(argc=1)
pop.v.v self.atext2

:[14]
push.v self.qno
pushi.e 2
cmp.i.v EQ
bf [16]

:[15]
push.v 308.mettamt
pushloc.v local.mettlen
add.v.v
call.i string(argc=1)
pop.v.v self.atext2

:[16]
push.v self.qno
pushi.e 3
cmp.i.v EQ
bf [18]

:[17]
push.v 308.mettamt
pushloc.v local.mettlen
add.v.v
pushi.e 2
add.i.v
call.i string(argc=1)
pop.v.v self.atext2

:[18]
pushi.e 1
pop.v.i self.sizefactor
push.v self.atext2
call.i string_width(argc=1)
pop.v.v self.txtsize
push.v self.txtsize
pushi.e 160
cmp.i.v GT
bf [20]

:[19]
pushi.e 160
conv.i.d
push.v self.txtsize
div.v.d
pop.v.v self.sizefactor

:[20]
push.v self.qno
pushi.e 0
cmp.i.v EQ
bt [22]

:[21]
push.v self.qno
pushi.e 2
cmp.i.v EQ
b [23]

:[22]
push.e 1

:[23]
bf [25]

:[24]
pushi.e 2
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.sizefactor
push.v self.atext2
push.v self.y
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.x
pushi.e 20
sub.i.v
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.v
call.i draw_text_transformed(argc=6)
popz.v

:[25]
push.v self.qno
pushi.e 1
cmp.i.v EQ
bt [27]

:[26]
push.v self.qno
pushi.e 3
cmp.i.v EQ
b [28]

:[27]
push.e 1

:[28]
bf [30]

:[29]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.sizefactor
push.v self.atext2
push.v self.y
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.x
pushi.e 60
add.i.v
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.v
call.i draw_text_transformed(argc=6)
popz.v

:[30]
push.v self.answered
pushi.e 0
cmp.i.v EQ
bf [32]

:[31]
push.v 308.phase
pushi.e 2
cmp.i.v EQ
b [33]

:[32]
push.e 0

:[33]
bf [35]

:[34]
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v

:[35]
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v

:[end]