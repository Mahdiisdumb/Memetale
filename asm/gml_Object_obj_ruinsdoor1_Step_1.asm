.localvar 0 arguments

:[0]
pushbltn.v self.room
pushi.e 7
cmp.i.v EQ
bf [end]

:[1]
pushi.e 927
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[2]
push.v 927.on
pushi.e 2
cmp.i.v EQ
bt [4]

:[3]
pushglb.v global.plot
pushi.e 2
cmp.i.v GT
b [5]

:[4]
push.e 1

:[5]
bf [end]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[end]