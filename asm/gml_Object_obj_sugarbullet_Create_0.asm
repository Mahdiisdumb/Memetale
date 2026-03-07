.localvar 0 arguments

:[0]
push.d 0.2
pop.v.d self.size
pushi.e 2
pushi.e 2
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
pushi.e 1
pop.v.i self.idealspot
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e -4
pushi.e 1
conv.i.v
call.i random(argc=1)
sub.v.i
pop.v.v self.vspeed
push.d 0.25
push.d 0.02
conv.d.v
call.i random(argc=1)
add.v.d
pop.v.v self.gravity
push.v self.size
pop.v.v self.image_xscale
push.v self.size
pop.v.v self.image_yscale

:[end]