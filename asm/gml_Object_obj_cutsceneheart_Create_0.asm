.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.con
push.s "music/rotate.ogg"@2703
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.rotatenoise
push.s "music/create.ogg"@2708
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.createnoise
pushi.e 0
pop.v.i self.image_speed

:[end]