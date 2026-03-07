.localvar 0 arguments

:[0]
pushi.e 5
conv.i.v
push.s "000001000"@49796
conv.s.v
call.i action_move(argc=2)
popz.v
push.d 0.15
conv.d.v
pushi.e 270
conv.i.v
call.i action_set_gravity(argc=2)
popz.v
push.d 0.1
conv.d.v
call.i action_set_friction(argc=1)
popz.v
pushi.e 1
pop.v.i self.dmg

:[end]