.localvar 0 arguments

:[0]
push.v self.pause
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 336
conv.i.v
push.v self.y
pushi.e 4
add.i.v
push.v self.x
pushi.e 50
add.i.v
call.i instance_create(argc=3)
popz.v

:[2]
pushi.e 15
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]