.localvar 0 arguments

:[0]
push.v self.on
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 1
pop.v.i self.on
b [3]

:[2]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 0
pop.v.i self.on

:[3]
push.v self.typeno
push.v self.typeamt
cmp.v.v LT
bf [5]

:[4]
push.v self.flashtimer
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm
push.v self.flash
call.i caster_stop(argc=1)
popz.v
push.d 1.05
conv.d.v
push.d 0.5
conv.d.v
push.v self.flash
call.i caster_play(argc=3)
popz.v
b [6]

:[5]
push.v self.flash
call.i caster_stop(argc=1)
popz.v
push.d 0.8
conv.d.v
push.d 0.6
conv.d.v
push.v self.flash
call.i caster_play(argc=3)
popz.v
push.v self.flashtimer
pushi.e 15
add.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.alarm

:[6]
push.v self.typeno
pushi.e 1
add.i.v
pop.v.v self.typeno

:[end]