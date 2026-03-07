.localvar 0 arguments

:[0]
push.v self.mb
conv.v.i
pushenv [2]

:[1]
pushi.e 7
conv.i.v
call.i event_user(argc=1)
popz.v

:[2]
popenv [1]
push.v self.num
pushi.e 1
sub.i.v
push.v self.mb
conv.v.i
pop.v.v [stacktop]self.num
pushi.e 8
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]