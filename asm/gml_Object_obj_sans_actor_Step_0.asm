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
pushi.e 0
pop.v.i self.myinteract
push.v self.speed
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed

:[3]
push.v self.speed
pushi.e 0
cmp.i.v GT
bf [end]

:[4]
push.d 0.2
pop.v.d self.image_speed

:[end]