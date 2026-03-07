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
call.i scr_murderlv(argc=0)
pushi.e 2
cmp.i.v GTE
bf [2]

:[1]
push.d 0.6
conv.d.v
pushglb.v global.currentsong
call.i caster_set_pitch(argc=2)
popz.v

:[2]
pushi.e 0
pop.v.i global.interact

:[end]