.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
push.v self.num
cmp.v.v LT
bf [3]

:[2]
pushi.e 456
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.child
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushi.e 1
pop.v.i self.active

:[end]