.localvar 0 arguments

:[0]
push.d 0.25
pop.v.d self.image_speed
pushi.e 30
pushi.e 60
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
add.v.i
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]