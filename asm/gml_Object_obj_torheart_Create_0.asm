.localvar 0 arguments

:[0]
pushi.e 1
pushi.e -5
pushi.e 0
pop.v.i [array]global.monster
pushi.e 1
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm
pushi.e 3
pop.v.i self.shake
pushi.e 0
pop.v.i self.image_alpha
pushi.e 0
conv.i.v
pushi.e 120
conv.i.v
call.i action_set_alarm(argc=2)
popz.v

:[end]