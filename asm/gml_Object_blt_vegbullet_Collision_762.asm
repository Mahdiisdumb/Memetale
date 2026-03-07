.localvar 0 arguments

:[0]
push.v self.yprevious
pop.v.v self.y
push.v self.vspeed
neg.v
push.d 1.2
div.d.v
pop.v.v self.vspeed

:[end]