.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 7
cmp.i.v LT
bf [end]

:[2]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.part
conv.v.i
pushenv [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
popenv [3]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[end]