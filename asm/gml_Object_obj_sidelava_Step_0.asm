.localvar 0 arguments

:[0]
push.v self.x
pushi.e 100
cmp.i.v LT
bt [2]

:[1]
push.v self.x
pushi.e 500
cmp.i.v GT
b [3]

:[2]
push.e 1

:[3]
bf [end]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[end]