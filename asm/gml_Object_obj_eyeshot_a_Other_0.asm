.localvar 0 arguments

:[0]
push.v self.memorymode
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
push.v self.memorymode
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.visible

:[end]