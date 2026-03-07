.localvar 0 arguments

:[0]
pushi.e 544
conv.i.v
push.v self.y
pushi.e 16
add.i.v
push.v self.x
pushi.e 24
add.i.v
call.i instance_create(argc=3)
pop.v.v self.missle
pushi.e 7
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm

:[end]