.localvar 0 arguments

:[0]
pushi.e 620
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_yview
push.i 1000010
pop.v.i self.l1
push.i 1000000
pop.v.i self.l2
push.i 999995
pop.v.i self.l2x
push.i 999990
pop.v.i self.l3
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.tspeed
pushi.e 1251
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v 1251.sixty
pop.v.v self.sixty

:[end]