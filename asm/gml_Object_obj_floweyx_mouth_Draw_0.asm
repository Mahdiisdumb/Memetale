.localvar 0 arguments

:[0]
push.v self.onoff
pushi.e 1
add.i.v
pop.v.v self.onoff
push.v self.onoff
pushi.e 3
cmp.i.v GT
bf [2]

:[1]
pushi.e 0
pop.v.i self.onoff

:[2]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1645
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [9]

:[3]
push.v self.mode
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.v self.y
pushi.e 110
add.i.v
push.v self.x
pushi.e 60
add.i.v
push.v self.y
pushi.e 8
add.i.v
push.v self.x
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[5]
push.v self.mode
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.v self.y
pushi.e 110
add.i.v
push.v self.x
pushi.e 70
add.i.v
push.v self.y
pushi.e 8
add.i.v
push.v self.x
pushi.e 10
sub.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[7]
push.v self.mode
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
push.v self.y
pushi.e 110
add.i.v
push.v self.x
pushi.e 78
add.i.v
push.v self.y
pushi.e 8
add.i.v
push.v self.x
pushi.e 18
sub.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[9]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [11]

:[10]
pushi.e 4
pop.v.i self.con
pushi.e 0
pop.v.i self.cntr
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[11]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [13]

:[12]
push.v self.cntr
pushi.e 1
add.i.v
pop.v.v self.cntr
push.v self.cntr
push.v self.onoff
pushi.e 5
mul.i.v
sub.v.v
pushi.e 15
conv.i.d
div.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 202
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
sub.v.i
pushi.e 274
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2350
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[13]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [15]

:[14]
pushi.e 1
pop.v.i self.laugh
pushi.e 2
pop.v.i self.mode
pushi.e 1645
conv.i.v
pushi.e 214
conv.i.v
pushi.e 271
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.b
push.v self.depth
pushi.e 1
add.i.v
push.v self.b
conv.v.i
pop.v.v [stacktop]self.depth
pushi.e 6
pop.v.i self.con
pushi.e 25
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[15]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [17]

:[16]
pushi.e 0
pop.v.i self.laugh
pushi.e 0
pop.v.i self.mode
pushi.e 0
pop.v.i self.con

:[17]
push.v self.frozen
pushi.e 0
cmp.i.v EQ
bf [21]

:[18]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.desperate
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
push.v self.siner
push.d 0.4
add.d.v
pop.v.v self.siner

:[20]
push.v self.anim
push.d 0.25
add.d.v
pop.v.v self.anim

:[21]
pushi.e 60
pop.v.i self.op
push.v self.image_alpha
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.x
pushi.e 10
add.i.v
push.v self.image_index
pushi.e 2283
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.mode
pushi.e 0
cmp.i.v EQ
bf [32]

:[22]
push.v self.rotbonus
pushi.e 0
cmp.i.v GT
bf [24]

:[23]
push.v self.rotbonus
pushi.e 5
sub.i.v
pop.v.v self.rotbonus
b [25]

:[24]
pushi.e 0
pop.v.i self.rotbonus

:[25]
push.v self.xbonus
pushi.e 0
cmp.i.v GT
bf [27]

:[26]
push.v self.xbonus
pushi.e 2
sub.i.v
pop.v.v self.xbonus
b [28]

:[27]
pushi.e 0
pop.v.i self.xbonus

:[28]
push.v self.ybonus
pushi.e 0
cmp.i.v LT
bf [30]

:[29]
push.v self.ybonus
pushi.e 2
add.i.v
pop.v.v self.ybonus
b [31]

:[30]
pushi.e 0
pop.v.i self.ybonus

:[31]
pushi.e 0
pop.v.i self.ybonus

:[32]
push.v self.mode
pushi.e 1
cmp.i.v EQ
bf [39]

:[33]
push.v self.ybonus
pushi.e -4
cmp.i.v GT
bf [35]

:[34]
push.v self.ybonus
pushi.e 2
sub.i.v
pop.v.v self.ybonus

:[35]
push.v self.xbonus
pushi.e 6
cmp.i.v LT
bf [37]

