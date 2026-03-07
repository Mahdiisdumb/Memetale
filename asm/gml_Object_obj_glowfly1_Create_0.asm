.localvar 0 arguments

:[0]
push.d 0.5
pop.v.d self.image_speed
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.direction
pushi.e 1
pop.v.i self.speed
push.d 0.05
pop.v.d self.friction
pushi.e 20
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.talkcounter

:[end]