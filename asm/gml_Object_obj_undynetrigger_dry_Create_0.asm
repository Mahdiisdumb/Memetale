.localvar 0 arguments

:[0]
pushi.e 100
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.con
pushglb.v global.plot
pushi.e 121
cmp.i.v GT
bt [2]

:[1]
pushi.e -5
pushi.e 350
push.v [array]global.flag
pushi.e 0
cmp.i.v NEQ
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
pop.v.i self.walked

:[end]