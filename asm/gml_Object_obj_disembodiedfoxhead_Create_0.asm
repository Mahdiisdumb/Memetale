.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.animanim
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.tt
call.i scr_murderlv(argc=0)
pushi.e 12
cmp.i.v GTE
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]