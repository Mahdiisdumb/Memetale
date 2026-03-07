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
pushi.e 33
cmp.i.v LT
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
push.s "You're&rather&slow."@48096
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[9]
push.v self.mycommand
pushi.e 33
cmp.i.v GTE
bf [11]

:[10]
push.v self.mycommand
pushi.e 66
cmp.i.v LT
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
push.s "Come on,&let's go."@48097
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[14]
push.v self.mycommand
pushi.e 66
cmp.i.v GTE
bf [16]

:[15]
push.v self.mycommand
pushi.e 100
cmp.i.v LTE
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
push.s "Hurry&up..."@48098
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[19]
pushglb.v global.turn
pushi.e 3
cmp.i.v EQ
bf [21]

:[20]
push.s "Want to&go on&a walk?"@48099
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[21]
push.v self.whatiheard
pushi.e 2
cmp.i.v EQ
bf [23]

:[22]
push.v self.mercymod
pushi.e 21
cmp.i.v EQ
b [24]

:[23]
push.e 0

:[24]
bf [26]

:[25]
push.s "Pet...&me..."@48100
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[26]
push.v self.whatiheard
pushi.e 2
cmp.i.v EQ
bf [28]

:[27]
push.v self.mercymod
pushi.e 20
cmp.i.v EQ
b [29]

:[28]
push.e 0

:[29]
bf [31]

:[30]
push.s "Oh boy!&Oh boy!&Oh boy!&Oh boy!"@48101
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg
pushi.e 21
pop.v.i self.mercymod

:[31]
push.v self.whatiheard
pushi.e 5
cmp.i.v EQ
bf [33]

:[32]
push.v self.mercymod
pushi.e 100
cmp.i.v EQ
b [34]

:[33]
push.e 0

:[34]
bf [36]

:[35]
push.s "Ahhhh,&humans&are&nice."@48102
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg
pushi.e -30
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef

:[36]
push.v self.mercymod
pushi.e 102
cmp.i.v EQ
bf [38]

:[37]
pushi.e 103
pop.v.i self.mercymod
push.s "Hey!!&That&was&fun!!"@48103
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[38]
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