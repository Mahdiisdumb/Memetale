.localvar 0 arguments

:[0]
pushi.e 187
conv.i.v
push.v self.ystart
pushi.e 8
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
pushglb.v global.turn
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 10
pop.v.i self.mycommand

:[2]
pushglb.v global.turn
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 90
pop.v.i self.mycommand

:[4]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [6]

:[5]
push.v self.mycommand
pushi.e 25
cmp.i.v LT
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
push.s "obj_lesserdoge_204"@15570
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[9]
push.v self.mycommand
pushi.e 25
cmp.i.v GTE
bf [11]

:[10]
push.v self.mycommand
pushi.e 50
cmp.i.v LT
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
push.s "obj_lesserdoge_205"@15572
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[14]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [16]

:[15]
push.v self.mycommand
pushi.e 75
cmp.i.v LTE
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
push.s "obj_lesserdoge_206"@15574
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[19]
push.v self.mycommand
pushi.e 75
cmp.i.v GTE
bf [21]

:[20]
push.v self.mycommand
pushi.e 100
cmp.i.v LTE
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
push.s "obj_lesserdoge_207"@15576
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[24]
push.v self.mercymod
pushi.e 102
cmp.i.v EQ
bf [26]

:[25]
pushi.e 103
pop.v.i self.mercymod
push.s "obj_lesserdoge_211"@15578
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[26]
push.v self.mercymod
pushi.e 10
cmp.i.v GT
bf [28]

:[27]
pushi.e -100
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef

:[28]
push.v self.mercymod
pushi.e 90
cmp.i.v GT
bf [30]

:[29]
push.s "obj_lesserdoge_214"@15580
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[30]
push.v self.mercymod
pushi.e 190
cmp.i.v GT
bf [32]

:[31]
push.s "obj_lesserdoge_215"@15582
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[32]
push.v self.mercymod
pushi.e 340
cmp.i.v GT
bf [34]

:[33]
push.s "obj_lesserdoge_216"@15584
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[34]
push.v self.mercymod
pushi.e 390
cmp.i.v GT
bf [36]

:[35]
push.s "obj_lesserdoge_217"@15586
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[36]
push.v self.mercymod
pushi.e 440
cmp.i.v GT
bf [38]

:[37]
push.s "obj_lesserdoge_218"@15588
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[38]
push.v self.mercymod
pushi.e 490
cmp.i.v GT
bf [40]

:[39]
push.s "obj_lesserdoge_219"@15590
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[40]
push.v self.mercymod
pushi.e 540
cmp.i.v GT
bf [42]

:[41]
push.s "obj_lesserdoge_220"@15592
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[42]
push.v self.mercymod
pushi.e 590
cmp.i.v GT
bf [44]

:[43]
push.s "obj_lesserdoge_221"@15593
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[44]
push.v self.mercymod
pushi.e 640
cmp.i.v GT
bf [46]

:[45]
push.s "obj_lesserdoge_222"@15595
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[46]
push.v self.mercymod
pushi.e 690
cmp.i.v GT
bf [48]

:[47]
push.s "obj_lesserdoge_223"@15596
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[48]
push.s "obj_lesserdoge_224"@15597
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
pushi.e 6
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