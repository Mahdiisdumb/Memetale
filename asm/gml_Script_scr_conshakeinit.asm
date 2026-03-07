.localvar 0 arguments

:[0]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pop.v.v self.conshakex
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pop.v.v self.conshakey
pushi.e 0
pop.v.i self.consiner
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
pushi.e 1
pop.v.i 1576.cutscene

:[end]