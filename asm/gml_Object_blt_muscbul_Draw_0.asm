.localvar 0 arguments

:[0]
call.i draw_self_border(argc=0)
popz.v
push.v self.y
pushi.e 150
cmp.i.v LT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e 696
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[3]
push.v self.xs
push.v 696.siner
pushi.e 20
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
call.i round(argc=1)
add.v.v
pop.v.v self.x

:[end]