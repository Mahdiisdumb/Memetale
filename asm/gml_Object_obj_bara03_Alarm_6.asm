.localvar 0 arguments

:[0]
pushi.e 187
conv.i.v
push.v self.y
pushi.e 55
add.i.v
push.v self.x
push.v self.blconx
sub.v.v
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
push.s "..."@3215
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[5]
push.v self.mycommand
pushi.e 25
cmp.i.v GTE
bf [7]

:[6]
push.s "..."@3215
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[7]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [9]

:[8]
push.s "...&..."@10431
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[9]
push.v self.mycommand
pushi.e 75
cmp.i.v GTE
bf [11]

:[10]
push.s "..."@3215
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[11]
pushi.e 1
pop.v.i self.turn0
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [13]

:[12]
push.s "I know,&but..."@48434
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[13]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [16]

:[14]
push.s "Glove...&getting&looser."@48435
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg
push.v self.shirtless
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
push.s "Nice&to meet&you???"@48436
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[16]
call.i scr_monstersum(argc=0)
pop.v.v self.pop
push.v self.pop
pushi.e 2
cmp.i.v LT
bf [39]

:[17]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [19]

:[18]
push.v self.mycommand
pushi.e 25
cmp.i.v LT
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
push.s "..."@3215
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[22]
push.v self.mycommand
pushi.e 25
cmp.i.v GTE
bf [24]

:[23]
push.s "..."@3215
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[24]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [26]

:[25]
push.s "..."@3215
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[26]
push.v self.mycommand
pushi.e 75
cmp.i.v GTE
bf [28]

:[27]
push.s "..."@3215
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[28]
push.v self.freshdeath
pushi.e 0
cmp.i.v EQ
bf [30]

:[29]
push.v self.mercymod
pushi.e 1
cmp.i.v LT
b [31]

:[30]
push.e 0

:[31]
bf [33]

:[32]
push.s "04...!!&Why&didn't&I..."@48437
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[33]
push.v self.freshdeath
pushi.e 0
cmp.i.v EQ
bf [35]

:[34]
push.v self.mercymod
pushi.e 100
cmp.i.v GT
b [36]

:[35]
push.e 0

:[36]
bf [38]

:[37]
push.s "04!?&You...&YOU...!"@48438
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[38]
pushi.e 1
pop.v.i self.freshdeath
push.i -99999
pop.v.i self.mercymod

:[39]
push.s "%%%"@16
pushi.e -5
pushi.e 1
pop.v.s [array]global.msg
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