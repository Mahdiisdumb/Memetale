.localvar 0 arguments

:[0]
push.v self.sl
pushi.e 1
cmp.i.v EQ
bf [36]

:[1]
pushi.e 2
pop.v.i self.fc
pushi.e -5
pushi.e 11
push.v [array]global.tempvalue
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e -5
pushi.e 396
push.v [array]global.flag
pushi.e 5
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 1
pop.v.i self.doom

:[6]
pushi.e -5
pushi.e 396
push.v [array]global.flag
pushi.e 6
cmp.i.v EQ
bf [8]

:[7]
pushi.e 2
pop.v.i self.doom

:[8]
push.v self.doom
pushi.e 1
cmp.i.v EQ
bf [14]

:[9]
push.v self.onner
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
pushi.e 3
pop.v.i self.fc

:[11]
push.v self.onner
pushi.e 0
cmp.i.v EQ
bf [13]

:[12]
pushi.e 1
pop.v.i self.onner
b [14]

:[13]
pushi.e 0
pop.v.i self.onner

:[14]
push.v 1576.xprevious
push.v 1576.x
pushi.e 3
sub.i.v
cmp.v.v EQ
bt [16]

:[15]
push.v 1576.xprevious
push.v 1576.x
pushi.e 2
sub.i.v
cmp.v.v EQ
b [17]

:[16]
push.e 1

:[17]
bf [19]

:[18]
push.v 1576.x
push.v self.fc
sub.v.v
pop.v.v 1576.x
pushi.e 1
pop.v.i 1576.moving

:[19]
push.v 1576.xprevious
push.v 1576.x
pushi.e 3
add.i.v
cmp.v.v EQ
bt [21]

:[20]
push.v 1576.xprevious
push.v 1576.x
pushi.e 2
add.i.v
cmp.v.v EQ
b [22]

:[21]
push.e 1

:[22]
bf [24]

:[23]
push.v 1576.x
push.v self.fc
add.v.v
pop.v.v 1576.x
pushi.e 1
pop.v.i 1576.moving

:[24]
push.v 1576.yprevious
push.v 1576.y
pushi.e 3
sub.i.v
cmp.v.v EQ
bt [26]

:[25]
push.v 1576.yprevious
push.v 1576.y
pushi.e 2
sub.i.v
cmp.v.v EQ
b [27]

:[26]
push.e 1

:[27]
bf [29]

:[28]
push.v 1576.y
push.v self.fc
sub.v.v
pop.v.v 1576.y
pushi.e 1
pop.v.i 1576.moving

:[29]
push.v 1576.yprevious
push.v 1576.y
pushi.e 3
add.i.v
cmp.v.v EQ
bt [31]

:[30]
push.v 1576.yprevious
push.v 1576.y
pushi.e 2
add.i.v
cmp.v.v EQ
b [32]

:[31]
push.e 1

:[32]
bf [34]

:[33]
push.v 1576.y
push.v self.fc
add.v.v
pop.v.v 1576.y
pushi.e 1
pop.v.i 1576.moving

:[34]
push.v self.doom
pushi.e 2
cmp.i.v EQ
bf [36]

:[35]
push.v 1576.xprevious
pop.v.v 1576.x
push.v 1576.yprevious
pop.v.v 1576.y

:[36]
pushi.e 1
pop.v.i 1576.cutscene
push.v 1576.x
pushi.e 150
sub.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.view_xview

:[end]