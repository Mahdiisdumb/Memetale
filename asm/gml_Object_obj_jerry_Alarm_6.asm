.localvar 0 arguments

:[0]
push.v self.ditch
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 187
conv.i.v
push.v self.ystart
pushi.e 100
sub.i.v
push.v self.x
pushi.e 8
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 33
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.sprite_index
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
bf [3]

:[2]
push.v self.mycommand
pushi.e 20
cmp.i.v LT
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
push.s "obj_jerry_164"@14558
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[6]
push.v self.mycommand
pushi.e 20
cmp.i.v GTE
bf [8]

:[7]
push.v self.mycommand
pushi.e 40
cmp.i.v LT
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
push.s "obj_jerry_165"@14560
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[11]
push.v self.mycommand
pushi.e 40
cmp.i.v GTE
bf [13]

:[12]
push.v self.mycommand
pushi.e 60
cmp.i.v LT
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
push.s "obj_jerry_166"@14562
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[16]
push.v self.mycommand
pushi.e 60
cmp.i.v GTE
bf [18]

:[17]
push.v self.mycommand
pushi.e 80
cmp.i.v LTE
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
push.s "obj_jerry_167"@14564
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[21]
push.v self.mycommand
pushi.e 80
cmp.i.v GTE
bf [23]

:[22]
push.v self.mycommand
pushi.e 100
cmp.i.v LTE
b [24]

:[23]
push.e 0

:[24]
bf [26]

:[25]
push.s "obj_jerry_168"@14566
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[26]
call.i scr_monstersum(argc=0)
pushi.e 1
cmp.i.v EQ
bf [37]

:[27]
push.v self.mycommand
pushi.e 0
cmp.i.v GT
bf [29]

:[28]
push.s "obj_jerry_171"@14568
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[29]
push.v self.mycommand
pushi.e 20
cmp.i.v GT
bf [31]

:[30]
push.s "obj_jerry_172"@14570
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[31]
push.v self.mycommand
pushi.e 40
cmp.i.v GT
bf [33]

:[32]
push.s "obj_jerry_173"@14572
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[33]
push.v self.mycommand
pushi.e 60
cmp.i.v GT
bf [35]

:[34]
push.s "obj_jerry_174"@14574
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[35]
push.v self.mycommand
pushi.e 80
cmp.i.v GT
bf [37]

:[36]
push.s "obj_jerry_175"@14576
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[37]
push.v self.whatiheard
pushi.e 20
cmp.i.v EQ
bf [45]

:[38]
push.v self.gg
pushi.e 0
cmp.i.v EQ
bf [40]

:[39]
push.s "obj_jerry_199"@14578
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[40]
push.v self.gg
pushi.e 1
cmp.i.v EQ
bf [42]

:[41]
push.s "obj_jerry_200"@14580
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[42]
push.v self.gg
pushi.e 2
cmp.i.v EQ
bf [44]

:[43]
push.s "obj_jerry_201"@14582
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[44]
pushi.e 200
pop.v.i self.mercymod

:[45]
push.s "obj_jerry_207"@14583
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