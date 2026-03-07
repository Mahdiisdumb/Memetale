.localvar 0 arguments

:[0]
push.v self.con
pushi.e 107
cmp.i.v EQ
bf [end]

:[1]
pushi.e 322
conv.i.v
call.i room_goto(argc=1)
popz.v
exit.i

:[end]