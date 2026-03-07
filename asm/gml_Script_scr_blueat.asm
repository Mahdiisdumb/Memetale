.localvar 0 arguments

:[0]
push.v 744.xprevious
push.v 744.x
sub.v.v
call.i abs(argc=1)
push.d 0.01
cmp.d.v GT
bt [2]

:[1]
push.v 744.yprevious
push.v 744.y
sub.v.v
call.i abs(argc=1)
push.d 0.01
cmp.d.v GT
b [3]

:[2]
push.e 1

:[3]
bf [6]

:[4]
pushi.e 1
conv.i.v
ret.v

:[5]
b [end]

:[6]
pushi.e 0
conv.i.v
ret.v

:[end]