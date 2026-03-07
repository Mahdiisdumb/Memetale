.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
push.v self.maxnum
cmp.v.v LT
bf [end]

:[2]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.glove
call.i instance_exists(argc=1)
conv.v.b
bf [6]

:[3]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.glove
conv.v.i
pushenv [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
popenv [4]

:[6]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[end]