.localvar 0 arguments

:[0]
pushi.e 784
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]
pushi.e 541
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
pushi.e 0
pop.v.i self.talked
push.v self.coherent
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
push.v self.dnoise
call.i caster_stop(argc=1)
popz.v

:[8]
pushi.e 2
pop.v.i global.mnfight
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

:[end]