.localvar 0 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
push.v self.num
cmp.v.v LT
bf [end]

:[3]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.child
call.i instance_exists(argc=1)
conv.v.b
bf [7]

:[4]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.child
conv.v.i
pushenv [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
popenv [5]

:[7]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[end]