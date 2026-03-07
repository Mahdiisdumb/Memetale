.localvar 0 arguments

:[0]
push.v self.y
push.v self.parent
conv.v.i
push.v [stacktop]self.y
sub.v.v
pop.v.v self.remembery
push.v self.x
push.v self.parent
conv.v.i
push.v [stacktop]self.x
sub.v.v
pop.v.v self.rememberx

:[end]