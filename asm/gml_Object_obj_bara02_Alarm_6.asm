.localvar 0 arguments

:[0]
pushi.e 187
conv.i.v
push.v self.y
pushi.e 55
add.i.v
pushi.e 32
add.i.v
push.v self.x
push.v self.blconx
sub.v.v
pushi.e 40
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 29
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 3
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.gg
pushi.e 0
pop.v.i self.attacked
pushi.e 100
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pop.v.v self.mycommand
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
push.s "obj_bara02_256"@10605
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
push.s "obj_bara02_257"@10607
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[7]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [9]

:[8]
push.s "obj_bara02_258"@10609
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[9]
push.v self.mycommand
pushi.e 75
cmp.i.v GTE
bf [11]

:[10]
push.s "obj_bara02_259"@10611
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[11]
push.v self.turn0
pushi.e 0
cmp.i.v EQ
bf [13]

:[12]
push.s "obj_bara02_262"@10613
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[13]
pushi.e 1
pop.v.i self.turn0
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [15]

:[14]
push.s "obj_bara02_266"@10615
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[15]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [18]

:[16]
push.s "obj_bara02_271"@10617
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.shirtless
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
push.s "obj_bara02_272"@10619
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[18]
call.i scr_monstersum(argc=0)
pop.v.v self.pop
push.v self.pop
pushi.e 2
cmp.i.v LT
bf [41]

:[19]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [21]

:[20]
push.v self.mycommand
pushi.e 25
cmp.i.v LT
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
push.s "obj_bara02_279"@10620
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[24]
push.v self.mycommand
pushi.e 25
cmp.i.v GTE
bf [26]

:[25]
push.s "obj_bara02_280"@10621
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[26]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [28]

:[27]
push.s "obj_bara02_281"@10622
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[28]
push.v self.mycommand
pushi.e 75
cmp.i.v GTE
bf [30]

:[29]
push.s "obj_bara02_282"@10623
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[30]
push.v self.freshdeath
pushi.e 0
cmp.i.v EQ
bf [32]

:[31]
push.v self.mercymod
pushi.e 1
cmp.i.v LT
b [33]

:[32]
push.e 0

:[33]
bf [35]

:[34]
push.s "obj_bara02_285"@10625
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[35]
push.v self.freshdeath
pushi.e 0
cmp.i.v EQ
bf [37]

:[36]
push.v self.mercymod
pushi.e 100
cmp.i.v GT
b [38]

:[37]
push.e 0

:[38]
bf [40]

:[39]
push.s "obj_bara02_287"@10627
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[40]
pushi.e 1
pop.v.i self.freshdeath
push.i -99999
pop.v.i self.mercymod

:[41]
push.s "obj_bara02_292"@10628
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
pushi.e 15
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