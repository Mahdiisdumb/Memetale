.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.tt
push.v self.myinteract
pushi.e 3
cmp.i.v EQ
bf [6]

:[1]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [5]

:[2]
push.d 0.2
pop.v.d self.image_speed
push.v 784.halt
pushi.e 0
cmp.i.v NEQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.tt

:[4]
b [6]

:[5]
pushi.e 1
pop.v.i self.tt

:[6]
push.v self.tt
pushi.e 1
cmp.i.v EQ
bf [end]

:[7]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index

:[end]