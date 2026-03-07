.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 85
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v 1576.x
pushi.e 10
sub.i.v
pop.v.v self.x
push.v 1576.y
pushi.e 10
sub.i.v
pop.v.v self.y
b [end]

:[2]
pushi.e -90
pop.v.i self.x
pushi.e -90
pop.v.i self.y

:[end]