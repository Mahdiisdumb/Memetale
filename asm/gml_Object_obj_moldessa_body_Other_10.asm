.localvar 0 arguments

:[0]
pushi.e 9
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.face
pushi.e 9
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.face
pushi.e 9
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e -1
pushi.e 2
pop.v.v [array]self.face

:[end]