.localvar 0 arguments

:[0]
push.v self.speed
pushi.e 10
cmp.i.v GT
bf [end]

:[1]
pushi.e 513
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.s_s
push.v self.speed
pushi.e 3
conv.i.d
div.d.v
call.i floor(argc=1)
push.v self.s_s
conv.v.i
pop.v.v [stacktop]self.intensity

:[end]