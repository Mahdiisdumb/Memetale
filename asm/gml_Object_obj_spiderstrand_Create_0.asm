.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.siner
pushi.e 300
conv.i.v
call.i random(argc=1)
pushi.e 150
sub.i.v
pop.v.v self.firstx
pushi.e 300
conv.i.v
call.i random(argc=1)
pushi.e 150
sub.i.v
pop.v.v self.secondx
push.v self.xstart
pop.v.v self.xhome
push.d 0.9
push.d 0.2
conv.d.v
call.i random(argc=1)
sub.v.d
pop.v.v self.scrollspeed

:[end]