.localvar 0 arguments

:[0]
pushi.e 1591
pushenv [2]

:[1]
push.d 0.95
push.d 0.2
conv.d.v
call.i random(argc=1)
add.v.d
pushi.e 1
conv.i.v
push.v self.sfx_oh
call.i caster_play(argc=3)
popz.v

:[2]
popenv [1]

:[end]