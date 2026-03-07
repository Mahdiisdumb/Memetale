.localvar 0 arguments

:[0]
pushi.e 51
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 288
pushenv [2]

:[1]
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v

:[2]
popenv [1]
pushi.e 289
pushi.e 5
push.v [array]self.alarm
pushi.e 2
cmp.i.v LT
bf [6]

:[3]
pushi.e 289
pushenv [5]

:[4]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[5]
popenv [4]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[end]