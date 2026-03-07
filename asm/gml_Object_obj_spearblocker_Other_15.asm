.localvar 0 arguments

:[0]
push.v self.col2
conv.v.i
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]
pushi.e 266
pushenv [4]

:[3]
pushi.e 1
pop.v.i self.down

:[4]
popenv [3]
pushglb.v global.invc
pushi.e 1
cmp.i.v LT
bf [8]

:[5]
pushi.e 273
pushenv [7]

:[6]
push.v self.hitno
pushi.e 1
add.i.v
pop.v.v self.hitno

:[7]
popenv [6]

:[8]
pushi.e 283
pushenv [10]

:[9]
push.v self.hitno
pushi.e 1
add.i.v
pop.v.v self.hitno

:[10]
popenv [9]
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
call.i scr_damagestandard(argc=5)
popz.v

:[end]