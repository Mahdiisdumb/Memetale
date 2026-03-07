.localvar 0 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
push.v self.y
push.v self.goaly
pushi.e 60
sub.i.v
cmp.v.v GT
bf [end]

:[5]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]