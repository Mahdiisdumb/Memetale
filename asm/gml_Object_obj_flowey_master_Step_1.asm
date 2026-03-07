.localvar 0 arguments

:[0]
push.v self.dcon
pushi.e 55
cmp.i.v EQ
bf [end]

:[1]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 323
conv.i.v
call.i room_goto(argc=1)
popz.v
exit.i

:[end]