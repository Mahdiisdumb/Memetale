.localvar 0 arguments

:[0]
pushglb.v global.healno
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
pushglb.v global.testhp
pushi.e 20
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 20
pop.v.i global.testhp
push.v global.healno
pushi.e 1
sub.i.v
pop.v.v global.healno

:[end]