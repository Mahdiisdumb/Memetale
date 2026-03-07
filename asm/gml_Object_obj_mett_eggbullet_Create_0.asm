.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.insanity
push.d 0.4
pop.v.d self.image_alpha
pushi.e 1
conv.i.v
call.i random(argc=1)
neg.v
pop.v.v self.vspeed
pushi.e 3
conv.i.v
call.i random(argc=1)
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
mul.v.v
pop.v.v self.hspeed
push.d 0.05
pop.v.d self.friction
push.d 0.2
pop.v.d self.gravity
pushi.e 1
pushi.e 5
conv.i.v
call.i random(argc=1)
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
mul.v.v
add.v.i
pop.v.v self.ang
pushi.e 0
pop.v.i self.col

:[end]