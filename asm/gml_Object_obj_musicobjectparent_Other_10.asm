.localvar 0 arguments

:[0]
pushglb.v global.currentsong
call.i caster_is_playing(argc=1)
pushi.e 1
cmp.i.v NEQ
bf [2]

:[1]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
push.s "music/reunited.ogg"@2782
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
call.i instance_destroy(argc=0)
popz.v
exit.i

:[end]