.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 433
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1346
conv.i.v
pushi.e 116
conv.i.v
pushi.e 172
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.interacter
pushi.e 2
conv.i.v
pushi.e 116
conv.i.v
pushi.e 172
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.solider
b [3]

:[2]
pushi.e 811
conv.i.v
pushi.e 112
conv.i.v
pushi.e 172
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.doorer

:[3]
pushi.e 0
pop.v.i self.con
call.i scr_depth(argc=0)
popz.v

:[end]