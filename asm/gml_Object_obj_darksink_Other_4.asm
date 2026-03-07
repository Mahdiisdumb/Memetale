.localvar 0 arguments

:[0]
push.s "music/ambientwater.ogg"@2645
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.water

:[end]