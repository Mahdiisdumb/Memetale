.localvar 0 arguments

:[0]
pushi.e 1603
conv.i.v
pushi.e -10
conv.i.v
pushi.e 300
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 158
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 30
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm
pushi.e 1605
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
pushi.e 1605
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]

:[end]