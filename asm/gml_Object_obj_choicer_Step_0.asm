.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 10
conv.i.v
pushi.e 7
conv.i.v
call.i event_perform(argc=2)
popz.v

:[end]