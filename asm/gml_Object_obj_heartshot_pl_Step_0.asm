.localvar 0 arguments

:[0]
push.v self.y
pushi.e 50
cmp.i.v LT
bf [end]

:[1]
pushi.e 403
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[2]
push.v global.ratings
pushi.e 5
sub.i.v
pop.v.v global.ratings

:[3]
call.i instance_destroy(argc=0)
popz.v

:[end]