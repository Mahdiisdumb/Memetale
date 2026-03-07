.localvar 0 arguments

:[0]
push.v self.snooze
pushi.e 1
add.i.v
pop.v.v self.snooze
pushi.e 1295
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pushi.e -1
push.v self.snooze
conv.v.i
pop.v.v [array]self.zz
push.v self.snooze
pushi.e 1
cmp.i.v GT
bf [2]

:[1]
pushi.e -1
push.v self.snooze
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.zz
conv.v.i
push.v [stacktop]self.hspeed
pushi.e -1
push.v self.snooze
conv.v.i
push.v [array]self.zz
conv.v.i
pop.v.v [stacktop]self.hspeed

:[2]
push.v self.snooze
pushi.e 3
cmp.i.v LT
bf [end]

:[3]
pushi.e 20
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[end]