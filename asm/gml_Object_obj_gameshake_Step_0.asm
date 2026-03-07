.localvar 0 arguments

:[0]
push.v self.in_silence
conv.v.b
not.b
bf [end]

:[1]
pushi.e -10
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushi.e 3
pop.v.v [array]self.background_x
pushi.e -10
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushi.e 3
pop.v.v [array]self.background_y

:[end]