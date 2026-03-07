.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e 5
pop.v.i self.image_yscale
pushglb.v global.plot
pushi.e 134
cmp.i.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
b [3]

:[2]
pushi.e 1
pop.v.i 1576.cutscene
pushi.e 240
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_yview
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e -4
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_object

:[3]
pushi.e 240
pop.v.i self.yoffset1

:[end]