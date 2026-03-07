.localvar 0 arguments

:[0]
push.v self.sing
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.sing
pushi.e 12
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.offsing
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 75
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[6]
push.v self.offsing
pushi.e 0
cmp.i.v EQ
bf [end]

:[7]
pushi.e 75
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]