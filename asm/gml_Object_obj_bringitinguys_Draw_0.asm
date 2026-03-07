.localvar 0 arguments
.localvar 1 text_yofs 10389

:[0]
pushi.e 8
pop.v.i local.text_yofs
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [2]

:[1]
pushi.e 5
pop.v.i local.text_yofs

:[2]
push.v self.guy
conv.v.i
push.v [stacktop]self.x
pushi.e -32
cmp.i.v GT
bf [4]

:[3]
pushi.e -34
push.v self.guy
conv.v.i
pop.v.i [stacktop]self.x
pushi.e 0
push.v self.guy
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.talk

:[4]
pushi.e -1
pushi.e 0
push.v [array]self.talk
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
push.v self.shake
pushi.e 0
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
push.v self.guy
conv.v.i
push.v [stacktop]self.y
push.v self.guy
conv.v.i
push.v [stacktop]self.x
pushi.e 190
add.i.v
pushi.e 0
conv.i.v
pushi.e 28
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 4
conv.i.v
call.i scr_setfont(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_bringitinguys_298"@31784
conv.s.v
call.i scr_gettext(argc=1)
push.v self.guy
conv.v.i
push.v [stacktop]self.y
pushloc.v local.text_yofs
add.v.v
push.v self.guy
conv.v.i
push.v [stacktop]self.x
pushi.e 220
add.i.v
call.i draw_text(argc=3)
popz.v

:[9]
push.v self.guy2
conv.v.i
push.v [stacktop]self.x
pushi.e -24
cmp.i.v GT
bf [11]

:[10]
pushi.e -24
push.v self.guy2
conv.v.i
pop.v.i [stacktop]self.x
pushi.e 0
push.v self.guy2
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 1
pushi.e -1
pushi.e 1
pop.v.i [array]self.talk

:[11]
pushi.e -1
pushi.e 1
push.v [array]self.talk
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
push.v self.shake
pushi.e 0
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
push.v self.guy2
conv.v.i
push.v [stacktop]self.y
push.v self.guy2
conv.v.i
push.v [stacktop]self.x
pushi.e 90
add.i.v
pushi.e 0
conv.i.v
pushi.e 28
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 4
conv.i.v
call.i scr_setfont(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_bringitinguys_314"@31786
conv.s.v
call.i scr_gettext(argc=1)
push.v self.guy2
conv.v.i
push.v [stacktop]self.y
pushloc.v local.text_yofs
add.v.v
push.v self.guy2
conv.v.i
push.v [stacktop]self.x
pushi.e 120
add.i.v
call.i draw_text(argc=3)
popz.v

:[16]
push.v self.guy3
conv.v.i
push.v [stacktop]self.x
pushi.e -24
cmp.i.v GT
bf [18]

:[17]
pushi.e -24
push.v self.guy3
conv.v.i
pop.v.i [stacktop]self.x
pushi.e 0
push.v self.guy3
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 1
pushi.e -1
pushi.e 2
pop.v.i [array]self.talk

:[18]
pushi.e -1
pushi.e 2
push.v [array]self.talk
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
push.v self.shake
pushi.e 0
cmp.i.v EQ
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
push.v self.guy3
conv.v.i
push.v [stacktop]self.y
push.v self.guy3
conv.v.i
push.v [stacktop]self.x
pushi.e 130
add.i.v
pushi.e 0
conv.i.v
pushi.e 28
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 4
conv.i.v
call.i scr_setfont(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_bringitinguys_329"@31788
conv.s.v
call.i scr_gettext(argc=1)
push.v self.guy3
conv.v.i
push.v [stacktop]self.y
pushloc.v local.text_yofs
add.v.v
push.v self.guy3
conv.v.i
push.v [stacktop]self.x
pushi.e 160
add.i.v
call.i draw_text(argc=3)
popz.v

:[23]
push.v self.guy4
conv.v.i
push.v [stacktop]self.y
pushbltn.v self.room_height
pushi.e 60
sub.i.v
cmp.v.v LT
bf [25]

:[24]
pushbltn.v self.room_height
pushi.e 60
sub.i.v
push.v self.guy4
conv.v.i
pop.v.v [stacktop]self.y
pushi.e 0
push.v self.guy4
conv.v.i
pop.v.i [stacktop]self.vspeed

:[25]
push.v self.guy_r
conv.v.i
push.v [stacktop]self.x
pushbltn.v self.room_width
pushi.e 80
sub.i.v
cmp.v.v LT
bf [27]

:[26]
pushbltn.v self.room_width
pushi.e 80
sub.i.v
push.v self.guy_r
conv.v.i
pop.v.v [stacktop]self.x
pushi.e 0
push.v self.guy_r
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.talk_r

:[27]
pushi.e -1
pushi.e 0
push.v [array]self.talk_r
pushi.e 1
cmp.i.v EQ
bf [29]

:[28]
push.v self.shake
pushi.e 0
cmp.i.v EQ
b [30]

:[29]
push.e 0

:[30]
bf [32]

:[31]
push.v self.guy_r
conv.v.i
push.v [stacktop]self.y
push.v self.guy_r
conv.v.i
push.v [stacktop]self.x
pushi.e 113
sub.i.v
pushi.e 0
conv.i.v
pushi.e 30
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 4
conv.i.v
call.i scr_setfont(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_bringitinguys_355"@31790
conv.s.v
call.i scr_gettext(argc=1)
push.v self.guy_r
conv.v.i
push.v [stacktop]self.y
pushloc.v local.text_yofs
add.v.v
push.v self.guy_r
conv.v.i
push.v [stacktop]self.x
pushi.e 88
sub.i.v
call.i draw_text(argc=3)
popz.v

:[32]
push.v self.guy_r2
conv.v.i
push.v [stacktop]self.x
pushbltn.v self.room_width
pushi.e 90
sub.i.v
cmp.v.v LT
bf [34]

:[33]
pushbltn.v self.room_width
pushi.e 90
sub.i.v
push.v self.guy_r2
conv.v.i
pop.v.v [stacktop]self.x
pushi.e 0
push.v self.guy_r2
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 1
pushi.e -1
pushi.e 1
pop.v.i [array]self.talk_r

:[34]
pushi.e -1
pushi.e 1
push.v [array]self.talk_r
pushi.e 1
cmp.i.v EQ
bf [36]

:[35]
push.v self.shake
pushi.e 0
cmp.i.v EQ
b [37]

:[36]
push.e 0

:[37]
bf [39]

:[38]
push.v self.guy_r2
conv.v.i
push.v [stacktop]self.y
push.v self.guy_r2
conv.v.i
push.v [stacktop]self.x
pushi.e 113
sub.i.v
pushi.e 0
conv.i.v
pushi.e 30
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 4
conv.i.v
call.i scr_setfont(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_bringitinguys_371"@31792
conv.s.v
call.i scr_gettext(argc=1)
push.v self.guy_r2
conv.v.i
push.v [stacktop]self.y
pushloc.v local.text_yofs
add.v.v
push.v self.guy_r2
conv.v.i
push.v [stacktop]self.x
pushi.e 88
sub.i.v
call.i draw_text(argc=3)
popz.v

:[39]
push.v self.guy_r3
conv.v.i
push.v [stacktop]self.x
pushbltn.v self.room_width
pushi.e 90
sub.i.v
cmp.v.v LT
bf [41]

:[40]
pushbltn.v self.room_width
pushi.e 90
sub.i.v
push.v self.guy_r3
conv.v.i
pop.v.v [stacktop]self.x
pushi.e 0
push.v self.guy_r3
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 1
pushi.e -1
pushi.e 2
pop.v.i [array]self.talk_r

:[41]
pushi.e -1
pushi.e 2
push.v [array]self.talk_r
pushi.e 1
cmp.i.v EQ
bf [43]

:[42]
push.v self.shake
pushi.e 0
cmp.i.v EQ
b [44]

:[43]
push.e 0

:[44]
bf [46]

:[45]
push.v self.guy_r3
conv.v.i
push.v [stacktop]self.y
push.v self.guy_r3
conv.v.i
push.v [stacktop]self.x
pushi.e 113
sub.i.v
pushi.e 0
conv.i.v
pushi.e 30
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 4
conv.i.v
call.i scr_setfont(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_bringitinguys_387"@31794
conv.s.v
call.i scr_gettext(argc=1)
push.v self.guy_r3
conv.v.i
push.v [stacktop]self.y
pushloc.v local.text_yofs
add.v.v
push.v self.guy_r3
conv.v.i
push.v [stacktop]self.x
pushi.e 88
sub.i.v
call.i draw_text(argc=3)
popz.v

:[46]
push.v self.guy_r4
conv.v.i
push.v [stacktop]self.x
pushbltn.v self.room_width
pushi.e 90
sub.i.v
cmp.v.v LT
bf [48]

:[47]
pushbltn.v self.room_width
pushi.e 90
sub.i.v
push.v self.guy_r4
conv.v.i
pop.v.v [stacktop]self.x
pushi.e 0
push.v self.guy_r4
conv.v.i
pop.v.i [stacktop]self.hspeed

:[48]
push.v self.shake
pushi.e 0
cmp.i.v GT
bf [end]

:[49]
push.v self.shake
push.d 0.02
add.d.v
pop.v.v self.shake
pushi.e 0
pop.v.i self.i

:[50]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [end]

:[51]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shx
push.v self.shake
call.i random(argc=1)
add.v.v
push.v self.shake
call.i random(argc=1)
sub.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.sh
conv.v.i
pop.v.v [stacktop]self.x
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shy
push.v self.shake
call.i random(argc=1)
add.v.v
push.v self.shake
call.i random(argc=1)
sub.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.sh
conv.v.i
pop.v.v [stacktop]self.y
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [50]

:[end]