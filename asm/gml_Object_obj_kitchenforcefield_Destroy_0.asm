.localvar 0 arguments

:[0]
push.v self.sold
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.solid1
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[2]
push.v self.solid1
conv.v.i
pushenv [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
popenv [3]

:[end]