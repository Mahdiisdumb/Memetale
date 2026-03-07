.localvar 0 arguments

:[0]
pushi.e 200
pop.v.i global.turntimer
pushglb.v global.firingrate
pop.v.v self.firingspeed
pushi.e 0
conv.i.v
pushi.e 20
conv.i.v
call.i action_set_alarm(argc=2)
popz.v

:[end]