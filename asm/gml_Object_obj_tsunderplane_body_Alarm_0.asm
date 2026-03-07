.localvar 0 arguments

:[0]
push.v self.fall
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 329
conv.i.v
push.v self.y
pushi.e 56
add.i.v
push.v self.x
pushi.e 46
add.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 10
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]