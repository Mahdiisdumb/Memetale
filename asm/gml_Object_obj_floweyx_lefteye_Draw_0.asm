.localvar 0 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [7]

:[1]
push.v self.frozen
pushi.e 0
cmp.i.v EQ
bf [5]

:[2]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.desperate
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.siner
push.d 0.1
add.d.v
pop.v.v self.siner

:[4]
b [7]

:[5]
push.v self.frozen
pushi.e 4
cmp.i.v NEQ
bf [7]

:[6]
push.v self.xstart
pushi.e 6
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 6
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.x

:[7]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [10]

:[8]
pushi.e 69
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [10]

:[9]
pushi.e 1
pop.v.i self.con

:[10]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
pushi.e 3
pop.v.i self.con
pushi.e 2
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[12]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [14]

:[13]
push.v self.siner2
push.d 1.2
add.d.v
pop.v.v self.siner2
pushi.e 1
pop.v.i self.md
pushi.e 170
push.v self.siner2
pushi.e 6
add.i.v
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 70
mul.i.v
add.v.i
pushi.e 170
push.v self.siner2
pushi.e 3
add.i.v
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 70
mul.i.v
add.v.i
pushi.e 170
push.v self.siner2
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 70
mul.i.v
add.v.i
call.i make_color_rgb(argc=3)
pop.v.v self.gr
pushi.e 170
push.v self.siner2
pushi.e 7
add.i.v
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 70
mul.i.v
add.v.i
pushi.e 170
push.v self.siner2
pushi.e 4
add.i.v
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 70
mul.i.v
add.v.i
pushi.e 170
push.v self.siner2
pushi.e 1
add.i.v
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 70
mul.i.v
add.v.i
call.i make_color_rgb(argc=3)
pop.v.v self.grgr
pushi.e 170
push.v self.siner2
pushi.e 8
add.i.v
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 70
mul.i.v
add.v.i
pushi.e 170
push.v self.siner2
pushi.e 4
add.i.v
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 70
mul.i.v
add.v.i
pushi.e 170
push.v self.siner2
pushi.e 2
add.i.v
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 70
mul.i.v
add.v.i
call.i make_color_rgb(argc=3)
pop.v.v self.grgrgr

:[14]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [18]

:[15]
pushi.e 5
pop.v.i self.con
pushi.e 0
pop.v.i self.durara
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.oner
pushi.e 3
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.v self.wimpy
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
pushi.e 3
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[17]
push.i 16777215
pop.v.i self.image_blend

:[18]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [38]

:[19]
pushi.e 0
pop.v.i self.opx
pushi.e 1642
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.eba
push.v self.memorymode
push.v self.eba
conv.v.i
pop.v.v [stacktop]self.memorymode
push.v self.durara
push.v self.eba
conv.v.i
pop.v.v [stacktop]self.durara
push.v self.oner
push.v self.eba
conv.v.i
pop.v.v [stacktop]self.oner
push.v self.wimpy
pushi.e 0
cmp.i.v EQ
bf [23]

:[20]
push.v self.eba
conv.v.i
pushenv [22]

:[21]
pushi.e 12
conv.i.v
push.v 1587.y
pushi.e 8
add.i.v
push.v 1587.x
pushi.e 8
add.i.v
call.i move_towards_point(argc=3)
popz.v
push.d -0.2
pop.v.d self.friction
push.v self.direction
pushi.e 18
push.v self.durara
pushi.e 18
mul.i.v
sub.v.i
add.v.v
pop.v.v self.direction

:[22]
popenv [21]

:[23]
push.v self.wimpy
pushi.e 1
cmp.i.v EQ
bf [27]

:[24]
push.v self.eba
conv.v.i
pushenv [26]

:[25]
pushi.e 5
conv.i.v
push.v 1587.y
pushi.e 8
add.i.v
push.v 1587.x
pushi.e 8
add.i.v
call.i move_towards_point(argc=3)
popz.v
push.d -0.1
pop.v.d self.friction
push.v self.direction
pushi.e 30
push.v self.durara
pushi.e 30
mul.i.v
sub.v.i
add.v.v
pop.v.v self.direction

