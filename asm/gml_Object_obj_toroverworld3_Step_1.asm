.localvar 0 arguments

:[0]
pushi.e 117
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.depth
pushi.e 50
add.i.v
pop.v.v self.depth

:[end]