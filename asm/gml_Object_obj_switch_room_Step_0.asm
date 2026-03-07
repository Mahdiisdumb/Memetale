.localvar 0 arguments

:[0]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.on
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
b [4]

:[3]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[4]
pushi.e 0
pop.v.i self.myinteract
pushi.e 133
conv.i.v
call.i snd_play(argc=1)
popz.v

:[end]