.localvar 0 arguments

:[0]
pushi.e -3
conv.i.v
pushi.e 3
conv.i.v
call.i choose(argc=2)
pop.v.v self.g
pushi.e 1
conv.i.v
pushi.e 80
conv.i.v
push.v self.g
pushi.e 50
pushi.e 150
conv.i.v
call.i random(argc=1)
add.v.i
call.i scr_bwall(argc=4)
popz.v
pushi.e 50
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm

:[end]