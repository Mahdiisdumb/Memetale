.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.doak
pushglb.v global.msc
pushi.e 1
conv.i.v
call.i script_execute(argc=2)
popz.v
call.i event_inherited(argc=0)
popz.v

:[end]