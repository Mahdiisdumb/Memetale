.localvar 0 arguments

:[0]
pushi.e 187
conv.i.v
push.v self.y
pushi.e 55
add.i.v
push.v self.x
pushi.e 165
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
push.s "Hmph,&try not&to mess&this up."@48461
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[5]
push.v self.mycommand
pushi.e 25
cmp.i.v GTE
bf [7]

:[6]
push.s "I'll&take you&down&alone!"@48462
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[7]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [9]

:[8]
push.s "Sigh...&team&attack,&I guess."@48463
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[9]
push.v self.mycommand
pushi.e 75
cmp.i.v GTE
bf [11]

:[10]
push.s "I'm a&one&woman&army."@48464
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[11]
push.v self.shake
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
push.s "D...&Dude..."@10497
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[13]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [16]

:[14]
push.s "What&are you&talking&about?"@48465
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg
push.v self.toldhim
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
push.s "My...&glove..."@48466
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[16]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [19]

:[17]
push.s "Don't&touch&that!!"@48467
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg
push.v self.toldhim
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
push.s ",.."@48468
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[19]
push.v self.whatiheard
pushi.e 12
cmp.i.v EQ
bf [21]

:[20]
push.s "H-HEY,&STOP&THAT!!"@10507
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[21]
call.i scr_monstersum(argc=0)
pop.v.v self.pop
push.v self.pop
pushi.e 2
cmp.i.v LT
bf [44]

:[22]
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [24]

:[23]
push.v self.mycommand
pushi.e 25
cmp.i.v LT
b [25]

:[24]
push.e 0

:[25]
bf [27]

:[26]
push.s "03!&I didn't&want&this..."@48469
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[27]
push.v self.mycommand
pushi.e 25
cmp.i.v GTE
bf [29]

:[28]
push.s "03...&03..."@48470
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[29]
push.v self.mycommand
pushi.e 50
cmp.i.v GTE
bf [31]

:[30]
push.s "03...&answer&me..."@48471
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[31]
push.v self.mycommand
pushi.e 75
cmp.i.v GTE
bf [33]

:[32]
push.s "..."@3215
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
pushi.e 1
cmp.i.v LT
b [36]

:[35]
push.e 0

:[36]
bf [38]

:[37]
push.s "03!&I never&said&sorry..."@48472
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[38]
push.v self.freshdeath
pushi.e 0
cmp.i.v EQ
bf [40]

:[39]
push.v self.mercymod
pushi.e 100
cmp.i.v GT
b [41]

:[40]
push.e 0

:[41]
bf [43]

:[42]
push.s "03...!?&Why,&you..."@48473
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

:[43]
pushi.e 1
pop.v.i self.freshdeath
push.i -99999
pop.v.i self.mercymod

:[44]
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