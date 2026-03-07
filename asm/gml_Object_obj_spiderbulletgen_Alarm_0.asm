.localvar 0 arguments

:[0]
push.v self.type
pushi.e 0
cmp.i.v EQ
bt [3]

:[1]
push.v self.type
pushi.e 1
cmp.i.v EQ
bt [3]

:[2]
push.v self.type
pushi.e 2
cmp.i.v EQ
b [4]

:[3]
push.e 1

:[4]
bf [15]

:[5]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.ch
pushi.e 354
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.g
push.v self.ch
pushi.e 1
add.i.v
push.v self.g
conv.v.i
pop.v.v [stacktop]self.choice
pushi.e 1
push.v self.g
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.ch2
push.v self.ch2
push.v self.ch
cmp.v.v EQ
bf [7]

:[6]
push.v self.ch2
pushi.e 1
add.i.v
pop.v.v self.ch2

:[7]
push.v self.ch2
pushi.e 2
cmp.i.v GT
bf [9]

:[8]
pushi.e 0
pop.v.i self.ch2

:[9]
pushi.e 354
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.g2
push.v self.ch2
pushi.e 1
add.i.v
push.v self.g2
conv.v.i
pop.v.v [stacktop]self.choice
pushi.e 1
push.v self.g2
conv.v.i
pop.v.i [stacktop]self.side
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
pushi.e 8
push.v self.g
conv.v.i
pop.v.i [stacktop]self.speedfactor
pushi.e 8
push.v self.g2
conv.v.i
pop.v.i [stacktop]self.speedfactor
pushi.e 19
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[11]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
pushi.e 11
push.v self.g
conv.v.i
pop.v.i [stacktop]self.speedfactor
pushi.e 11
push.v self.g2
conv.v.i
pop.v.i [stacktop]self.speedfactor
pushi.e 16
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[13]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [15]

:[14]
pushi.e 13
push.v self.g
conv.v.i
pop.v.i [stacktop]self.speedfactor
pushi.e 13
push.v self.g2
conv.v.i
pop.v.i [stacktop]self.speedfactor
pushi.e 14
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[15]
push.v self.type
pushi.e 3
cmp.i.v EQ
bt [18]

:[16]
push.v self.type
pushi.e 4
cmp.i.v EQ
bt [18]

:[17]
push.v self.type
pushi.e 5
cmp.i.v EQ
b [19]

:[18]
push.e 1

:[19]
bf [26]

:[20]
pushi.e 352
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.g
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [22]

:[21]
pushi.e 4
push.v self.g
conv.v.i
pop.v.i [stacktop]self.speedfactor
pushi.e 17
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[22]
push.v self.type
pushi.e 4
cmp.i.v EQ
bf [24]

:[23]
push.d 3.5
push.v self.g
conv.v.i
pop.v.d [stacktop]self.speedfactor
pushi.e 17
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[24]
push.v self.type
pushi.e 5
cmp.i.v EQ
bf [26]

:[25]
pushi.e 3
push.v self.g
conv.v.i
pop.v.i [stacktop]self.speedfactor
pushi.e 16
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[26]
push.v self.type
pushi.e 6
cmp.i.v EQ
bt [29]

:[27]
push.v self.type
pushi.e 7
cmp.i.v EQ
bt [29]

:[28]
push.v self.type
pushi.e 8
cmp.i.v EQ
b [30]

:[29]
push.e 1

:[30]
bf [37]

:[31]
pushi.e 356
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.g
pushi.e 13
push.v self.g
conv.v.i
pop.v.i [stacktop]self.speedfactor
pushi.e 0
push.v self.g
conv.v.i
pop.v.i [stacktop]self.side
push.v self.type
pushi.e 6
cmp.i.v EQ
bf [33]

:[32]
pushi.e 24
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[33]
push.v self.type
pushi.e 7
cmp.i.v EQ
bf [35]

:[34]
pushi.e 22
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[35]
push.v self.type
pushi.e 8
cmp.i.v EQ
bf [37]

:[36]
pushi.e 19
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[37]
push.v self.type
pushi.e 9
cmp.i.v EQ
bt [41]

:[38]
push.v self.type
pushi.e 10
cmp.i.v EQ
bt [41]

:[39]
push.v self.type
pushi.e 11
cmp.i.v EQ
bt [41]

:[40]
push.v self.type
pushi.e 12
cmp.i.v EQ
b [42]

:[41]
push.e 1

:[42]
bf [51]

:[43]
pushi.e 354
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.g
push.v self.type
pushi.e 9
cmp.i.v EQ
bf [45]

:[44]
pushi.e 15
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 4
push.v self.g
conv.v.i
pop.v.i [stacktop]self.speedfactor

:[45]
push.v self.type
pushi.e 10
cmp.i.v EQ
bf [47]

:[46]
pushi.e 9
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 6
push.v self.g
conv.v.i
pop.v.i [stacktop]self.speedfactor

:[47]
push.v self.type
pushi.e 11
cmp.i.v EQ
bf [49]

:[48]
pushi.e 8
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 8
push.v self.g
conv.v.i
pop.v.i [stacktop]self.speedfactor

:[49]
push.v self.type
pushi.e 12
cmp.i.v EQ
bf [51]

:[50]
pushi.e 7
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 10
push.v self.g
conv.v.i
pop.v.i [stacktop]self.speedfactor

:[51]
push.v self.type
pushi.e 13
cmp.i.v EQ
bt [54]

:[52]
push.v self.type
pushi.e 14
cmp.i.v EQ
bt [54]

:[53]
push.v self.type
pushi.e 16
cmp.i.v EQ
b [55]

:[54]
push.e 1

:[55]
bf [64]

:[56]
pushi.e 355
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.g
pushi.e 355
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.g
pushi.e 355
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.g
push.v self.type
pushi.e 16
cmp.i.v EQ
bf [58]

:[57]
push.v self.dmg
pushi.e 1
sub.i.v
pop.v.v 355.dmg

:[58]
push.v self.type
pushi.e 13
cmp.i.v EQ
bf [60]

:[59]
pushi.e 22
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[60]
push.v self.type
pushi.e 14
cmp.i.v EQ
bf [62]

:[61]
pushi.e 18
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[62]
push.v self.type
pushi.e 16
cmp.i.v EQ
bf [64]

:[63]
pushi.e 16
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[64]
pushi.e 680
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[65]
push.v self.dmg
pop.v.v 680.dmg
pushi.e 361
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[66]
push.v 361.turnamt
pushi.e 15
cmp.i.v GTE
bf [end]

:[67]
push.v self.dmg
pushi.e 1
sub.i.v
pop.v.v 680.dmg

:[end]