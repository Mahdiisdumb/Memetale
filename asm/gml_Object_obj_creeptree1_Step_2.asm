.localvar 0 arguments

:[0]
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v self.xcurrent
push.v 1576.x
sub.v.v
pop.v.v self.xdiff
push.v self.x
push.v self.xdiff
push.d 1.25
mul.d.v
add.v.v
pop.v.v self.x

:[end]