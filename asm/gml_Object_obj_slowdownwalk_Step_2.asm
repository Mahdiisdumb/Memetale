.localvar 0 arguments

:[0]
push.v self.sl
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v 1576.xprevious
push.v 1576.x
pushi.e 3
sub.i.v
cmp.v.v EQ
bt [3]

:[2]
push.v 1576.xprevious
push.v 1576.x
pushi.e 2
sub.i.v
cmp.v.v EQ
b [4]

:[3]
push.e 1

:[4]
bf [6]

:[5]
push.v 1576.x
pushi.e 1
sub.i.v
pop.v.v 1576.x

:[6]
push.v 1576.xprevious
push.v 1576.x
pushi.e 3
add.i.v
cmp.v.v EQ
bt [8]

:[7]
push.v 1576.xprevious
push.v 1576.x
pushi.e 2
add.i.v
cmp.v.v EQ
b [9]

:[8]
push.e 1

:[9]
bf [11]

:[10]
push.v 1576.x
pushi.e 1
add.i.v
pop.v.v 1576.x

:[11]
push.v 1576.yprevious
push.v 1576.y
pushi.e 3
sub.i.v
cmp.v.v EQ
bt [13]

:[12]
push.v 1576.yprevious
push.v 1576.y
pushi.e 2
sub.i.v
cmp.v.v EQ
b [14]

:[13]
push.e 1

:[14]
bf [16]

:[15]
push.v 1576.y
pushi.e 1
sub.i.v
pop.v.v 1576.y

:[16]
push.v 1576.yprevious
push.v 1576.y
pushi.e 3
add.i.v
cmp.v.v EQ
bt [18]

:[17]
push.v 1576.yprevious
push.v 1576.y
pushi.e 2
add.i.v
cmp.v.v EQ
b [19]

:[18]
push.e 1

:[19]
bf [end]

:[20]
push.v 1576.y
pushi.e 1
add.i.v
pop.v.v 1576.y

:[end]