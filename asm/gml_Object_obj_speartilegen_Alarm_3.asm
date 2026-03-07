.localvar 0 arguments

:[0]
push.v self.tums
pushi.e -1
pushi.e 3
pop.v.v [array]self.alarm
pushi.e 1050
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1050
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1050
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1050
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1050
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1050
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1050
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1050
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.g
pushi.e 1
push.v self.g
conv.v.i
pop.v.i [stacktop]self.duty
push.v self.tums
pushi.e 35
cmp.i.v GT
bf [2]

:[1]
push.v self.tums
push.d 0.75
sub.d.v
pop.v.v self.tums

:[2]
push.v self.tums
pushi.e 35
cmp.i.v LTE
bf [4]

:[3]
push.v self.tums
pushi.e 28
cmp.i.v GT
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
push.v self.tums
push.d 0.25
sub.d.v
pop.v.v self.tums

:[7]
push.v self.tums
pushi.e 15
cmp.i.v GT
bf [9]

:[8]
push.v self.tums
pushi.e 28
cmp.i.v LTE
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
push.v self.tums
push.d 0.5
sub.d.v
pop.v.v self.tums

:[12]
pushi.e 13
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.tums
pushi.e 15
cmp.i.v LTE
bf [end]

:[13]
pushi.e 115
conv.i.v
call.i snd_play(argc=1)
popz.v
pushbltn.v self.room
pushi.e 111
cmp.i.v EQ
bf [end]

:[14]
pushi.e 1
pushi.e -5
pushi.e 285
pop.v.i [array]global.flag

:[end]