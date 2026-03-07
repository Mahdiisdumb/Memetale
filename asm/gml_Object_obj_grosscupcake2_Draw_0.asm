.localvar 0 arguments

:[0]
push.v self.x
pushi.e 2
conv.i.v
call.i random(argc=1)
pushi.e 1
sub.i.v
add.v.v
pop.v.v self.x
push.v self.y
pushi.e 2
conv.i.v
call.i random(argc=1)
pushi.e 1
sub.i.v
add.v.v
pop.v.v self.y
call.i draw_self_border_e(argc=0)
popz.v

:[end]