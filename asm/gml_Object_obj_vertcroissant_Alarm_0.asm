.localvar 0 arguments

:[0]
pushi.e 364
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e 364
pop.v.i self.op
push.v self.op
conv.v.i
push.v [stacktop]self.yzero
push.v self.op
conv.v.i
push.v [stacktop]self.yamt
pushi.e 1
add.i.v
push.v self.op
conv.v.i
push.v [stacktop]self.yspace
mul.v.v
add.v.v
pop.v.v self.y
push.v self.speedfactor
neg.v
pop.v.v self.vspeed
b [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
pushi.e 1
pop.v.i self.visible

:[end]