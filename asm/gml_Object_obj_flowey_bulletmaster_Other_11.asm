.localvar 0 arguments

:[0]
push.v self.overtype
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
pushi.e 21
conv.i.v
pushi.e 20
conv.i.v
call.i choose(argc=2)
pop.v.v self.newattack
push.v self.newattack
pushi.e -1
pushi.e 1
push.v [array]self.attackid
cmp.v.v EQ
bf [3]

:[2]
pushi.e 21
conv.i.v
pushi.e 20
conv.i.v
call.i choose(argc=2)
pop.v.v self.newattack

:[3]
push.v self.overtype
pushi.e 0
cmp.i.v EQ
bf [14]

:[4]
pushi.e 9
conv.i.v
pushi.e 8
conv.i.v
pushi.e 7
conv.i.v
pushi.e 6
conv.i.v
pushi.e 5
conv.i.v
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=9)
pop.v.v self.newattack
push.v self.newattack
pushi.e -1
pushi.e 1
push.v [array]self.attackid
cmp.v.v EQ
bt [6]

:[5]
push.v self.newattack
pushi.e -1
pushi.e 2
push.v [array]self.attackid
cmp.v.v EQ
b [7]

:[6]
push.e 1

:[7]
bf [9]

:[8]
pushi.e 9
conv.i.v
pushi.e 8
conv.i.v
pushi.e 7
conv.i.v
pushi.e 6
conv.i.v
pushi.e 5
conv.i.v
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=9)
pop.v.v self.newattack

:[9]
push.v self.newattack
pushi.e -1
pushi.e 1
push.v [array]self.attackid
cmp.v.v EQ
bt [11]

:[10]
push.v self.newattack
pushi.e -1
pushi.e 2
push.v [array]self.attackid
cmp.v.v EQ
b [12]

:[11]
push.e 1

:[12]
bf [14]

:[13]
pushi.e 9
conv.i.v
pushi.e 8
conv.i.v
pushi.e 7
conv.i.v
pushi.e 6
conv.i.v
pushi.e 5
conv.i.v
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=9)
pop.v.v self.newattack

:[14]
pushglb.v global.battlephase
pushi.e 0
cmp.i.v EQ
bf [25]

:[15]
pushi.e 9
conv.i.v
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=5)
pop.v.v self.newattack
push.v self.newattack
pushi.e -1
pushi.e 1
push.v [array]self.attackid
cmp.v.v EQ
bt [17]

:[16]
push.v self.newattack
pushi.e -1
pushi.e 2
push.v [array]self.attackid
cmp.v.v EQ
b [18]

:[17]
push.e 1

:[18]
bf [20]

:[19]
pushi.e 9
conv.i.v
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=5)
pop.v.v self.newattack

:[20]
push.v self.newattack
pushi.e -1
pushi.e 1
push.v [array]self.attackid
cmp.v.v EQ
bt [22]

:[21]
push.v self.newattack
pushi.e -1
pushi.e 2
push.v [array]self.attackid
cmp.v.v EQ
b [23]

:[22]
push.e 1

:[23]
bf [25]

:[24]
pushi.e 9
conv.i.v
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=5)
pop.v.v self.newattack

:[25]
pushglb.v global.battlephase
pushi.e 1
cmp.i.v EQ
bf [36]

:[26]
pushi.e 8
conv.i.v
pushi.e 7
conv.i.v
pushi.e 6
conv.i.v
pushi.e 5
conv.i.v
pushi.e 3
conv.i.v
call.i choose(argc=5)
pop.v.v self.newattack
push.v self.newattack
pushi.e -1
pushi.e 1
push.v [array]self.attackid
cmp.v.v EQ
bt [28]

:[27]
push.v self.newattack
pushi.e -1
pushi.e 2
push.v [array]self.attackid
cmp.v.v EQ
b [29]

:[28]
push.e 1

:[29]
bf [31]

:[30]
pushi.e 8
conv.i.v
pushi.e 7
conv.i.v
pushi.e 6
conv.i.v
pushi.e 5
conv.i.v
pushi.e 3
conv.i.v
call.i choose(argc=5)
pop.v.v self.newattack

:[31]
push.v self.newattack
pushi.e -1
pushi.e 1
push.v [array]self.attackid
cmp.v.v EQ
bt [33]

