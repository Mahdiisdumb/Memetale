.localvar 0 arguments

:[0]
push.v self.rating
pushi.e 8
cmp.i.v GT
bf [2]

:[1]
push.v self.rating
pushi.e 1
sub.i.v
pop.v.v self.rating

:[2]
pushi.e 300
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[end]