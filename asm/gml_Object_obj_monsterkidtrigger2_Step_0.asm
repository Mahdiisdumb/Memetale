.localvar 0 arguments

:[0]
push.v self.conversation
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 0
pop.v.i self.t
pushi.e 1122
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]
pushi.e 6
pop.v.i 1485.hspeed
push.v 1576.y
push.v 1485.y
pushi.e 10
add.i.v
cmp.v.v LT
bf [5]

:[4]
pushi.e 2
pop.v.i 1485.vspeed

:[5]
pushi.e 104
pop.v.i global.plot

:[end]