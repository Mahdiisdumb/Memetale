.localvar 0 arguments

:[0]
push.v 1575.left
conv.v.b
bf [2]

:[1]
push.v self.x
pushi.e 4
sub.i.v
pop.v.v self.x

:[2]
push.v 1575.right
conv.v.b
bf [end]

:[3]
push.v self.x
pushi.e 4
add.i.v
pop.v.v self.x

:[end]