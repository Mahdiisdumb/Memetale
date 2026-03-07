.localvar 0 arguments

:[0]
pushglb.v global.firingrate
pop.v.v self.firingspeed
pushi.e 0
pop.v.i self.bullettype
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i action_set_alarm(argc=2)
popz.v

:[end]