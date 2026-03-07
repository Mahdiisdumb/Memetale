.localvar 0 arguments

:[0]
pushi.e 3
pop.v.i global.interact
pushi.e 40
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 1
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.heartdraw
pushi.e 0
pop.v.i self.on
pushi.e 0
pop.v.i self.clap
pushi.e -600
pop.v.i self.depp
pushi.e 147
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[end]