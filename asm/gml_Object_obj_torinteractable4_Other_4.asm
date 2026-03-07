.localvar 0 arguments

:[0]
pushglb.v global.plot
push.d 5.4
cmp.d.v LT
bt [2]

:[1]
pushglb.v global.plot
push.d 6.5
cmp.d.v GT
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
pushi.e 270
pop.v.i self.direction

:[end]