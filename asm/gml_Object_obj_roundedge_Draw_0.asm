.localvar 0 arguments

:[0]
push.v self.edge
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.d 0.1
pop.v.d self.edge

:[2]
push.v self.part
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.part

:[4]
push.v self.w0
push.v self.part
div.v.v
pop.v.v self.wp
push.v self.h0
push.v self.part
div.v.v
pop.v.v self.hp
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pop.v.v self.lside
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e -1
pushi.e 0
push.v [array]self.view_wview
add.v.v
pop.v.v self.rside
pushi.e 0
pop.v.i self.side
pushi.e 0
pop.v.i self.curx
pushi.e 1
pop.v.i self.size
push.v self.col
pushi.e 1
add.i.v
pop.v.v self.col
pushi.e 200
conv.i.v
pushi.e 233
conv.i.v
push.v self.col
call.i make_color_hsv(argc=3)
pop.v.v self.color
push.v self.col
pushi.e 254
cmp.i.v GT
bf [6]

:[5]
pushi.e 0
pop.v.i self.col

:[6]
pushi.e 0
pop.v.i self.i

:[7]
push.v self.i
push.v self.part
cmp.v.v LT
bf [9]

:[8]
push.v self.image_alpha
push.v self.color
push.v self.i
push.v self.i
pushi.e 0
push.v self.wp
push.v self.i
mul.v.v
pushi.e 2
conv.i.d
div.d.v
sub.v.i
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
push.v self.wp
push.v self.i
mul.v.v
add.v.v
pushi.e 6
sub.i.v
pushi.e 999
conv.i.v
push.v self.wp
push.v self.i
mul.v.v
pushi.e 0
conv.i.v
push.v self.wp
push.v self.i
mul.v.v
push.v self.x
add.v.v
push.v self.image_index
push.v self.image
call.i draw_sprite_part_ext(argc=12)
popz.v
push.v self.image_alpha
push.v self.color
push.v self.i
push.v self.i
neg.v
pushi.e 0
push.v self.wp
push.v self.i
mul.v.v
pushi.e 2
conv.i.d
div.d.v
sub.v.i
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
push.v self.wp
push.v self.i
mul.v.v
sub.v.v
pushi.e 6
add.i.v
pushi.e 999
conv.i.v
push.v self.wp
push.v self.i
mul.v.v
pushi.e 0
conv.i.v
push.v self.wp
push.v self.i
mul.v.v
push.v self.x
add.v.v
push.v self.image_index
push.v self.image
call.i draw_sprite_part_ext(argc=12)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [7]

:[9]
push.v self.x
push.v self.rotspeed
add.v.v
pop.v.v self.x
push.v self.x
pushi.e 800
cmp.i.v GT
bf [11]

:[10]
push.v self.x
pushi.e 800
sub.i.v
pop.v.v self.x

:[11]
push.v self.x
pushi.e 0
cmp.i.v LT
bf [13]

:[12]
push.v self.x
pushi.e 800
add.i.v
pop.v.v self.x

:[13]
push.v self.ftimer
pushi.e 1
add.i.v
pop.v.v self.ftimer
push.v self.ftimer
pushi.e 630
cmp.i.v GT
bf [15]

:[14]
push.v self.ftimer
pushi.e 671
cmp.i.v LT
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
push.v self.falpha
push.d 0.025
add.d.v
pop.v.v self.falpha
push.v self.falpha
call.i draw_set_alpha(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 999
conv.i.v
pushi.e 999
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[18]
push.v self.ftimer
pushi.e 671
cmp.i.v GTE
bf [20]

:[19]
push.v self.ftimer
pushi.e 685
cmp.i.v LT
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
push.d 0.5
pop.v.d self.image_alpha
push.v self.falpha
push.d 0.1
sub.d.v
pop.v.v self.falpha
push.v self.falpha
call.i draw_set_alpha(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 999
conv.i.v
pushi.e 999
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[23]
push.v self.ftimer
pushi.e 671
cmp.i.v EQ
bf [28]

:[24]
pushi.e 570
pushenv [26]

:[25]
pushi.e 4
pop.v.i self.aligncon
pushi.e 0
pop.v.i self.specialnormal

:[26]
popenv [25]
pushi.e -2
pop.v.i global.turntimer
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [28]

:[27]
push.s "obj_roundedge_135"@23523
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[28]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]