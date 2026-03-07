.localvar 0 arguments

:[0]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e -4
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.counter
pushi.e 35
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
neg.v
pop.v.v self.counter
pushbltn.v self.room_height
push.v self.sprite_height
push.d 0.9
mul.d.v
sub.v.v
pop.v.v self.y
pushi.e 0
pop.v.i self.type

:[end]