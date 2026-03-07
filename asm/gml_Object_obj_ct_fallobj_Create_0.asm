.localvar 0 arguments

:[0]
pushbltn.v self.room_width
call.i random(argc=1)
pop.v.v self.x
push.d 0.02
pop.v.d self.gravity
pushi.e 1
pop.v.i self.vspeed
push.d 0.5
pop.v.d self.image_alpha
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pushi.e 2
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.i
mul.v.v
pop.v.v self.rotspeed
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pushi.e 1
pushi.e 1
conv.i.v
call.i random(argc=1)
add.v.i
mul.v.v
pop.v.v self.hspeed
pushi.e 0
pop.v.i self.siner
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pushi.e 1
conv.i.v
call.i random(argc=1)
mul.v.v
pop.v.v self.sinerfactor

:[end]