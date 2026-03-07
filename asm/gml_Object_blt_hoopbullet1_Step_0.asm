.localvar 0 arguments

:[0]
push.v self.gravity
push.v self.gravitywave
push.d 0.1
mul.d.v
sub.v.v
pop.v.v self.gravity
push.v self.gravity
call.i abs(argc=1)
push.d 0.5
cmp.d.v GT
bf [end]

:[1]
push.v self.gravitywave
neg.v
pop.v.v self.gravitywave

:[end]