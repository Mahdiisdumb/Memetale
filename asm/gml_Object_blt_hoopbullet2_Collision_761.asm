.localvar 0 arguments

:[0]
pushi.e 1
conv.i.v
call.i action_set_relative(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e -6
conv.i.v
call.i action_move_to(argc=2)
popz.v
pushi.e 0
conv.i.v
call.i action_set_relative(argc=1)
popz.v
push.v self.hspeed
neg.v
call.i action_set_hspeed(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i action_set_relative(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i action_set_relative(argc=1)
popz.v

:[end]