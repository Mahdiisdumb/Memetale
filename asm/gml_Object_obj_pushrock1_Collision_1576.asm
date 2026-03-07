.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i other.moving
push.v self.push
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushglb.v global.facing
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.v self.x
pushi.e 3
add.i.v
pop.v.v self.x
push.v other.x
pushi.e 3
add.i.v
pop.v.v other.x
pushi.e 1
pop.v.i other.moving

:[3]
pushglb.v global.facing
pushi.e 3
cmp.i.v EQ
bf [end]

:[4]
push.v self.x
push.v self.xstart
cmp.v.v GT
bf [end]

:[5]
push.v self.x
pushi.e 3
sub.i.v
pop.v.v self.x
push.v other.x
pushi.e 3
sub.i.v
pop.v.v other.x
pushi.e 1
pop.v.i other.moving

:[end]