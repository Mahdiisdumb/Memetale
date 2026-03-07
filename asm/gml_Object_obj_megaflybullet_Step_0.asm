.localvar 0 arguments

:[0]
push.v self.sineron
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.x
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.v
pop.v.v self.x
push.v self.y
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.y

:[end]