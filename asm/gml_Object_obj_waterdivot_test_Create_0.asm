.localvar 0 arguments

:[0]
push.d 0.15
push.d 0.05
conv.d.v
call.i random(argc=1)
add.v.d
pop.v.v self.image_speed
pushi.e 20
conv.i.v
call.i random(argc=1)
pop.v.v self.siner
push.d 0.2
pop.v.d self.sinerfactor
push.d 1.5
pop.v.d self.hspeed
pushi.e 0
pop.v.i self.moved

:[end]