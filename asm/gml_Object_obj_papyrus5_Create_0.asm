.localvar 0 arguments

:[0]
pushi.e 55
pop.v.i self.xplot
pushglb.v global.plot
push.v self.xplot
cmp.v.v GTE
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[2]
pushi.e 0
pop.v.i self.conversation
pushi.e 999
pop.v.i self.image_yscale
pushglb.v global.plot
push.v self.xplot
pushi.e 1
sub.i.v
cmp.v.v GTE
bf [4]

:[3]
pushi.e 1028
conv.i.v
pushi.e 60
conv.i.v
pushi.e 300
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.papyrus
pushi.e 7
pop.v.i self.conversation
b [5]

:[4]
pushi.e 1028
conv.i.v
pushi.e 60
conv.i.v
pushi.e 100
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.papyrus

:[5]
pushi.e 1405
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1
pop.v.i 1576.cutscene

:[end]