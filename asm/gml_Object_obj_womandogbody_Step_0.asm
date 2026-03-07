.localvar 0 arguments

:[0]
pushi.e 242
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.d 0.125
pop.v.d self.image_speed
push.v 242.image_index
pop.v.v self.image_index
b [3]

:[2]
pushi.e 0
pop.v.i self.image_speed

:[3]
push.v self.image_index
pushi.e 0
cmp.i.v EQ
bf [end]

:[4]
push.v self.depth
pushi.e 10
cmp.i.v EQ
bf [6]

:[5]
pushi.e 9
pop.v.i self.depth
b [end]

:[6]
pushi.e 10
pop.v.i self.depth

:[end]