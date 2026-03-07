.localvar 0 arguments

:[0]
push.v self.xx
pushi.e 1
add.i.v
pop.v.v self.xx
pushi.e 672
conv.i.v
push.v self.y
pushi.e 13
add.i.v
push.v self.x
pushi.e 13
add.i.v
call.i instance_create(argc=3)
popz.v
push.v self.xx
pushi.e 3
cmp.i.v LT
bf [end]

:[1]
pushi.e 8
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm

:[end]