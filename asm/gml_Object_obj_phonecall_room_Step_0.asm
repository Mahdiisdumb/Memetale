.localvar 0 arguments

:[0]
push.v self.t
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 0
pop.v.i self.exception
push.v self.exception
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
pushi.e 0
pop.v.i global.interact
pushbltn.v self.room
pushi.e 149
cmp.i.v EQ
bf [end]

:[7]
pushi.e 133
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 2
pop.v.i 1283.active
call.i instance_destroy(argc=0)
popz.v

:[end]