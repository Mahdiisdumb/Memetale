.localvar 0 arguments

:[0]
push.v self.side
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.x
pushi.e 160
sub.i.v
pop.v.v self.x

:[2]
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
push.v self.x
pushi.e 160
add.i.v
pop.v.v self.x

:[end]