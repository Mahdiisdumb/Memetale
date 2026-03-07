.localvar 0 arguments

:[0]
push.v self.maxdist
push.v self.x
push.v 1576.x
sub.v.v
call.i abs(argc=1)
pushi.e 1
add.i.v
div.v.v
pop.v.v self.alf
push.v self.alf
pushi.e 4
mul.i.v
call.i round(argc=1)
pop.v.v self.alf
push.v self.alf
pushi.e 4
div.i.v
pop.v.v self.alf
push.v self.alf
pushi.e 1
cmp.i.v GT
bf [2]

:[1]
pushi.e 1
pop.v.i self.alf

:[2]
push.v self.alf
pop.v.v self.image_alpha

:[end]