:[26]
popenv [25]

:[27]
push.v self.op
pop.v.v self.opx
pushi.e 1642
conv.i.v
push.v self.y
push.v self.x
push.v self.opx
add.v.v
call.i instance_create(argc=3)
pop.v.v self.ebb
push.v self.memorymode
push.v self.ebb
conv.v.i
pop.v.v [stacktop]self.memorymode
push.v self.durara
push.v self.ebb
conv.v.i
pop.v.v [stacktop]self.durara
push.v self.oner
push.v self.ebb
conv.v.i
pop.v.v [stacktop]self.oner
push.v self.wimpy
pushi.e 0
cmp.i.v EQ
bf [31]

:[28]
push.v self.ebb
conv.v.i
pushenv [30]

:[29]
pushi.e 12
conv.i.v
push.v 1587.y
pushi.e 8
add.i.v
push.v 1587.x
pushi.e 8
add.i.v
call.i move_towards_point(argc=3)
popz.v
push.d -0.2
pop.v.d self.friction
push.v self.direction
pushi.e 18
push.v self.durara
pushi.e 18
mul.i.v
sub.v.i
add.v.v
pop.v.v self.direction

:[30]
popenv [29]

:[31]
push.v self.wimpy
pushi.e 1
cmp.i.v EQ
bf [35]

:[32]
push.v self.ebb
conv.v.i
pushenv [34]

:[33]
pushi.e 5
conv.i.v
push.v 1587.y
pushi.e 8
add.i.v
push.v 1587.x
pushi.e 8
add.i.v
call.i move_towards_point(argc=3)
popz.v
push.d -0.1
pop.v.d self.friction
push.v self.direction
pushi.e 30
push.v self.durara
pushi.e 30
mul.i.v
sub.v.i
add.v.v
pop.v.v self.direction

:[34]
popenv [33]

:[35]
push.v self.durara
pushi.e 1
add.i.v
pop.v.v self.durara
pushi.e 1
pop.v.i self.md
push.v self.gr
push.i 16777215
cmp.i.v EQ
bf [37]

:[36]
pushi.e 255
pop.v.i self.gr
pushi.e 0
pop.v.i self.grgr
pushi.e 0
pop.v.i self.grgrgr
b [38]

:[37]
push.i 16777215
pop.v.i self.gr
push.i 16777215
pop.v.i self.grgr
push.i 16777215
pop.v.i self.grgrgr

:[38]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [40]

:[39]
push.i 16777215
pop.v.i self.gr
push.i 16777215
pop.v.i self.grgr
push.i 16777215
pop.v.i self.grgrgr
pushi.e 0
pop.v.i self.md
push.i 16777215
pop.v.i self.image_blend
pushi.e 0
pop.v.i self.con

:[40]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [42]

:[41]
push.v self.siner2
push.d 1.2
add.d.v
pop.v.v self.siner2
pushi.e 1
pop.v.i self.md
pushi.e 170
push.v self.siner2
pushi.e 6
add.i.v
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 70
mul.i.v
add.v.i
pushi.e 170
push.v self.siner2
pushi.e 3
add.i.v
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 70
mul.i.v
add.v.i
pushi.e 170
push.v self.siner2
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 70
mul.i.v
add.v.i
call.i make_color_rgb(argc=3)
pop.v.v self.gr
pushi.e 170
push.v self.siner2
pushi.e 7
add.i.v
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 70
mul.i.v
add.v.i
pushi.e 170
push.v self.siner2
pushi.e 4
add.i.v
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 70
mul.i.v
add.v.i
pushi.e 170
push.v self.siner2
pushi.e 1
add.i.v
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 70
mul.i.v
add.v.i
call.i make_color_rgb(argc=3)
pop.v.v self.grgr
pushi.e 170
push.v self.siner2
pushi.e 8
add.i.v
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 70
mul.i.v
add.v.i
pushi.e 170
push.v self.siner2
pushi.e 4
add.i.v
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 70
mul.i.v
add.v.i
pushi.e 170
push.v self.siner2
pushi.e 2
add.i.v
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 70
mul.i.v
add.v.i
call.i make_color_rgb(argc=3)
pop.v.v self.grgrgr

