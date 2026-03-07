.localvar 0 arguments

:[0]
pushi.e 1579
pushenv [3]

:[1]
push.v self.clapper
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
pushi.e 50
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm
pushi.e 35
pushi.e -1
pushi.e 8
pop.v.i [array]self.alarm
pushi.e 106
conv.i.v
call.i snd_play(argc=1)
popz.v

:[end]