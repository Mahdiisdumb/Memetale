.localvar 0 arguments

:[0]
pushi.e 1592
pushenv [2]

:[1]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v

:[2]
popenv [1]
pushi.e 1587
pushenv [4]

:[3]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v

:[4]
popenv [3]
pushi.e 1644
pushenv [6]

:[5]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v

:[6]
popenv [5]
pushi.e 1643
pushenv [8]

:[7]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v

:[8]
popenv [7]
pushi.e 1642
pushenv [10]

:[9]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v

:[10]
popenv [9]
pushi.e 1587
pushenv [12]

:[11]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v

:[12]
popenv [11]
push.v self.save_hp
pop.v.v global.my_hp
push.v self.save_inv
pop.v.v global.my_inv
pushi.e -1
pop.v.i self.savetimer
pushi.e 20
pop.v.i self.loadtimer
pushi.e 2
pop.v.i self.fileset
push.v self.mustype
pushi.e 3
cmp.i.v EQ
bf [end]

:[13]
pushi.e 0
pop.v.i self.mused
push.v self.mus_repeat1
call.i caster_is_playing(argc=1)
conv.v.b
bf [15]

:[14]
push.v self.mused
pushi.e 0
cmp.i.v EQ
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
pushi.e 1
pop.v.i self.mused
push.v self.mus_repeat1
call.i caster_stop(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.mus_repeat2
call.i caster_loop(argc=3)
popz.v

:[18]
push.v self.mus_repeat2
call.i caster_is_playing(argc=1)
conv.v.b
bf [20]

:[19]
push.v self.mused
pushi.e 0
cmp.i.v EQ
b [21]

:[20]
push.e 0

:[21]
bf [end]

:[22]
pushi.e 1
pop.v.i self.mused
push.v self.mus_repeat2
call.i caster_stop(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.mus_repeat1
call.i caster_loop(argc=3)
popz.v

:[end]