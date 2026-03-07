.localvar 0 arguments

:[0]
push.v self.broken
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1
pop.v.i self.broken
pushi.e 1
pop.v.i self.image_index
call.i instance_destroy(argc=0)
popz.v
push.v self.iii
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[2]
push.v self.iii
conv.v.i
pushenv [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
popenv [3]

:[end]