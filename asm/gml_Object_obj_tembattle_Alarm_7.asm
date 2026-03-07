.localvar 0 arguments

:[0]
pushglb.v global.batmusic
call.i caster_resume(argc=1)
popz.v
pushi.e 100
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pop.v.v self.mycommand
pushi.e 0
pop.v.i global.myfight
pushi.e 1
pop.v.i global.mnfight

:[end]