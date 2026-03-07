.localvar 0 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [5]

:[1]
push.v self.frozen
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
b [5]

:[3]
push.v self.frozen
pushi.e 4
cmp.i.v NEQ
bf [5]

:[4]
push.v self.ystart
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 4
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.y

:[5]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 3
pop.v.i self.con
pushi.e 4
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[7]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [10]

:[8]
pushi.e 82
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [10]

:[9]
pushi.e 1
pop.v.i self.con

:[10]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [12]

:[11]
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

:[12]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [14]

:[13]
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
pushi.e 7
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.i 16777215
pop.v.i self.image_blend

:[14]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [38]

:[15]
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
bf [20]

:[16]
push.v self.eba
conv.v.i
pushenv [19]

:[17]
pushi.e 7
push.v self.durara
push.d 0.1
mul.d.v
sub.v.i
push.v 1587.y
pushi.e 8
add.i.v
push.v 1587.x
pushi.e 8
add.i.v
call.i move_towards_point(argc=3)
popz.v
push.d -0.2
push.v self.durara
push.d 0.012
mul.d.v
add.v.d
pop.v.v self.friction
push.v self.direction
pushi.e 18
push.v self.durara
mul.v.i
sub.v.v
pop.v.v self.direction
push.v self.oner
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
push.v self.direction
pushi.e 9
add.i.v
pop.v.v self.direction

:[19]
popenv [17]

:[20]
push.v self.wimpy
pushi.e 1
cmp.i.v EQ
bf [25]

:[21]
push.v self.eba
conv.v.i
pushenv [24]

:[22]
pushi.e 3
push.v self.durara
push.d 0.1
mul.d.v
sub.v.i
push.v 1587.y
pushi.e 8
add.i.v
push.v 1587.x
pushi.e 8
add.i.v
call.i move_towards_point(argc=3)
popz.v
push.d -0.1
push.v self.durara
push.d 0.02
mul.d.v
sub.v.d
pop.v.v self.friction
push.v self.direction
pushi.e 18
push.v self.durara
mul.v.i
sub.v.v
pop.v.v self.direction
push.v self.oner
pushi.e 1
cmp.i.v EQ
bf [24]

:[23]
push.v self.direction
pushi.e 14
add.i.v
pop.v.v self.direction

:[24]
popenv [22]

:[25]
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
bf [30]

:[26]
push.v self.ebb
conv.v.i
pushenv [29]

:[27]
pushi.e 7
push.v self.durara
push.d 0.1
mul.d.v
sub.v.i
push.v 1587.y
pushi.e 8
add.i.v
push.v 1587.x
pushi.e 8
add.i.v
call.i move_towards_point(argc=3)
popz.v
push.d -0.2
push.v self.durara
push.d 0.012
mul.d.v
add.v.d
pop.v.v self.friction
push.v self.direction
pushi.e 18
push.v self.durara
mul.v.i
add.v.v
pop.v.v self.direction
push.v self.oner
pushi.e 1
cmp.i.v EQ
bf [29]

:[28]
push.v self.direction
pushi.e 9
add.i.v
pop.v.v self.direction

:[29]
popenv [27]

:[30]
push.v self.wimpy
pushi.e 1
cmp.i.v EQ
bf [35]

:[31]
push.v self.ebb
conv.v.i
pushenv [34]

:[32]
pushi.e 3
push.v self.durara
push.d 0.1
mul.d.v
sub.v.i
push.v 1587.y
pushi.e 8
add.i.v
push.v 1587.x
pushi.e 8
add.i.v
call.i move_towards_point(argc=3)
popz.v
push.d -0.1
push.v self.durara
push.d 0.02
mul.d.v
sub.v.d
pop.v.v self.friction
push.v self.direction
pushi.e 18
push.v self.durara
mul.v.i
add.v.v
pop.v.v self.direction
push.v self.oner
pushi.e 1
cmp.i.v EQ
bf [34]

:[33]
push.v self.direction
pushi.e 14
add.i.v
pop.v.v self.direction

