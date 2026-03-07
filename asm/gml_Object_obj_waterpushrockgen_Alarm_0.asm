.localvar 0 arguments

:[0]
pushglb.v global.interact
pushi.e 5
cmp.i.v NEQ
bf [10]

:[1]
pushbltn.v self.room
pushi.e 84
cmp.i.v EQ
bf [3]

:[2]
push.v self.rate_time
pushi.e 85
cmp.i.v GT
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 0
pop.v.i self.rate_time
pushi.e 0
pop.v.i self.i
pushi.e 1139
conv.i.v
pushi.e -20
push.v self.i
pushi.e 16
mul.i.v
sub.v.i
pushi.e 235
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1139
conv.i.v
pushi.e -20
push.v self.i
pushi.e 16
mul.i.v
sub.v.i
pushi.e 325
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1139
conv.i.v
pushi.e -260
push.v self.i
pushi.e 16
mul.i.v
sub.v.i
pushi.e 255
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1139
conv.i.v
pushi.e -260
push.v self.i
pushi.e 16
mul.i.v
sub.v.i
pushi.e 345
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1139
conv.i.v
pushi.e -440
push.v self.i
pushi.e 16
mul.i.v
sub.v.i
pushi.e 235
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1139
conv.i.v
pushi.e -460
push.v self.i
pushi.e 16
mul.i.v
sub.v.i
pushi.e 255
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1139
conv.i.v
pushi.e -480
push.v self.i
pushi.e 16
mul.i.v
sub.v.i
pushi.e 325
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1139
conv.i.v
pushi.e -500
push.v self.i
pushi.e 16
mul.i.v
sub.v.i
pushi.e 345
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 90
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
b [7]

:[6]
pushi.e 5
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[7]
pushbltn.v self.room
pushi.e 91
cmp.i.v EQ
bf [9]

:[8]
pushi.e 1139
conv.i.v
pushi.e -10
conv.i.v
pushi.e 100
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1139
conv.i.v
pushi.e -10
conv.i.v
pushi.e 220
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1139
conv.i.v
pushi.e -40
conv.i.v
pushi.e 100
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1139
conv.i.v
pushi.e -40
conv.i.v
pushi.e 220
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1139
conv.i.v
pushi.e -80
conv.i.v
pushi.e 100
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1139
conv.i.v
pushi.e -80
conv.i.v
pushi.e 220
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 40
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[9]
b [end]

:[10]
pushi.e 5
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]