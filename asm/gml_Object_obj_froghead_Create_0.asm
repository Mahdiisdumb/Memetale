.localvar 0 arguments

:[0]
push.d 0.02
pop.v.d self.image_speed
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.d 0.5
conv.d.v
pushi.e 43
conv.i.v
call.i path_start(argc=4)
popz.v

:[end]