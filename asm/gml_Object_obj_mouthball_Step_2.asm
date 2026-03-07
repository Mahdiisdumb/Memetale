.localvar 0 arguments

:[0]
push.v self.x
push.v self.dt
conv.v.i
pop.v.v [stacktop]self.x
push.v self.y
push.v self.dt
conv.v.i
pop.v.v [stacktop]self.y

:[end]