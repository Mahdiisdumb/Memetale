.localvar 0 arguments

:[0]
push.v self.vspeed
neg.v
pop.v.v self.vspeed
push.d 0.04
pop.v.d self.friction
pushi.e 1
pop.v.i self.bounced

:[end]