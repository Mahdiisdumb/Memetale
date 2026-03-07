.localvar 0 arguments

:[0]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
pushi.e 1
pop.v.i self.curvol
pushi.e 1
pop.v.i self.songplaying

:[end]