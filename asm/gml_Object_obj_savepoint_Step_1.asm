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
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.myinteract
pushi.e 4
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushglb.v global.plot
pushi.e 2
cmp.i.v LT
bf [6]

:[5]
pushi.e 2
pop.v.i global.plot

:[6]
pushi.e 5
pop.v.i global.interact
pushi.e 4
pop.v.i global.menuno
pushi.e 5
pop.v.i self.myinteract

:[end]