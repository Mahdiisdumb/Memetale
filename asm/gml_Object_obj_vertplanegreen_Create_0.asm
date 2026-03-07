.localvar 0 arguments

:[0]
pushi.e 328
pop.v.i self.parent
call.i scr_monstersum(argc=0)
pop.v.v self.pop
push.v self.pop
pushi.e 1
cmp.i.v GT
bf [2]

:[1]
push.d 1.3
pop.v.d self.image_xscale

:[2]
push.v self.x
pushi.e 50
sub.i.v
pop.v.v self.x

:[end]