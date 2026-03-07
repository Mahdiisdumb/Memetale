.localvar 0 arguments

:[0]
pushglb.v global.plot
pushi.e 126
cmp.i.v GT
bt [2]

:[1]
call.i scr_murderlv(argc=0)
pushi.e 12
cmp.i.v GTE
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
pushi.e 0
pop.v.i self.con
pushi.e 7
pop.v.i self.image_yscale

:[end]