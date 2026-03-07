.localvar 0 arguments

:[0]
pushi.e 16
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
push.v self.sfx
call.i caster_stop(argc=1)
popz.v
pushi.e 1
push.d 0.2
conv.d.v
call.i random(argc=1)
add.v.i
push.d 0.3
conv.d.v
call.i random(argc=1)
sub.v.v
push.d 0.7
conv.d.v
push.v self.sfx
call.i caster_play(argc=3)
popz.v

:[end]