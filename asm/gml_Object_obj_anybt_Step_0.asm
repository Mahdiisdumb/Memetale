.localvar 0 arguments

:[0]
push.v self.on
pushi.e 0
cmp.i.v LTE
bf [2]

:[1]
pushi.e 0
pop.v.i self.image_index

:[2]
push.v self.on
pushi.e 0
cmp.i.v GT
bf [4]

:[3]
pushi.e 1
pop.v.i self.image_index

:[4]
push.v self.on
pushi.e 1
sub.i.v
pop.v.v self.on
push.v self.on
pushi.e 0
cmp.i.v GT
bf [end]

:[5]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [end]

:[6]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]