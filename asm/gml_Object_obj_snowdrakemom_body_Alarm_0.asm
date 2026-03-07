.localvar 0 arguments

:[0]
pushi.e 100
conv.i.v
call.i random(argc=1)
pop.v.v self.image_index
pushi.e 10
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]