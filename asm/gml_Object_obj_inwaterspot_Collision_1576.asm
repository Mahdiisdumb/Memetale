.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.check
push.v other.inwater
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1
pop.v.i other.inwater
pushi.e 1
pop.v.i self.check

:[end]