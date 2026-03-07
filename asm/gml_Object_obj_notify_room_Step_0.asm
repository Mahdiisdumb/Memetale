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
call.i instance_destroy(argc=0)
popz.v
pushi.e 0
pop.v.i global.interact
push.v self.donotcall
pushi.e 0
cmp.i.v EQ
bf [end]

:[5]
push.v self.mb
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[6]
push.v self.mb
conv.v.i
pushenv [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
popenv [7]

:[end]