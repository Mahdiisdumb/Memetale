.localvar 0 arguments

:[0]
pushglb.v global.facing
push.v self.stepped
cmp.v.v NEQ
bf [end]

:[1]
pushglb.v global.facing
pushi.e 3
cmp.i.v EQ
bf [3]

:[2]
push.v other.y
pushi.e 1
add.i.v
pop.v.v other.y
pushi.e 3
pop.v.i self.stepped

:[3]
pushglb.v global.facing
pushi.e 1
cmp.i.v EQ
bf [end]

:[4]
push.v other.y
pushi.e 1
sub.i.v
pop.v.v other.y
pushi.e 1
pop.v.i self.stepped

:[end]