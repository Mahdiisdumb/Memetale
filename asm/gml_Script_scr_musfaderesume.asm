.localvar 0 arguments

:[0]
pushi.e 93
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
pushi.e 1
pop.v.i 93.resume
pushbltn.v self.argument0
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.d 0.05
pop.v.d self.argument0

:[3]
pushbltn.v self.argument0
pop.v.v 93.fadespeed

:[end]