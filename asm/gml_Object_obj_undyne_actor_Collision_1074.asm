.localvar 0 arguments

:[0]
push.v other.active
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1
pop.v.i other.active

:[end]