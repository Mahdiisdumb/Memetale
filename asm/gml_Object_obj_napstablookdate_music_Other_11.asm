.localvar 0 arguments

:[0]
push.v self.spoopy
call.i caster_free(argc=1)
popz.v
push.v self.spoopywave
call.i caster_free(argc=1)
popz.v
push.v self.spoopyholiday
call.i caster_free(argc=1)
popz.v
push.v self.napstachords
call.i caster_free(argc=1)
popz.v
pushi.e 0
pushi.e -5
pushi.e 94
pop.v.i [array]global.flag
call.i instance_destroy(argc=0)
popz.v

:[end]