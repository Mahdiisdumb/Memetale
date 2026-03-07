.localvar 0 arguments

:[0]
pushi.e 4
pop.v.i self.banim
pushi.e 1
pop.v.i self.hspeed
pushi.e 10
pushi.e -1
pushi.e 8
pop.v.i [array]self.alarm
push.d 0.2
push.d 0.3
conv.d.v
call.i random(argc=1)
add.v.d
push.d 0.9
conv.d.v
push.v self.yl
call.i caster_play(argc=3)
popz.v

:[end]