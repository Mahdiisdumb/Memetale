.localvar 0 arguments

:[0]
push.v self.st
conv.v.i
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]
push.v self.vol
pushglb.v global.currentsong
call.i caster_set_volume(argc=2)
popz.v
pushi.e 0
pop.v.i global.interact

:[end]