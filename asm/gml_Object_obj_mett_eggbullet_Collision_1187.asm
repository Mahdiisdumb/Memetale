.localvar 0 arguments

:[0]
push.v self.col
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.v other.id
conv.v.i
pushenv [4]

:[2]
push.v self.eligible
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[4]
popenv [2]
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]