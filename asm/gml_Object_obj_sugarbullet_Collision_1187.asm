.localvar 0 arguments

:[0]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
push.v other.id
conv.v.i
pushenv [3]

:[1]
push.v self.eligible
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[3]
popenv [1]
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v

:[end]