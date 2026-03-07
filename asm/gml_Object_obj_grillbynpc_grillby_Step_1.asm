.localvar 0 arguments

:[0]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v self.myinteract
pushi.e 3
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [7]

:[4]
push.v 784.stringno
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
push.d 0.2
pop.v.d 1467.image_speed

:[6]
b [end]

:[7]
pushi.e 1467
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[8]
push.v 1467.myinteract
pushi.e 3
cmp.i.v NEQ
bf [end]

:[9]
pushi.e 0
pop.v.i 1467.image_speed
pushi.e 0
pop.v.i 1467.image_index

:[end]