:[34]
popenv [32]

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
push.v self.desperate
pushi.e 1
cmp.i.v EQ
bf [44]

:[43]
push.v self.frozen
pushi.e 0
cmp.i.v EQ
b [45]

:[44]
push.e 0

:[45]
bf [47]

:[46]
push.v self.siner
push.d 0.5
add.d.v
pop.v.v self.siner

:[47]
pushi.e 1
conv.i.v
push.v self.grgrgrgr
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
push.d 0.8
conv.d.v
push.d 0.8
conv.d.v
push.v self.y
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
push.v self.image_index
pushi.e 2272
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.grgrgrgr
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 3
mul.i.v
add.v.v
push.v self.x
pushi.e 5
sub.i.v
push.v self.image_index
pushi.e 2269
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.md
pushi.e 0
cmp.i.v EQ
bf [57]

:[48]
pushi.e 1
conv.i.v
push.v self.image_blend
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
push.d 0.8
conv.d.v
push.d 0.8
conv.d.v
pushi.e -4
push.v self.y
add.v.i
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
push.v self.image_index
pushi.e 2274
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.image_blend
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
push.d 0.8
conv.d.v
push.d 0.8
conv.d.v
pushi.e -6
push.v self.y
add.v.i
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
add.v.v
push.v self.x
push.v self.image_index
pushi.e 2278
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.desperate
pushi.e 0
cmp.i.v EQ
bf [50]

:[49]
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 1
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.4
mul.d.v
sub.v.i
push.d 0.8
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.4
mul.d.v
sub.v.d
pushi.e -5
push.v self.y
add.v.i
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
push.v self.image_index
pushi.e 2276
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[50]
push.v self.desperate
pushi.e 1
cmp.i.v EQ
bf [57]

:[51]
push.v self.frozen
pushi.e 0
cmp.i.v EQ
bt [53]

:[52]
push.v self.frozen
pushi.e 4
cmp.i.v EQ
b [54]

:[53]
push.e 1

:[54]
bf [56]

:[55]
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
push.d 0.8
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.3
mul.d.v
sub.v.d
push.d 0.8
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.3
mul.d.v
sub.v.d
pushi.e -5
push.v self.y
add.v.i
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 2.5
mul.d.v
add.v.v
push.v self.x
push.v self.image_index
pushi.e 2276
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
b [57]

:[56]
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
push.d 0.7
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
sub.v.d
push.d 0.7
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
sub.v.d
pushi.e -5
push.v self.y
add.v.i
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 2.5
mul.d.v
add.v.v
push.v self.x
push.v self.image_index
pushi.e 2276
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[57]
push.v self.md
pushi.e 1
cmp.i.v EQ
bf [59]

:[58]
pushi.e 1
conv.i.v
push.v self.grgrgr
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
push.d 0.8
conv.d.v
push.d 0.8
conv.d.v
pushi.e -4
push.v self.y
add.v.i
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
push.v self.image_index
pushi.e 2275
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.grgr
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
push.d 0.8
conv.d.v
push.d 0.8
conv.d.v
pushi.e -6
push.v self.y
add.v.i
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
add.v.v
push.v self.x
push.v self.image_index
pushi.e 2279
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.gr
pushi.e 0
conv.i.v
pushi.e 1
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.4
mul.d.v
sub.v.i
push.d 0.8
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.4
mul.d.v
sub.v.d
pushi.e -5
push.v self.y
add.v.i
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
push.v self.image_index
pushi.e 2277
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[59]
pushi.e 1
conv.i.v
push.v self.image_blend
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
push.d 0.8
conv.d.v
push.d 0.8
conv.d.v
push.v self.y
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
push.v self.image_index
pushi.e 2271
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 126
pop.v.i self.op
pushi.e 1
conv.i.v
push.v self.grgrgrgr
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
neg.v
pushi.e 2
mul.i.v
push.d 0.8
conv.d.v
push.d -0.8
conv.d.v
push.v self.y
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
push.v self.op
add.v.v
push.v self.image_index
pushi.e 2272
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.grgrgrgr
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
push.v self.y
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 3
mul.i.v
add.v.v
push.v self.x
pushi.e 5
add.i.v
push.v self.op
add.v.v
push.v self.image_index
pushi.e 2269
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.md
pushi.e 0
cmp.i.v EQ
bf [69]

