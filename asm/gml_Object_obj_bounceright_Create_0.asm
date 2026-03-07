.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.bounced
pushi.e -1
pop.v.i self.btime
pushi.e 0
pop.v.i self.con
pushi.e 1
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 1535
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1535
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[2]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 0
pop.v.i self.gold
pushi.e 0
pop.v.i self.goldshift
push.d 0.2
pop.v.d self.image_speed

:[end]