.localvar 0 arguments

:[0]
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.siner
pushi.e 2
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 3
pop.v.i self.life
pushi.e 0
pop.v.i self.image_speed
push.d 0.5
pop.v.d self.vspeed

:[end]