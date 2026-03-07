.localvar 0 arguments

:[0]
push.v self.conshakex
pushi.e -1
push.l 0
conv.l.i
pop.v.v [array]self.view_xview
push.v self.conshakey
pushi.e -1
push.l 0
conv.l.i
pop.v.v [array]self.view_yview
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
pushi.e 0
pop.v.i 1576.cutscene

:[end]