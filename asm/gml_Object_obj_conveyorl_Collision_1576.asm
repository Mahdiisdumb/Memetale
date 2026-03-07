.localvar 0 arguments

:[0]
push.v self.gone
pushi.e 0
cmp.i.v EQ
bf [6]

:[1]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bt [3]

:[2]
push.v self.rideo
pushi.e 1
cmp.i.v EQ
b [4]

:[3]
push.e 1

:[4]
bf [6]

:[5]
push.v 1576.x
pop.v.v self.xfer
pushi.e 1
pop.v.i self.go

:[6]
pushi.e 1
push.v self.object_index
conv.v.i
pop.v.i [stacktop]self.gone
pushi.e 1278
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[7]
pushi.e 3
pop.v.i 1278.active

:[end]