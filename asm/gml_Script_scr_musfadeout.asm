.localvar 0 arguments

:[0]
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.g
pushbltn.v self.argument0
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.d 0.05
pop.v.d self.argument0

:[2]
pushbltn.v self.argument0
push.v self.g
conv.v.i
pop.v.v [stacktop]self.fadespeed

:[end]