.localvar 0 arguments

:[0]
push.v self.seeya_timer
pushi.e 180
cmp.i.v GTE
bf [end]

:[1]
pushi.e 47
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]