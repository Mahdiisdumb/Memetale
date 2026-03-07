.localvar 0 arguments

:[0]
pushi.e 8
conv.i.v
push.s "000000001"@47979
conv.s.v
call.i action_move(argc=2)
popz.v
pushi.e 0
conv.i.v
pushi.e 60
conv.i.v
call.i action_set_alarm(argc=2)
popz.v
push.d 0.8
conv.d.v
call.i action_set_friction(argc=1)
popz.v

:[end]