.localvar 0 arguments

:[0]
pushi.e 1701
conv.i.v
push.v self.shyren
conv.v.i
push.v [stacktop]self.y
pushi.e 11
add.i.v
push.v self.shyren
conv.v.i
push.v [stacktop]self.x
pushi.e 11
add.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 8
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[end]