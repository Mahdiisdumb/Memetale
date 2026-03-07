.localvar 0 arguments
.localvar 1 xx 10622

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer

:[2]
push.v self.timer
pushi.e 5
cmp.i.v GTE
bf [4]

:[3]
push.v self.timer
pushi.e 35
cmp.i.v LTE
b [5]

:[4]
push.e 0

:[5]
bf [8]

:[6]
push.v self.bodyy
pushi.e 13
cmp.i.v LT
bf [8]

:[7]
push.v self.bodyy
push.d 0.5
add.d.v
pop.v.v self.bodyy

:[8]
push.v self.timer
pushi.e 80
cmp.i.v GTE
bf [11]

:[9]
pushi.e 1
pop.v.i self.leg
push.v self.bodyy
pushi.e -15
cmp.i.v GT
bf [11]

:[10]
push.v self.bodyy
push.d 0.5
sub.d.v
pop.v.v self.bodyy

:[11]
push.v self.timer
pushi.e 120
cmp.i.v GTE
bf [13]

:[12]
push.v self.timer
pushi.e 126
cmp.i.v LTE
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
push.v self.legrot_l
pushi.e 8
sub.i.v
pop.v.v self.legrot_l

:[16]
push.v self.timer
pushi.e 132
cmp.i.v GTE
bf [18]

:[17]
push.v self.timer
pushi.e 138
cmp.i.v LTE
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
push.v self.legrot_l
pushi.e 8
add.i.v
pop.v.v self.legrot_l

:[21]
push.v self.timer
pushi.e 146
cmp.i.v GTE
bf [23]

:[22]
push.v self.timer
pushi.e 152
cmp.i.v LTE
b [24]

:[23]
push.e 0

:[24]
bf [26]

:[25]
push.v self.legrot_r
pushi.e 8
add.i.v
pop.v.v self.legrot_r

:[26]
push.v self.timer
pushi.e 158
cmp.i.v GTE
bf [28]

:[27]
push.v self.timer
pushi.e 164
cmp.i.v LTE
b [29]

:[28]
push.e 0

:[29]
bf [31]

:[30]
push.v self.legrot_r
pushi.e 8
sub.i.v
pop.v.v self.legrot_r

:[31]
push.v self.timer
pushi.e 170
cmp.i.v EQ
bf [33]

:[32]
pushi.e 119
pop.v.i self.timer

:[33]
push.v self.main_timer
pushi.e 1
add.i.v
pop.v.v self.main_timer
push.v self.main_timer
pushi.e 40
cmp.i.v GTE
bf [35]

:[34]
push.v self.main_timer
pushi.e 160
cmp.i.v LTE
b [36]

:[35]
push.e 0

:[36]
bf [38]

:[37]
pushi.e 0
conv.i.v
pushi.e -1
conv.i.v
pushi.e 900
conv.i.v
call.i tile_layer_shift(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 890
conv.i.v
call.i tile_layer_shift(argc=3)
popz.v

:[38]
push.v self.main_timer
pushi.e 180
cmp.i.v EQ
bf [40]

:[39]
pushi.e 1
pop.v.i self.active

:[40]
push.v self.shyren
conv.v.i
dup.i 0
push.v [stacktop]self.y
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.v
pop.i.v [stacktop]self.y
push.v self.main_timer
pushi.e 0
cmp.i.v LT
bf [44]

:[41]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 0
cmp.i.v GT
bf [43]

:[42]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_yview
pushi.e 4
sub.i.v
pop.i.v [array]self.view_yview
b [44]

:[43]
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_yview

:[44]
push.v self.main_timer
pushi.e 90
cmp.i.v EQ
bf [48]

:[45]
pushi.e 1695
conv.i.v
pushi.e 160
conv.i.v
pushi.e 20
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.t1
push.s "castroll_name_mettaton"@32952
conv.s.v
call.i scr_gettext(argc=1)
push.v self.t1
conv.v.i
pop.v.v [stacktop]self.text
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [47]

:[46]
pushi.e -3
push.v self.t1
conv.v.i
pop.v.i [stacktop]self.text_xofs

:[47]
push.s "castroll_by_toby"@31808
conv.s.v
call.i scr_gettext(argc=1)
push.v self.t1
conv.v.i
pop.v.v [stacktop]self.text2

:[48]
push.v self.main_timer
pushi.e 250
cmp.i.v EQ
bf [50]

:[49]
pushi.e 1
push.v self.t1
conv.v.i
pop.v.i [stacktop]self.fader

:[50]
push.v self.main_timer
pushi.e 260
cmp.i.v EQ
bf [54]

:[51]
pushi.e 20
pop.v.i local.xx
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [53]

:[52]
pushi.e 5
pop.v.i local.xx

:[53]
pushi.e 1695
conv.i.v
pushi.e 160
conv.i.v
pushloc.v local.xx
call.i instance_create(argc=3)
pop.v.v self.t2
push.s "castroll_special_inspiration"@32940
conv.s.v
call.i scr_gettext(argc=1)
push.v self.t2
conv.v.i
pop.v.v [stacktop]self.text
push.s "castroll_credit_mettaton"@32954
conv.s.v
call.i scr_gettext(argc=1)
push.v self.t2
conv.v.i
pop.v.v [stacktop]self.text2

:[54]
push.v self.main_timer
pushi.e 430
cmp.i.v EQ
bf [56]

:[55]
pushi.e 1
push.v self.t2
conv.v.i
pop.v.i [stacktop]self.fader

:[56]
push.v self.main_timer
pushi.e 450
cmp.i.v GT
bf [end]

:[57]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_yview
pushi.e 4
add.i.v
pop.i.v [array]self.view_yview
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 240
cmp.i.v GT
bf [end]

:[58]
pushi.e 3
pop.v.i global.cast_type
pushi.e 278
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]