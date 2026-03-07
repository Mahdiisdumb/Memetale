.localvar 0 arguments
.localvar 1 xx 10641

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pop.v.v self.cary
pushi.e -1
pushi.e 1
dup.i 1
push.v [array]self.background_x
push.d 0.25
sub.d.v
pop.i.v [array]self.background_x
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.background_x
push.d 0.1
sub.d.v
pop.i.v [array]self.background_x
push.v self.timer
pushi.e 5
cmp.i.v LT
bf [4]

:[1]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 0
cmp.i.v GT
bf [3]

:[2]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_yview
pushi.e 3
sub.i.v
pop.i.v [array]self.view_yview
b [4]

:[3]
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_yview

:[4]
push.v self.bgx
pushi.e 4
sub.i.v
pop.v.v self.bgx
pushi.e 0
conv.i.v
pushi.e -4
conv.i.v
push.i 1000000
conv.i.v
call.i tile_layer_shift(argc=3)
popz.v
push.v self.bgx
pushi.e -320
cmp.i.v LTE
bf [6]

:[5]
pushi.e 0
conv.i.v
pushi.e 320
conv.i.v
push.i 1000000
conv.i.v
call.i tile_layer_shift(argc=3)
popz.v
push.v self.bgx
pushi.e 320
add.i.v
pop.v.v self.bgx

:[6]
push.v self.x
pushi.e 0
cmp.i.v GTE
bf [8]

:[7]
push.v self.td
pushi.e 0
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [16]

:[10]
pushi.e 1695
conv.i.v
pushi.e 150
conv.i.v
pushi.e 20
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.t1
push.s "castroll_name_papyrus"@32934
conv.s.v
call.i scr_gettext(argc=1)
push.v self.t1
conv.v.i
pop.v.v [stacktop]self.text
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [12]

:[11]
pushi.e -3
push.v self.t1
conv.v.i
pop.v.i [stacktop]self.text_xofs

:[12]
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [14]

:[13]
push.s "castroll_by_Luke_and_Mahdiisdumb"@31812
conv.s.v
call.i scr_gettext(argc=1)
push.v self.t1
conv.v.i
pop.v.v [stacktop]self.text2
b [15]

:[14]
push.s "castroll_by_toby_and_temmie_nospace"@32936
conv.s.v
call.i scr_gettext(argc=1)
push.v self.t1
conv.v.i
pop.v.v [stacktop]self.text2

:[15]
pushi.e 1
pop.v.i self.td

:[16]
push.v self.x
push.v self.xstart
cmp.v.v GTE
bf [18]

:[17]
push.v self.timer
pushi.e 170
cmp.i.v LT
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
push.v self.xstart
pop.v.v self.x
pushi.e 0
pop.v.i self.hspeed

:[21]
push.v self.sans
conv.v.i
push.v [stacktop]self.x
pushi.e 0
cmp.i.v GT
bf [23]

:[22]
push.v self.td
pushi.e 1
cmp.i.v EQ
b [24]

:[23]
push.e 0

:[24]
bf [28]

:[25]
pushi.e 1695
conv.i.v
pushi.e 150
conv.i.v
pushi.e 180
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.t2
push.s "castroll_name_sans"@32938
conv.s.v
call.i scr_gettext(argc=1)
push.v self.t2
conv.v.i
pop.v.v [stacktop]self.text
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [27]

:[26]
pushi.e -3
push.v self.t2
conv.v.i
pop.v.i [stacktop]self.text_xofs

:[27]
push.s "castroll_by_toby"@31808
conv.s.v
call.i scr_gettext(argc=1)
push.v self.t2
conv.v.i
pop.v.v [stacktop]self.text2
pushi.e 2
pop.v.i self.td

:[28]
push.v self.sans
conv.v.i
push.v [stacktop]self.x
push.v self.x
cmp.v.v GTE
bf [33]

:[29]
pushi.e 2557
push.v self.sans
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.timer
pushi.e 60
cmp.i.v LT
bf [31]

:[30]
pushi.e 0
push.v self.sans
conv.v.i
pop.v.i [stacktop]self.hspeed
b [32]

:[31]
pushi.e 2
push.v self.sans
conv.v.i
pop.v.i [stacktop]self.hspeed

:[32]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer

:[33]
push.v self.sans
conv.v.i
push.v [stacktop]self.x
push.v self.x
pushi.e 40
add.i.v
cmp.v.v GT
bf [41]

:[34]
push.v self.td
pushi.e 2
cmp.i.v EQ
bf [38]

:[35]
pushi.e 1
push.v self.t1
conv.v.i
pop.v.i [stacktop]self.fader
pushi.e 1
push.v self.t2
conv.v.i
pop.v.i [stacktop]self.fader
pushi.e 20
pop.v.i local.xx
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [37]

:[36]
pushi.e 5
pop.v.i local.xx

:[37]
pushi.e 1695
conv.i.v
pushi.e 150
conv.i.v
pushloc.v local.xx
call.i instance_create(argc=3)
pop.v.v self.t3
push.s "castroll_special_inspiration"@32940
conv.s.v
call.i scr_gettext(argc=1)
push.v self.t3
conv.v.i
pop.v.v [stacktop]self.text
push.s "castroll_jn_wiedle"@32942
conv.s.v
call.i scr_gettext(argc=1)
push.v self.t3
conv.v.i
pop.v.v [stacktop]self.text2
pushi.e 3
pop.v.i self.td

:[38]
pushi.e 2556
push.v self.sans
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.sans
conv.v.i
push.v [stacktop]self.y
pushi.e 60
cmp.i.v GT
bf [40]

:[39]
push.v self.sans
conv.v.i
dup.i 0
push.v [stacktop]self.y
pushi.e 3
sub.i.v
pop.i.v [stacktop]self.y
b [41]

:[40]
pushi.e 1397
pop.v.i self.sprite_index

:[41]
push.v self.timer
pushi.e 200
cmp.i.v EQ
bf [43]

:[42]
pushi.e 355
pop.v.i self.gravity_direction
push.d 0.3
pop.v.d self.gravity
pushi.e -3
pop.v.i self.hspeed

:[43]
push.v self.timer
pushi.e 200
cmp.i.v GT
bf [45]

:[44]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner

:[45]
push.v self.timer
pushi.e 240
cmp.i.v GT
bf [48]

:[46]
push.v self.td
pushi.e 3
cmp.i.v EQ
bf [48]

:[47]
pushi.e 1
push.v self.t3
conv.v.i
pop.v.i [stacktop]self.fader
pushi.e 4
pop.v.i self.td

:[48]
push.v self.timer
pushi.e 260
cmp.i.v GTE
bf [end]

:[49]
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
pushi.e 194
cmp.i.v GTE
bf [end]

:[50]
pushi.e 1
pop.v.i global.cast_type
pushi.e 278
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]