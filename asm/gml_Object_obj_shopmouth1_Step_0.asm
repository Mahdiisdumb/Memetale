.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.d
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[1]
push.v 784.halt
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1
pop.v.i self.d
push.d 0.2
pop.v.d self.image_speed

:[3]
push.v self.d
pushi.e 0
cmp.i.v EQ
bf [end]

:[4]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index

:[end]