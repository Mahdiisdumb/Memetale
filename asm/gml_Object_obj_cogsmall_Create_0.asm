.localvar 0 arguments

:[0]
pushi.e 6
pop.v.i self.cogno
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.ck
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.offx
pushi.e 0
pop.v.i self.offy
pushglb.v global.osflavor
pushi.e 1
cmp.i.v NEQ
bf [end]

:[1]
pushi.e -1
pop.v.i self.offx
pushi.e -1
pop.v.i self.offy

:[end]