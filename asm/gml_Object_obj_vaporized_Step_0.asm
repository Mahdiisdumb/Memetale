.localvar 0 arguments

:[0]
push.v self.finishedreading
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
push.v self.line
pushi.e 10
cmp.i.v GT
bf [4]

:[3]
pushi.e 194
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [end]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[end]