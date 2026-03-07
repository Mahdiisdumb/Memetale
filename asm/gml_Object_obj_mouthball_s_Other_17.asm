.localvar 0 arguments

:[0]
push.v self.mb
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[1]
push.v self.mb
conv.v.i
pushenv [3]

:[2]
pushi.e 7
conv.i.v
call.i event_user(argc=1)
popz.v

:[3]
popenv [2]

:[4]
pushi.e 1
pop.v.i self.dont
pushi.e 8
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]