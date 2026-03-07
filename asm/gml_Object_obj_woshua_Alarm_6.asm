.localvar 0 arguments

:[0]
pushi.e 187
conv.i.v
push.v self.y
pushi.e 25
sub.i.v
push.v self.x
pushi.e 95
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 3
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.gg
pushi.e 100
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pop.v.v self.mycommand
push.v self.mycommand
pushi.e 5
cmp.i.v LT
bf [2]

:[1]
push.s "obj_woshua_247"@30021
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.bodypart

:[2]
push.v self.mycommand
pushi.e 5
cmp.i.v GTE
bf [4]

:[3]
push.s "obj_woshua_248"@30023
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.bodypart

:[4]
push.v self.mycommand
pushi.e 10
cmp.i.v GTE
bf [6]

:[5]
push.s "obj_woshua_249"@30025
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.bodypart

:[6]
push.v self.mycommand
pushi.e 15
cmp.i.v GTE
bf [8]

:[7]
push.s "obj_woshua_250"@30027
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.bodypart

:[8]
push.v self.mycommand
pushi.e 20
cmp.i.v GTE
bf [10]

:[9]
push.s "obj_woshua_251"@30029
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.bodypart

:[10]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [12]

:[11]
push.v self.mycommand
pushi.e 25
cmp.i.v LT
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
push.v self.bodypart
push.s "obj_woshua_252"@30031
conv.s.v
call.i scr_gettext(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[15]
push.v self.mycommand
pushi.e 25
cmp.i.v GTE
bf [18]

:[16]
push.s "obj_woshua_254"@30033
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushglb.v global.kills
pushi.e 0
cmp.i.v GT
bf [18]

:[17]
push.s "obj_woshua_255"@30035
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[18]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [20]

:[19]
push.s "obj_woshua_256"@30037
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[20]
push.v self.mycommand
pushi.e 75
cmp.i.v GTE
bf [22]

:[21]
push.v self.dub
pushi.e 1
cmp.i.v EQ
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
push.s "obj_woshua_257"@30039
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[25]
push.v self.mycommand
pushi.e 75
cmp.i.v GTE
bf [27]

:[26]
push.v self.dub
pushi.e 0
cmp.i.v EQ
b [28]

:[27]
push.e 0

:[28]
bf [30]

:[29]
push.s "obj_woshua_258"@30041
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.dub

:[30]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [32]

:[31]
push.s "obj_woshua_263"@30043
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[32]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [35]

:[33]
push.s "obj_woshua_267"@30045
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.clean
pushi.e 2
cmp.i.v EQ
bf [35]

:[34]
push.s "obj_woshua_268"@30047
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[35]
push.v self.whatiheard
pushi.e 4
cmp.i.v EQ
bf [37]

:[36]
push.s "obj_woshua_272"@30049
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[37]
push.s "obj_woshua_276"@30050
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
pushi.e 187
conv.i.v
push.v self.y
pushi.e 40
sub.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.blcontweet
pushi.e 32
push.v self.blcontweet
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 0
pop.v.i global.msc
push.s "obj_woshua_283"@30052
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 25
pop.v.i global.typer
pushi.e 787
conv.i.v
push.v self.blcontweet
conv.v.i
push.v [stacktop]self.y
pushi.e 10
sub.i.v
push.v self.blcontweet
conv.v.i
push.v [stacktop]self.x
pushi.e 15
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd2
pushi.e 1
push.v self.blconwd2
conv.v.i
pop.v.i [stacktop]self.shake
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