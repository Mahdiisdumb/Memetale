.localvar 0 arguments

:[0]
pushi.e 2378
pop.v.i self.sprite_index
pushi.e 3
pop.v.i 139.messed
push.v self.mywriter
conv.v.i
push.v [stacktop]self.originalstring
call.i string_length(argc=1)
push.v self.mywriter
conv.v.i
pop.v.v [stacktop]self.stringpos
pushi.e -3
conv.i.v
call.i caster_stop(argc=1)
popz.v
push.d 0.84
conv.d.v
pushi.e 1
conv.i.v
push.v self.stuck
call.i caster_loop(argc=3)
popz.v
pushi.e 170
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[end]