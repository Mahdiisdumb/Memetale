.localvar 0 arguments

:[0]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.lesson
pushi.e 1
sub.i.v
pop.v.v self.lesson
push.v self.order
pushi.e 1
sub.i.v
pop.v.v self.order

:[end]