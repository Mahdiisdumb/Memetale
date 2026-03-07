.localvar 0 arguments

:[0]
pushi.e 1482
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[2]
push.v self.myinteract
pushi.e 3
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [8]

:[5]
push.v 784.stringno
pushi.e 3
cmp.i.v EQ
bf [7]

:[6]
push.d 0.2
pop.v.d 1482.image_speed

:[7]
b [end]

:[8]
push.v 1482.myinteract
pushi.e 3
cmp.i.v NEQ
bf [end]

:[9]
pushi.e 0
pop.v.i 1482.image_speed
pushi.e 0
pop.v.i 1482.image_index

:[end]