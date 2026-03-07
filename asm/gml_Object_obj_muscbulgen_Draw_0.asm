.localvar 0 arguments

:[0]
pushi.e 676
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v 676.vspeed
push.d 0.02
sub.d.v
pop.v.v 676.vspeed

:[2]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner

:[end]