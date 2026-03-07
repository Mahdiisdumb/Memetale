.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.siner
pushi.e 1
pop.v.i self.radardogalpha
pushi.e 40
conv.i.v
call.i random(argc=1)
pushi.e 30
sub.i.v
pop.v.v self.radardogx
pushi.e 40
conv.i.v
call.i random(argc=1)
pushi.e 30
sub.i.v
pop.v.v self.radardogy
pushi.e 0
pop.v.i self.die

:[end]