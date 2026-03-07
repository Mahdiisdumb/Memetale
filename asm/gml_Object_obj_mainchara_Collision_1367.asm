.localvar 0 arguments

:[0]
pushglb.v global.phasing
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.v self.xprevious
pop.v.v self.x
push.v self.yprevious
pop.v.v self.y
pushi.e 0
pop.v.i self.moving

:[end]