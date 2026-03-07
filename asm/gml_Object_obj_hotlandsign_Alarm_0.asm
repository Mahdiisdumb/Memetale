.localvar 0 arguments

:[0]
push.v self.xaround
pushi.e 1
sub.i.v
pop.v.v self.xaround
push.v self.inactive
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 4
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[2]
push.v self.xaround
pushi.e -80
cmp.i.v LT
bf [end]

:[3]
pushi.e 60
pop.v.i self.xaround

:[end]