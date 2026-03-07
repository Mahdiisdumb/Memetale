.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i global.interact
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pop.v.v self.xx
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_yview
pop.v.v self.yy
pushi.e 0
pop.v.i self.c0y
pushi.e 0
pop.v.i self.c1y
pushi.e 0
pop.v.i self.column
pushi.e 0
pop.v.i self.boxtype
pushi.e 0
pop.v.i self.buffer
pushi.e 0
pop.v.i self.spec
pushi.e 300
pop.v.i self.boxno

:[end]