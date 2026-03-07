.localvar 0 arguments

:[0]
pushi.e 5
pop.v.i self.falling
pushi.e 1
pop.v.i self.friction
push.v self.size
push.d 0.3
cmp.d.v GT
bf [end]

:[1]
push.v self.size
push.d 0.1
sub.d.v
pop.v.v self.size

:[end]