:[36]
push.v self.xbonus
pushi.e 2
add.i.v
pop.v.v self.xbonus

:[37]
push.v self.rotbonus
pushi.e 15
cmp.i.v LT
bf [39]

:[38]
push.v self.rotbonus
pushi.e 5
add.i.v
pop.v.v self.rotbonus

:[39]
push.v self.mode
pushi.e 2
cmp.i.v EQ
bf [46]

:[40]
push.v self.ybonus
pushi.e -8
cmp.i.v GT
bf [42]

:[41]
push.v self.ybonus
pushi.e 4
sub.i.v
pop.v.v self.ybonus

:[42]
push.v self.xbonus
pushi.e 6
cmp.i.v LT
bf [44]

:[43]
push.v self.xbonus
pushi.e 2
add.i.v
pop.v.v self.xbonus

:[44]
push.v self.rotbonus
pushi.e 24
cmp.i.v LT
bf [46]

:[45]
push.v self.rotbonus
pushi.e 8
add.i.v
pop.v.v self.rotbonus

:[46]
push.v self.desperate
pushi.e 0
cmp.i.v EQ
bf [48]

:[47]
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
sub.v.i
push.v self.rotbonus
sub.v.v
pushi.e 1
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.03
mul.d.v
add.v.i
pushi.e 1
conv.i.v
push.v self.y
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
add.v.v
pushi.e 5
sub.i.v
push.v self.ybonus
add.v.v
push.v self.x
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.v
pushi.e 20
sub.i.v
push.v self.xbonus
add.v.v
push.v self.image_index
pushi.e 2280
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
sub.v.i
push.v self.rotbonus
sub.v.v
pushi.e 1
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.03
mul.d.v
add.v.i
pushi.e 1
conv.i.v
push.v self.y
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
add.v.v
push.v self.ybonus
add.v.v
push.v self.x
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.v
push.v self.xbonus
add.v.v
push.v self.image_index
pushi.e 2281
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
add.v.i
push.v self.rotbonus
add.v.v
pushi.e 1
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.03
mul.d.v
add.v.i
pushi.e -1
conv.i.v
push.v self.y
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
add.v.v
pushi.e 5
sub.i.v
push.v self.ybonus
add.v.v
push.v self.x
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
sub.v.v
push.v self.op
add.v.v
pushi.e 20
add.i.v
push.v self.xbonus
sub.v.v
push.v self.image_index
pushi.e 2280
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
add.v.i
push.v self.rotbonus
add.v.v
pushi.e 1
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.03
mul.d.v
add.v.i
pushi.e -1
conv.i.v
push.v self.y
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
add.v.v
push.v self.ybonus
add.v.v
push.v self.x
push.v self.op
add.v.v
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
sub.v.v
push.v self.xbonus
sub.v.v
push.v self.image_index
pushi.e 2281
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[48]
push.v self.desperate
pushi.e 1
cmp.i.v EQ
bf [50]

:[49]
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
sub.v.i
push.v self.rotbonus
sub.v.v
pushi.e 1
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.06
mul.d.v
add.v.i
pushi.e 1
conv.i.v
push.v self.y
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
add.v.v
pushi.e 5
sub.i.v
push.v self.ybonus
add.v.v
push.v self.x
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
add.v.v
pushi.e 20
sub.i.v
push.v self.xbonus
add.v.v
push.v self.image_index
pushi.e 2280
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
sub.v.i
push.v self.rotbonus
sub.v.v
pushi.e 1
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.05
mul.d.v
add.v.i
pushi.e 1
conv.i.v
push.v self.y
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
add.v.v
push.v self.ybonus
add.v.v
push.v self.x
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
add.v.v
push.v self.xbonus
add.v.v
push.v self.image_index
pushi.e 2281
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
add.v.i
push.v self.rotbonus
add.v.v
pushi.e 1
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.06
mul.d.v
add.v.i
pushi.e -1
conv.i.v
push.v self.y
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
add.v.v
pushi.e 5
sub.i.v
push.v self.ybonus
add.v.v
push.v self.x
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
sub.v.v
push.v self.op
add.v.v
pushi.e 20
add.i.v
push.v self.xbonus
sub.v.v
push.v self.image_index
pushi.e 2280
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
add.v.i
push.v self.rotbonus
add.v.v
pushi.e 1
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.05
mul.d.v
add.v.i
pushi.e -1
conv.i.v
push.v self.y
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
add.v.v
push.v self.ybonus
add.v.v
push.v self.x
push.v self.op
add.v.v
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
sub.v.v
push.v self.xbonus
sub.v.v
push.v self.image_index
pushi.e 2281
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[50]
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
add.v.i
pushi.e 1
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.03
mul.d.v
add.v.i
pushi.e 1
conv.i.v
push.v self.y
pushi.e 10
sub.i.v
push.v self.x
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.v
pushi.e 5
sub.i.v
push.v self.xbonus
add.v.v
push.v self.anim
pushi.e 2282
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
add.v.i
pushi.e 1
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.03
mul.d.v
add.v.i
pushi.e -1
conv.i.v
push.v self.y
pushi.e 10
sub.i.v
push.v self.x
push.v self.op
add.v.v
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
sub.v.v
pushi.e 5
add.i.v
push.v self.xbonus
sub.v.v
push.v self.anim
pushi.e 2282
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [55]

