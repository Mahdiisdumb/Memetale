.localvar 0 arguments

:[0]
pushglb.v global.turntimer
pushi.e 0
cmp.i.v LT
bf [2]

:[1]
push.v self.active
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[end]