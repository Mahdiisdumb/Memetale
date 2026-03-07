.localvar 0 arguments

:[0]
push.v self.blcon
conv.v.i
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]
pushi.e 0
pop.v.i self.talked
pushi.e 2
pop.v.i global.mnfight

:[end]