:[51]
pushi.e 1
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [55]

:[52]
push.v self.mode
pushi.e 0
cmp.i.v EQ
bf [54]

:[53]
pushi.e 1
pop.v.i self.mode
b [55]

:[54]
pushi.e 0
pop.v.i self.mode

:[55]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [60]

:[56]
pushi.e 2
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [60]

:[57]
push.v self.laugh
pushi.e 0
cmp.i.v EQ
bf [59]

:[58]
pushi.e 1
pop.v.i self.laugh
b [60]

:[59]
pushi.e 0
pop.v.i self.laugh

:[60]
push.v self.laugh
pushi.e 1
cmp.i.v EQ
bf [end]

:[61]
pushi.e 0
pop.v.i self.siner
push.v self.laughtimer
pushi.e 1
add.i.v
pop.v.v self.laughtimer
push.v self.laughtimer
pushi.e 1
cmp.i.v EQ
bf [63]

:[62]
pushi.e -3
pop.v.i self.rotbonus
pushi.e -1
pop.v.i self.xbonus
pushi.e 0
pop.v.i self.ybonus

:[63]
push.v self.laughtimer
pushi.e 2
cmp.i.v EQ
bf [65]

:[64]
pushi.e 6
pop.v.i self.rotbonus
pushi.e 2
pop.v.i self.xbonus
pushi.e -1
pop.v.i self.ybonus

:[65]
push.v self.laughtimer
pushi.e 3
cmp.i.v EQ
bf [67]

:[66]
pushi.e 18
pop.v.i self.rotbonus
pushi.e 4
pop.v.i self.xbonus
pushi.e -3
pop.v.i self.ybonus

:[67]
push.v self.laughtimer
pushi.e 4
cmp.i.v EQ
bf [69]

:[68]
pushi.e 20
pop.v.i self.rotbonus
pushi.e 6
pop.v.i self.xbonus
pushi.e -4
pop.v.i self.ybonus

:[69]
push.v self.laughtimer
pushi.e 5
cmp.i.v EQ
bf [71]

:[70]
pushi.e 12
pop.v.i self.rotbonus
pushi.e 4
pop.v.i self.xbonus
pushi.e -3
pop.v.i self.ybonus

:[71]
push.v self.laughtimer
pushi.e 6
cmp.i.v EQ
bf [73]

:[72]
pushi.e 6
pop.v.i self.rotbonus
pushi.e 2
pop.v.i self.xbonus
pushi.e -2
pop.v.i self.ybonus

:[73]
push.v self.laughtimer
pushi.e 7
cmp.i.v EQ
bf [75]

:[74]
pushi.e 0
pop.v.i self.rotbonus
pushi.e 0
pop.v.i self.xbonus
pushi.e 0
pop.v.i self.ybonus

:[75]
push.v self.laughtimer
pushi.e 6
cmp.i.v EQ
bf [end]

:[76]
pushi.e 1
pop.v.i self.laughtimer

:[end]