.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
pushi.e 1
pop.v.i global.interact
push.v 1576.y
push.v self.finaly
pushi.e 3
sub.i.v
cmp.v.v GTE
bf [3]

:[2]
push.v self.finaly
pop.v.v 1576.y
pushi.e 2
pop.v.i self.con

:[3]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [end]

:[4]
pushi.e 0
pop.v.i global.phasing
pushi.e 0
pop.v.i 1576.vspeed
pushi.e 0
pop.v.i global.interact
pushi.e 1
pop.v.i 1576.image_alpha
pushi.e 3
pop.v.i self.con
call.i instance_destroy(argc=0)
popz.v

:[end]