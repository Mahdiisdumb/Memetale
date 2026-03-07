.localvar 0 arguments

:[0]
push.v self.active
pushi.e 1
add.i.v
pop.v.v self.active
push.v self.active
pushi.e 4
cmp.i.v GT
bf [end]

:[1]
push.v 1576.x
pushi.e 316
cmp.i.v GT
bf [4]

:[2]
push.v 1576.x
pushi.e 1166
cmp.i.v LT
bf [4]

:[3]
push.v self.fallen
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [end]

:[6]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.fallen
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]