.localvar 0 arguments

:[0]
push.d 0.5
conv.d.v
call.i random(argc=1)
push.d 0.2
add.d.v
pushi.e 90
conv.i.v
call.i action_set_gravity(argc=2)
popz.v
pushi.e 4
conv.i.v
call.i random(argc=1)
pushi.e 2
sub.i.v
call.i action_set_hspeed(argc=1)
popz.v

:[end]