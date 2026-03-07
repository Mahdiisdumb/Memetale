.localvar 0 arguments

:[0]
push.v self.xprevious
pop.v.v self.x
push.v self.yprevious
pop.v.v self.y
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.vspeed
pushi.e 1
pop.v.i self.bonk

:[end]