:[42]
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
pop.v.v self.rot
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
pop.v.v self.rotx
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 3
mul.i.v
pop.v.v self.roty
push.v self.md
pushi.e 0
cmp.i.v EQ
bf [54]

:[43]
pushi.e 1
conv.i.v
push.v self.image_blend
push.v self.rot
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.roty
add.v.v
push.v self.x
push.v self.rotx
pushi.e 2
mul.i.v
add.v.v
pushi.e 2
sub.i.v
push.v self.image_index
pushi.e 2265
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.desperate
pushi.e 0
cmp.i.v EQ
bf [45]

:[44]
pushi.e 1
conv.i.v
push.v self.image_blend
push.v self.rot
pushi.e 1
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.2
mul.d.v
sub.v.i
pushi.e 1
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.2
mul.d.v
sub.v.i
push.v self.y
push.v self.roty
add.v.v
push.v self.x
push.v self.rotx
push.d 2.5
mul.d.v
add.v.v
pushi.e 2
sub.i.v
push.v self.image_index
pushi.e 2267
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[45]
push.v self.desperate
pushi.e 1
cmp.i.v EQ
bf [52]

:[46]
push.v self.frozen
pushi.e 0
cmp.i.v EQ
bt [48]

:[47]
push.v self.frozen
pushi.e 4
cmp.i.v EQ
b [49]

:[48]
push.e 1

:[49]
bf [51]

:[50]
pushi.e 1
conv.i.v
push.v self.image_blend
push.v self.rot
pushi.e 1
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.2
mul.d.v
sub.v.i
pushi.e 1
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.2
mul.d.v
sub.v.i
push.v self.y
push.v self.roty
add.v.v
push.v self.x
push.v self.rotx
push.d 2.5
mul.d.v
add.v.v
pushi.e 2
sub.i.v
push.v self.image_index
pushi.e 2267
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
b [52]

:[51]
pushi.e 1
conv.i.v
push.v self.image_blend
push.v self.rot
push.d 0.5
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
sub.v.d
push.d 0.5
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
sub.v.d
push.v self.y
push.v self.roty
add.v.v
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.x
push.v self.rotx
push.d 2.5
mul.d.v
add.v.v
pushi.e 3
conv.i.v
call.i random(argc=1)
sub.v.v
push.v self.image_index
pushi.e 2267
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[52]
push.v self.desperate
pushi.e 2
cmp.i.v EQ
bf [54]

:[53]
pushi.e 1
conv.i.v
push.v self.image_blend
push.v self.rot
push.d 0.6
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.3
mul.d.v
sub.v.d
push.d 0.6
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.3
mul.d.v
sub.v.d
push.v self.y
push.v self.roty
add.v.v
push.v self.x
push.v self.rotx
pushi.e 3
mul.i.v
add.v.v
pushi.e 2
sub.i.v
push.v self.image_index
pushi.e 2267
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[54]
push.v self.md
pushi.e 1
cmp.i.v EQ
bf [56]

:[55]
pushi.e 1
conv.i.v
push.v self.grgr
push.v self.rot
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.roty
add.v.v
push.v self.x
push.v self.rotx
pushi.e 2
mul.i.v
add.v.v
pushi.e 2
sub.i.v
push.v self.image_index
pushi.e 2266
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.gr
push.v self.rot
pushi.e 1
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.2
mul.d.v
sub.v.i
pushi.e 1
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.2
mul.d.v
sub.v.i
push.v self.y
push.v self.roty
add.v.v
push.v self.x
push.v self.rotx
push.d 2.5
mul.d.v
add.v.v
pushi.e 2
sub.i.v
push.v self.image_index
pushi.e 2268
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[56]
pushi.e 1
conv.i.v
push.v self.image_blend
push.v self.rot
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.roty
add.v.v
push.v self.x
push.v self.rotx
add.v.v
push.v self.image_index
pushi.e 2262
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 250
pop.v.i self.op
push.v self.md
pushi.e 0
cmp.i.v EQ
bf [68]

