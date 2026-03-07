.localvar 0 arguments

:[0]
push.v self.blconwd
conv.v.i
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]
pushi.e 784
pushenv [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
popenv [3]
push.v self.blcon
conv.v.i
pushenv [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
popenv [5]
pushi.e 187
pushenv [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
popenv [7]
push.v self.mypart1
conv.v.i
pushenv [10]

:[9]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[10]
popenv [9]
pushi.e 16
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm

:[end]