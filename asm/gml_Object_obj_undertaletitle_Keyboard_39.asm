.localvar 0 arguments

:[0]
pushglb.v global.debug
pushi.e 999
cmp.i.v EQ
bf [end]

:[1]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushglb.v global.kills
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [end]

:[5]
push.v self.rot
pushi.e 1
add.i.v
pop.v.v self.rot

:[end]