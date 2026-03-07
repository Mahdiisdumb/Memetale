.localvar 0 arguments

:[0]
push.v self.draedmode
pushi.e 0
cmp.i.v EQ
bf [4]

:[1]
push.v self.drawngr
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.v self.gr
call.i sprite_delete(argc=1)
popz.v

:[3]
push.v 762.y
push.v 760.y
sub.v.v
pushi.e 2
conv.i.d
div.d.v
pushi.e 4
add.i.v
push.v 761.x
push.v 759.x
sub.v.v
pushi.e 2
conv.i.d
div.d.v
pushi.e 140
add.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v 762.y
push.v 760.y
sub.v.v
pushi.e 8
add.i.v
push.v 761.x
push.v 759.x
sub.v.v
pushi.e 200
add.i.v
push.v 760.y
push.v 759.x
pushi.e 100
sub.i.v
call.i sprite_create_from_screen_x(argc=8)
pop.v.v self.gr
push.v self.gr
pop.v.v self.sprite_index

:[4]
pushi.e 364
pop.v.i self.op
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.draedmode
pushi.e 0
cmp.i.v EQ
bf [9]

:[5]
push.v self.con
pushi.e 6
cmp.i.v LT
bf [7]

:[6]
push.v 762.y
pushi.e 8
add.i.v
push.v 761.x
pushi.e 280
add.i.v
push.v 760.y
push.v 759.x
pushi.e 200
sub.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[7]
push.v self.con
pushi.e 6
cmp.i.v LT
bf [9]

:[8]
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 5
add.i.v
pushi.e 640
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 0
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[9]
push.v self.pattern
pushi.e 1
cmp.i.v EQ
bf [87]

:[10]
push.v self.moved
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 60
sub.i.v
pop.v.v self.xx
pushi.e 1
pop.v.i self.moved

:[12]
push.v 760.y
pop.v.v self.yy
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [15]

:[13]
pushi.e 0
pop.v.i self.siner
pushi.e 20
pop.v.i self.factor
push.v self.draedmode
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.yy
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.xx
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[15]
push.v self.xx
pushi.e -60
cmp.i.v GTE
bf [17]

:[16]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
push.v self.xx
pushi.e 10
sub.i.v
pop.v.v self.xx

:[20]
push.v self.xx
pushi.e -60
cmp.i.v LTE
bf [22]

:[21]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
pushi.e 1
pop.v.i self.con

:[25]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [27]

:[26]
pushi.e 23
pop.v.i global.border
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 348
conv.i.v
push.v 762.y
pushi.e 122
sub.i.v
push.v 761.x
pushi.e 10
add.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 3
pop.v.i self.con

:[27]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [30]

:[28]
pushi.e 0
pop.v.i self.siner
push.v self.draedmode
pushi.e 0
cmp.i.v EQ
bf [30]

:[29]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.yy
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.xx
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[30]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [40]

:[31]
pushi.e 22
pop.v.i global.border
pushi.e 3
pop.v.i 364.ttype
pushi.e 5
pop.v.i self.con
pushi.e 353
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
push.v self.gen
call.i instance_exists(argc=1)
conv.v.b
bf [39]

:[32]
push.v self.dmg
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.dmg
push.v 361.turnamt
pushi.e 5
cmp.i.v EQ
bf [34]

:[33]
pushi.e 13
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.type

:[34]
push.v 361.turnamt
pushi.e 10
cmp.i.v EQ
bf [36]

:[35]
pushi.e 14
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 4
pop.v.i 364.yadd2

:[36]
push.v 361.turnamt
pushi.e 16
cmp.i.v EQ
bf [38]

:[37]
pushi.e 16
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 5
pop.v.i 364.yadd2

:[38]
pushi.e 60
push.v self.gen
conv.v.i
pushi.e 0
pop.v.i [array]self.alarm

:[39]
pushi.e 0
pop.v.i self.siner
pushi.e 5
pop.v.i self.rotfactor

:[40]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [56]

:[41]
push.v 364.yadd
pushi.e 5
cmp.i.v LT
bf [43]

:[42]
push.v 364.yadd
push.d 0.01
add.d.v
pop.v.v 364.yadd

