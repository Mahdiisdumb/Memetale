.localvar 0 arguments

:[0]
pushi.e 0
pushi.e -5
pushi.e 16
pop.v.i [array]global.flag
pushi.e 1
pop.v.i self.con
pushglb.v global.plot
pushi.e 198
cmp.i.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e 0
pop.v.i self.follow
pushi.e 9999
pop.v.i self.nowx

:[end]