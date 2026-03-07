.localvar 0 arguments

:[0]
push.v self.won
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushglb.v global.currentroom
call.i room_goto(argc=1)
popz.v

:[3]
push.v self.won
pushi.e 1
cmp.i.v EQ
bf [end]

:[4]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 1
cmp.i.v EQ
bf [end]

:[5]
push.v 784.halt
pushi.e 0
cmp.i.v NEQ
bf [end]

:[6]
pushglb.v global.currentroom
call.i room_goto(argc=1)
popz.v

:[end]