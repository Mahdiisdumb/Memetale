.localvar 0 arguments

:[0]
push.v self.x
push.v 744.x
pushi.e 400
add.i.v
cmp.v.v GT
bt [2]

:[1]
push.v self.x
push.v 744.x
pushi.e 400
sub.i.v
cmp.v.v LT
b [3]

:[2]
push.e 1

:[3]
bf [end]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[end]