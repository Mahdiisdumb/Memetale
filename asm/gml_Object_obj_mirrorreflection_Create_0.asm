.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.flip
pushi.e 114
pop.v.i self.horizon
pushi.e 73
pop.v.i self.ceiling
pushbltn.v self.room
pushi.e 252
cmp.i.v EQ
bf [end]

:[1]
push.v self.horizon
pushi.e 20
sub.i.v
pop.v.v self.horizon
push.v self.ceiling
pushi.e 20
sub.i.v
pop.v.v self.ceiling

:[end]