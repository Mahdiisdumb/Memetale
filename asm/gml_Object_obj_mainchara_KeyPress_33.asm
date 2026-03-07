.localvar 0 arguments

:[0]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1390
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 1390
pushenv [6]

:[5]
push.v self.steps
pushi.e 100
add.i.v
pop.v.v self.steps

:[6]
popenv [5]

:[end]