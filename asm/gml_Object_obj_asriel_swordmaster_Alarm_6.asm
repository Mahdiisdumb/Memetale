.localvar 0 arguments

:[0]
pushi.e 592
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]
pushi.e 10
push.v self.king
conv.v.i
pop.v.i [stacktop]self.bladecon
call.i instance_destroy(argc=0)
popz.v

:[end]