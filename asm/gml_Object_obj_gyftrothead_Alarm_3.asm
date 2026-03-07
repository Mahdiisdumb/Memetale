.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.image_index
pushi.e 60
pushi.e 60
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushi.e 2
pop.v.v [array]self.alarm

:[end]