:[57]
pushi.e 1
conv.i.v
push.v self.image_blend
push.v self.rot
neg.v
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
push.v self.y
push.v self.roty
add.v.v
push.v self.x
push.v self.op
add.v.v
push.v self.rotx
pushi.e 2
mul.i.v
sub.v.v
pushi.e 2
add.i.v
push.v self.image_index
pushi.e 2265
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.desperate
pushi.e 0
cmp.i.v EQ
bf [59]

:[58]
pushi.e 1
conv.i.v
push.v self.image_blend
push.v self.rot
neg.v
pushi.e 1
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
push.d 0.2
mul.d.v
sub.v.i
pushi.e -1
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
push.d 0.2
mul.d.v
add.v.i
push.v self.y
push.v self.roty
add.v.v
push.v self.x
push.v self.op
add.v.v
push.v self.rotx
push.d 2.5
mul.d.v
sub.v.v
pushi.e 2
add.i.v
push.v self.image_index
pushi.e 2267
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[59]
push.v self.desperate
pushi.e 1
cmp.i.v EQ
bf [66]

:[60]
push.v self.frozen
pushi.e 0
cmp.i.v EQ
bt [62]

:[61]
push.v self.frozen
pushi.e 4
cmp.i.v EQ
b [63]

:[62]
push.e 1

:[63]
bf [65]

:[64]
pushi.e 1
conv.i.v
push.v self.image_blend
push.v self.rot
neg.v
pushi.e 1
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
push.d 0.2
mul.d.v
sub.v.i
pushi.e -1
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
push.d 0.2
mul.d.v
add.v.i
push.v self.y
push.v self.roty
add.v.v
push.v self.x
push.v self.op
add.v.v
push.v self.rotx
push.d 2.5
mul.d.v
sub.v.v
pushi.e 2
add.i.v
push.v self.image_index
pushi.e 2267
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
b [66]

:[65]
pushi.e 1
conv.i.v
push.v self.image_blend
push.v self.rot
neg.v
push.d 0.5
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
push.d 0.1
mul.d.v
sub.v.d
push.d -0.5
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
push.d 0.1
mul.d.v
add.v.d
push.v self.y
push.v self.roty
add.v.v
push.v self.x
push.v self.op
add.v.v
push.v self.rotx
push.d 2.5
mul.d.v
sub.v.v
pushi.e 2
add.i.v
push.v self.image_index
pushi.e 2267
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[66]
push.v self.desperate
pushi.e 2
cmp.i.v EQ
bf [68]

:[67]
pushi.e 1
conv.i.v
push.v self.image_blend
push.v self.rot
neg.v
push.d 0.6
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
push.d 0.3
mul.d.v
sub.v.d
push.d -0.6
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
push.d 0.3
mul.d.v
add.v.d
push.v self.y
push.v self.roty
add.v.v
push.v self.x
push.v self.op
add.v.v
push.v self.rotx
pushi.e 3
mul.i.v
sub.v.v
pushi.e 2
add.i.v
push.v self.image_index
pushi.e 2267
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[68]
push.v self.md
pushi.e 1
cmp.i.v EQ
bf [70]

:[69]
pushi.e 1
conv.i.v
push.v self.grgr
push.v self.rot
neg.v
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
push.v self.y
push.v self.roty
add.v.v
push.v self.x
push.v self.op
add.v.v
push.v self.rotx
pushi.e 2
mul.i.v
sub.v.v
pushi.e 2
add.i.v
push.v self.image_index
pushi.e 2266
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.gr
push.v self.rot
neg.v
pushi.e 1
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
push.d 0.2
mul.d.v
sub.v.i
pushi.e -1
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
push.d 0.2
mul.d.v
add.v.i
push.v self.y
push.v self.roty
add.v.v
push.v self.x
push.v self.op
add.v.v
push.v self.rotx
push.d 2.5
mul.d.v
sub.v.v
pushi.e 2
add.i.v
push.v self.image_index
pushi.e 2268
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[70]
pushi.e 1
conv.i.v
push.v self.image_blend
push.v self.rot
neg.v
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
push.v self.y
push.v self.roty
add.v.v
push.v self.x
push.v self.op
add.v.v
push.v self.rotx
sub.v.v
push.v self.image_index
pushi.e 2262
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]