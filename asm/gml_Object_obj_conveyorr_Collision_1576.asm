.localvar 0 arguments

:[0]
push.v self.gone
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v 1576.x
pop.v.v self.xfer
pushi.e 1
pop.v.i self.go

:[3]
pushi.e 1
push.v self.object_index
conv.v.i
pop.v.i [stacktop]self.gone
pushi.e 1278
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[4]
pushi.e 3
pop.v.i 1278.active

:[end]