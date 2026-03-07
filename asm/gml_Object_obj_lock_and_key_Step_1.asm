.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_depth(argc=5)
popz.v
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [3]

:[1]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e -5
pushi.e 454
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [end]

:[5]
pushi.e 3
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
push.v self.salad
conv.v.i
pushenv [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
popenv [6]
call.i instance_destroy(argc=0)
popz.v

:[end]