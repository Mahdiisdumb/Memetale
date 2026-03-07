.localvar 0 arguments

:[0]
pushi.e 187
conv.i.v
push.v self.ystart
pushi.e 50
add.i.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 8
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 100
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pop.v.v self.mycommand
pushi.e 3
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.gg
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [2]

:[1]
push.v self.mycommand
pushi.e 25
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.s "obj_icecube_174"@14458
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[5]
push.v self.mycommand
pushi.e 25
cmp.i.v GTE
bf [7]

:[6]
push.v self.mycommand
pushi.e 50
cmp.i.v LT
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
push.s "obj_icecube_175"@14460
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[10]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [12]

:[11]
push.v self.mycommand
pushi.e 75
cmp.i.v LT
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
push.s "obj_icecube_176"@14462
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[15]
push.v self.mycommand
pushi.e 75
cmp.i.v GTE
bf [17]

:[16]
push.v self.mycommand
pushi.e 101
cmp.i.v LTE
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
push.s "obj_icecube_177"@14464
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[20]
push.v self.happy
pushi.e 1
cmp.i.v EQ
bf [41]

:[21]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [23]

:[22]
push.v self.mycommand
pushi.e 25
cmp.i.v LT
b [24]

:[23]
push.e 0

:[24]
bf [26]

:[25]
push.s "obj_icecube_181"@14466
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[26]
push.v self.mycommand
pushi.e 25
cmp.i.v GTE
bf [28]

:[27]
push.v self.mycommand
pushi.e 50
cmp.i.v LT
b [29]

:[28]
push.e 0

:[29]
bf [31]

:[30]
push.s "obj_icecube_182"@14468
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[31]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [33]

:[32]
push.v self.mycommand
pushi.e 75
cmp.i.v LT
b [34]

:[33]
push.e 0

:[34]
bf [36]

:[35]
push.s "obj_icecube_183"@14470
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[36]
push.v self.mycommand
pushi.e 75
cmp.i.v GTE
bf [38]

:[37]
push.v self.mycommand
pushi.e 101
cmp.i.v LTE
b [39]

:[38]
push.e 0

:[39]
bf [41]

:[40]
push.s "obj_icecube_184"@14472
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[41]
push.v self.whatiheard
pushi.e 20
cmp.i.v EQ
bf [49]

:[42]
push.v self.gg
pushi.e 0
cmp.i.v EQ
bf [44]

:[43]
push.s "obj_icecube_188"@14473
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[44]
push.v self.gg
pushi.e 1
cmp.i.v EQ
bf [46]

:[45]
push.s "obj_icecube_189"@14474
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[46]
push.v self.gg
pushi.e 2
cmp.i.v EQ
bf [48]

:[47]
push.s "obj_icecube_190"@14475
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[48]
pushi.e 200
pop.v.i self.mercymod

:[49]
push.s "obj_icecube_196"@14476
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 2
pop.v.i global.typer
pushi.e 786
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 15
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd
pushi.e 3
pop.v.i global.border
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
add.v.v
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
pushi.e 8
sub.i.v
pop.v.v 744.x
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
add.v.v
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
pushi.e 8
sub.i.v
pop.v.v 744.y

:[end]