:[60]
pushi.e 1
conv.i.v
push.v self.image_blend
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
neg.v
pushi.e 4
mul.i.v
push.d 0.8
conv.d.v
push.d -0.8
conv.d.v
pushi.e -4
push.v self.y
add.v.i
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
push.v self.op
add.v.v
push.v self.image_index
pushi.e 2274
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.image_blend
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
neg.v
pushi.e 4
mul.i.v
push.d 0.8
conv.d.v
push.d -0.8
conv.d.v
pushi.e -6
push.v self.y
add.v.i
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
add.v.v
push.v self.x
push.v self.op
add.v.v
push.v self.image_index
pushi.e 2278
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.desperate
pushi.e 0
cmp.i.v EQ
bf [62]

:[61]
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 1
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i cos(argc=1)
push.d 0.4
mul.d.v
sub.v.i
pushi.e -1
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i cos(argc=1)
push.d 0.4
mul.d.v
add.v.i
pushi.e -5
push.v self.y
add.v.i
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
push.v self.op
add.v.v
push.v self.image_index
pushi.e 2276
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[62]
push.v self.desperate
pushi.e 1
cmp.i.v EQ
bf [69]

:[63]
push.v self.frozen
pushi.e 0
cmp.i.v EQ
bt [65]

:[64]
push.v self.frozen
pushi.e 4
cmp.i.v EQ
b [66]

:[65]
push.e 1

:[66]
bf [68]

:[67]
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
push.d 0.9
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i cos(argc=1)
push.d 0.3
mul.d.v
sub.v.d
push.d -0.9
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i cos(argc=1)
push.d 0.3
mul.d.v
add.v.d
pushi.e -5
push.v self.y
add.v.i
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 2.5
mul.d.v
add.v.v
push.v self.x
push.v self.op
add.v.v
push.v self.image_index
pushi.e 2276
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
b [69]

:[68]
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
push.d 0.7
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i cos(argc=1)
push.d 0.1
mul.d.v
sub.v.d
push.d -0.7
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i cos(argc=1)
push.d 0.1
mul.d.v
add.v.d
pushi.e -5
push.v self.y
add.v.i
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 2.5
mul.d.v
add.v.v
push.v self.x
push.v self.op
add.v.v
push.v self.image_index
pushi.e 2276
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[69]
push.v self.md
pushi.e 1
cmp.i.v EQ
bf [71]

:[70]
pushi.e 1
conv.i.v
push.v self.grgrgr
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
neg.v
pushi.e 4
mul.i.v
push.d 0.8
conv.d.v
push.d -0.8
conv.d.v
pushi.e -4
push.v self.y
add.v.i
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
push.v self.op
add.v.v
push.v self.image_index
pushi.e 2275
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.grgr
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
neg.v
pushi.e 4
mul.i.v
push.d 0.8
conv.d.v
push.d -0.8
conv.d.v
pushi.e -6
push.v self.y
add.v.i
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
add.v.v
push.v self.x
push.v self.op
add.v.v
push.v self.image_index
pushi.e 2279
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.gr
pushi.e 0
conv.i.v
pushi.e 1
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i cos(argc=1)
push.d 0.4
mul.d.v
sub.v.i
pushi.e -1
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i cos(argc=1)
push.d 0.4
mul.d.v
add.v.i
pushi.e -5
push.v self.y
add.v.i
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
push.v self.op
add.v.v
push.v self.image_index
pushi.e 2277
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[71]
pushi.e 1
conv.i.v
push.v self.image_blend
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
neg.v
pushi.e 2
mul.i.v
push.d 0.8
conv.d.v
push.d -0.8
conv.d.v
push.v self.y
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
push.v self.op
add.v.v
push.v self.image_index
pushi.e 2271
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]