:[43]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.draedmode
pushi.e 0
cmp.i.v EQ
bf [45]

:[44]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.siner
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
push.v self.rotfactor
mul.v.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.yy
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.xx
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[45]
pushglb.v global.turntimer
pushi.e 80
cmp.i.v LT
bf [47]

:[46]
push.v self.rotfactor
pushi.e 0
cmp.i.v GT
b [48]

:[47]
push.e 0

:[48]
bf [56]

:[49]
push.v self.rotfactor
push.d 0.1
sub.d.v
pop.v.v self.rotfactor
push.v self.rotfactor
pushi.e 0
cmp.i.v EQ
bf [51]

:[50]
push.v 361.turnamt
pushi.e 16
cmp.i.v EQ
b [52]

:[51]
push.e 0

:[52]
bf [56]

:[53]
pushi.e 370
pop.v.i global.turntimer
pushi.e 6
pop.v.i self.con
pushi.e 353
pushenv [55]

:[54]
call.i instance_destroy(argc=0)
popz.v

:[55]
popenv [54]

:[56]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [64]

:[57]
pushi.e 21
pop.v.i global.border
push.v 364.x
pop.v.v 744.x
push.v 364.y
pop.v.v 744.y
pushi.e 364
pushenv [59]

:[58]
call.i instance_destroy(argc=0)
popz.v

:[59]
popenv [58]
pushi.e 350
pushenv [61]

:[60]
pushi.e 4
pop.v.i self.vspeed

:[61]
popenv [60]
pushi.e 355
pushenv [63]

:[62]
call.i instance_destroy(argc=0)
popz.v

:[63]
popenv [62]
pushi.e 7
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[64]
push.v self.con
pushi.e 7
cmp.i.v EQ
bt [66]

:[65]
push.v self.con
pushi.e 8
cmp.i.v EQ
b [67]

:[66]
push.e 1

:[67]
bf [70]

:[68]
push.v 744.y
push.v 760.y
pushi.e 20
add.i.v
cmp.v.v LT
bf [70]

:[69]
push.v 760.y
pushi.e 20
add.i.v
pop.v.v 744.y

:[70]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [74]

:[71]
pushi.e 350
pushenv [73]

:[72]
call.i instance_destroy(argc=0)
popz.v

:[73]
popenv [72]
pushi.e 50
pop.v.i 361.con
call.i instance_destroy(argc=0)
popz.v

:[74]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [87]

:[75]
push.v self.xx
pushi.e 1
add.i.v
pop.v.v self.xx
push.v self.xx
pushi.e 140
cmp.i.v GTE
bf [77]

:[76]
pushi.e 353
conv.i.v
call.i instance_exists(argc=1)
pushi.e 1
cmp.i.v EQ
b [78]

:[77]
push.e 0

:[78]
bf [82]

:[79]
pushi.e 353
pushenv [81]

:[80]
call.i instance_destroy(argc=0)
popz.v

:[81]
popenv [80]

:[82]
push.v self.draedmode
pushi.e 0
cmp.i.v EQ
bf [84]

:[83]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.yy
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
push.v self.factor
mul.v.v
add.v.v
push.v self.xx
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[84]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.xx
pushi.e 160
cmp.i.v GTE
bf [87]

:[85]
pushi.e 160
pop.v.i self.xx
push.v self.factor
pushi.e 2
sub.i.v
pop.v.v self.factor
push.v self.factor
pushi.e 1
cmp.i.v LTE
bf [87]

:[86]
pushi.e 0
pop.v.i self.factor
pushi.e 2
pop.v.i self.con

:[87]
push.v self.pattern
pushi.e 2
cmp.i.v EQ
bf [90]

:[88]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.draedmode
pushi.e 0
cmp.i.v EQ
bf [90]

:[89]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.siner
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 5
mul.i.v
push.v self.rot
add.v.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.yy
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.xx
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[90]
pushi.e 1
pop.v.i self.drawngr
pushglb.v global.mnfight
pushi.e 2
cmp.i.v NEQ
bf [end]

:[91]
call.i instance_destroy(argc=0)
popz.v

:[end]