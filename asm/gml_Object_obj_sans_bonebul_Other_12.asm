.localvar 0 arguments

:[0]
push.v self.type
pushi.e 1
cmp.i.v NEQ
bf [2]

:[1]
pushi.e 7
conv.i.v
call.i event_user(argc=1)
popz.v

:[2]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
push.v 744.xprevious
push.v 744.x
sub.v.v
call.i abs(argc=1)
push.d 0.01
cmp.d.v GT
bt [5]

:[4]
push.v 744.yprevious
push.v 744.y
sub.v.v
call.i abs(argc=1)
push.d 0.01
cmp.d.v GT
b [6]

:[5]
push.e 1

:[6]
bf [end]

:[7]
pushi.e 7
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]