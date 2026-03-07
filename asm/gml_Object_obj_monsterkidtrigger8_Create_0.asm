.localvar 0 arguments

:[0]
pushglb.v global.plot
pushi.e 119
cmp.i.v GT
bt [2]

:[1]
pushi.e -5
pushi.e 98
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[5]
pushi.e 1
pop.v.i self.con

:[end]