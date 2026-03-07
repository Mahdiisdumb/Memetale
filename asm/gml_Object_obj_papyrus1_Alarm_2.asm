.localvar 0 arguments

:[0]
pushi.e 37
pop.v.i global.plot
push.d 0.95
conv.d.v
pushi.e 1
conv.i.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
pushi.e 0
pop.v.i global.interact

:[end]