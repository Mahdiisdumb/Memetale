.localvar 0 arguments

:[0]
push.v other.stop
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.stop
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
push.v self.y
pushi.e 5
sub.i.v
pop.v.v self.y
pushi.e 1
pop.v.i self.stop
pushi.e 0
pop.v.i self.speed
pushi.e 0
pop.v.i self.gravity

:[end]