.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.x
push.v self.siner
push.v self.dspeed
mul.v.v
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
push.v self.detune
mul.v.v
add.v.v
pop.v.v self.x

:[end]