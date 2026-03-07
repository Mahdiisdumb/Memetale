.localvar 0 arguments

:[0]
pushi.e 5
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.con
pushglb.v global.plot
pushi.e 145
cmp.i.v GT
bt [2]

:[1]
pushi.e -5
pushi.e 402
push.v [array]global.flag
pushi.e 0
cmp.i.v NEQ
b [3]

:[2]
push.e 1

:[3]
bf [end]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[end]