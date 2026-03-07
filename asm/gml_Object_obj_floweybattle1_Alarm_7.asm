.localvar 0 arguments

:[0]
pushi.e 197
pop.v.i self.sprite_index
pushi.e 188
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[1]
pushi.e 188
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]

:[4]
pushi.e 30
pushi.e -1
pushi.e 8
pop.v.i [array]self.alarm
push.v self.floweysong
call.i caster_stop(argc=1)
popz.v
push.v self.floweysong
call.i caster_free(argc=1)
popz.v

:[end]