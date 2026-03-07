.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.on
pushi.e 117
conv.i.v
call.i script_execute(argc=1)
popz.v
pushglb.v global.plot
push.d 4.5
cmp.d.v GT
bf [end]

:[1]
pushi.e 1
pop.v.i self.on

:[end]