.localvar 0 arguments

:[0]
pushglb.v global.plot
pushi.e 42
cmp.i.v GTE
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[2]
pushi.e 9999
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.conversation
push.v self.x
pushi.e 2
sub.i.v
pop.v.v self.x

:[end]