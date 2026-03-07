.localvar 0 arguments

:[0]
push.v self.life
pushi.e 1
sub.i.v
pop.v.v self.life
push.v self.life
pushi.e 7
cmp.i.v LT
bf [2]

:[1]
pushi.e 1
pop.v.i self.image_index

:[2]
push.v self.life
pushi.e 4
cmp.i.v LT
bf [4]

:[3]
pushi.e 2
pop.v.i self.image_index

:[4]
push.v self.life
pushi.e 1
cmp.i.v LT
bf [end]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[end]