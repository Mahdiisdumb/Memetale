.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.x
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.v
pop.v.v self.x
push.v self.y
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i cos(argc=1)
add.v.v
pop.v.v self.y

:[end]