:[32]
push.v self.newattack
pushi.e -1
pushi.e 2
push.v [array]self.attackid
cmp.v.v EQ
b [34]

:[33]
push.e 1

:[34]
bf [36]

:[35]
pushi.e 8
conv.i.v
pushi.e 7
conv.i.v
pushi.e 6
conv.i.v
pushi.e 5
conv.i.v
pushi.e 3
conv.i.v
call.i choose(argc=5)
pop.v.v self.newattack

:[36]
pushglb.v global.battlephase
pushi.e 6
cmp.i.v EQ
bf [38]

:[37]
push.v self.unhinged
pushi.e 0
cmp.i.v EQ
b [39]

:[38]
push.e 0

:[39]
bf [41]

:[40]
pushi.e 22
conv.i.v
pushi.e 23
conv.i.v
call.i choose(argc=2)
pop.v.v self.newattack

:[41]
pushi.e 1589
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.ourattack
push.v self.newattack
push.v self.ourattack
conv.v.i
pop.v.v [stacktop]self.attack
pushi.e -1
pushi.e 1
push.v [array]self.attackid
pushi.e -1
pushi.e 2
pop.v.v [array]self.attackid
pushi.e -1
pushi.e 0
push.v [array]self.attackid
pushi.e -1
pushi.e 1
pop.v.v [array]self.attackid
push.v self.newattack
pushi.e -1
pushi.e 0
pop.v.v [array]self.attackid
pushi.e 1
pop.v.i self.active
pushi.e 150
pop.v.i self.attacktimermax
push.v self.newattack
pushi.e 1
cmp.i.v EQ
bf [43]

:[42]
pushi.e 90
pushi.e 30
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
add.v.i
pop.v.v self.attacktimermax

:[43]
push.v self.newattack
pushi.e 2
cmp.i.v EQ
bf [45]

:[44]
pushi.e 80
pushi.e 25
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
add.v.i
pop.v.v self.attacktimermax

:[45]
push.v self.newattack
pushi.e 3
cmp.i.v EQ
bf [47]

:[46]
pushi.e 70
pushi.e 25
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
add.v.i
pop.v.v self.attacktimermax

:[47]
push.v self.newattack
pushi.e 4
cmp.i.v EQ
bf [49]

:[48]
pushi.e 110
pop.v.i self.attacktimermax

:[49]
push.v self.newattack
pushi.e 5
cmp.i.v EQ
bf [51]

:[50]
pushi.e 110
pop.v.i self.attacktimermax

:[51]
push.v self.newattack
pushi.e 6
cmp.i.v EQ
bf [53]

:[52]
pushi.e 130
pop.v.i self.attacktimermax

:[53]
push.v self.newattack
pushi.e 7
cmp.i.v EQ
bf [55]

:[54]
pushi.e 130
pop.v.i self.attacktimermax

:[55]
push.v self.newattack
pushi.e 8
cmp.i.v EQ
bf [57]

:[56]
pushi.e 110
pop.v.i self.attacktimermax

:[57]
push.v self.newattack
pushi.e 9
cmp.i.v EQ
bf [59]

:[58]
pushi.e 95
pop.v.i self.attacktimermax

:[59]
push.v self.newattack
pushi.e 20
cmp.i.v EQ
bf [61]

:[60]
pushi.e 90
pop.v.i self.attacktimermax

:[61]
push.v self.newattack
pushi.e 21
cmp.i.v EQ
bf [63]

:[62]
pushi.e 90
pop.v.i self.attacktimermax

:[63]
push.v self.newattack
pushi.e 22
cmp.i.v EQ
bf [65]

:[64]
pushi.e 80
pop.v.i self.attacktimermax

:[65]
push.v self.newattack
pushi.e 22
cmp.i.v EQ
bf [67]

:[66]
pushi.e 100
pop.v.i self.attacktimermax

:[67]
push.v self.unhinged
pushi.e 1
cmp.i.v EQ
bf [70]

:[68]
push.v self.attacktimermax
pushi.e 10
sub.i.v
pop.v.v self.attacktimermax
push.v self.newattack
pushi.e 9
cmp.i.v EQ
bf [70]

:[69]
pushi.e 95
pop.v.i self.attacktimermax

:[70]
pushi.e 0
pop.v.i self.attacktimer

:[end]