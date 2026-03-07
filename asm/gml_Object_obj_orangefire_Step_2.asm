.localvar 0 arguments

:[0]
push.v self.parent
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[2]
push.v self.parent
conv.v.i
push.v [stacktop]self.x
push.v self.rememberx
add.v.v
pop.v.v self.x
push.v self.parent
conv.v.i
push.v [stacktop]self.y
push.v self.remembery
add.v.v
pop.v.v self.y
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
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.x
push.v self.y
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.y

:[end]