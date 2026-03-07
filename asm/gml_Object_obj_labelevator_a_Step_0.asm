.localvar 0 arguments

:[0]
push.v self.blacktime
pushi.e 0
cmp.i.v EQ
bf [6]

:[1]
push.v self.w
push.d 1.5
cmp.d.v GT
bf [6]

:[2]
push.v self.hyperboys
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.v self.sfx
call.i caster_stop(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.expl
call.i caster_play(argc=3)
popz.v
pushi.e 1
pop.v.i self.blacktime

:[4]
push.v self.hyperboys
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 24
pop.v.i global.entrance
pushi.e 0
pop.v.i global.interact
pushi.e 0
pushi.e -5
pushi.e 480
pop.v.i [array]global.flag
pushi.e 149
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 216
conv.i.v
call.i room_goto(argc=1)
popz.v

:[6]
push.v self.blacktime
pushi.e 1
cmp.i.v EQ
bf [end]

:[7]
push.v self.w
push.d 2.6
cmp.d.v GT
bf [end]

:[8]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 24
pop.v.i global.entrance
pushi.e 243
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]