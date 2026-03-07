.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_depth(argc=5)
popz.v
push.v self.fun
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 776
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[2]
push.v 776.image_index
pop.v.v self.image_index
b [end]

:[3]
pushi.e 0
pop.v.i self.myinteract
push.v self.speed
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed

:[5]
push.v self.speed
pushi.e 0
cmp.i.v GT
bf [end]

:[6]
push.d 0.2
pop.v.d self.image_speed

:[end]