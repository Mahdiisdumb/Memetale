.localvar 0 arguments

:[0]
pushglb.v global.batmusic
call.i caster_resume(argc=1)
popz.v
pushi.e 260
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v 260.emotion
pushi.e 2
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1
pop.v.i 260.emotion

:[3]
pushi.e 260
pushenv [5]

:[4]
pushi.e -1
pushi.e 0
push.v [array]self.longnote
call.i caster_stop(argc=1)
popz.v
pushi.e -1
pushi.e 1
push.v [array]self.longnote
call.i caster_stop(argc=1)
popz.v

:[5]
popenv [4]

:[end]