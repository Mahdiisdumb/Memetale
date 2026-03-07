.localvar 0 arguments

:[0]
push.v self.btime
pushi.e 1
sub.i.v
pop.v.v self.btime
push.v self.btime
pushi.e 1
cmp.i.v LT
bf [2]

:[1]
push.v self.bounce
pushi.e 2
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 0
pop.v.i self.bounce

:[end]