.localvar 0 arguments

:[0]
push.v self.push
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1
pop.v.i self.push
pushi.e 280
pop.v.i self.x
push.v 1576.x
pushi.e 6
sub.i.v
pop.v.v 1576.x
pushi.e 1
pushi.e -5
pushi.e 32
pop.v.i [array]global.flag

:[end]