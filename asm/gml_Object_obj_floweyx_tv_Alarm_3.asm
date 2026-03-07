.localvar 0 arguments

:[0]
pushglb.v global.floweyhp
pushi.e 4000
cmp.i.v GT
bf [4]

:[1]
pushi.e 1591
pushenv [3]

:[2]
push.d 0.9
push.d 0.3
conv.d.v
call.i random(argc=1)
sub.v.d
pushi.e 1
conv.i.v
push.v self.sfx_oh
call.i caster_play(argc=3)
popz.v

:[3]
popenv [2]
b [end]

:[4]
pushi.e 1591
pushenv [6]

:[5]
push.d 0.9
push.d 0.2
conv.d.v
call.i random(argc=1)
sub.v.d
pushi.e 1
conv.i.v
push.v self.sfx_ted
call.i caster_play(argc=3)
popz.v

:[6]
popenv [5]

:[end]