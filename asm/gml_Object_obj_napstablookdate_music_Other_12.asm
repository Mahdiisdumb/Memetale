.localvar 0 arguments

:[0]
push.s "music/napstahouse.ogg"@2651
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong

:[end]