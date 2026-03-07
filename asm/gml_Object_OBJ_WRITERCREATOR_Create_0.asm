.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i global.typer
pushi.e 2
pop.v.i global.msc
pushi.e 784
conv.i.v
pushi.e 176
conv.i.v
pushi.e 240
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.writerid
pushi.e 2
pop.v.i global.typer
pushi.e 1
pop.v.i global.msc
pushi.e 784
conv.i.v
pushi.e 176
conv.i.v
pushi.e 30
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.writerid2
pushi.e 3
pop.v.i global.typer
pushi.e 3
pop.v.i global.msc
pushi.e 784
conv.i.v
pushi.e 176
conv.i.v
pushi.e 448
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.writerid2
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i action_set_alarm(argc=2)
popz.v

:[end]