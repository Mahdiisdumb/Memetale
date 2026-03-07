.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.visible
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.type
pushi.e 0
pop.v.i self.image_alpha
pushi.e 0
pop.v.i self.timer
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.siner
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.direction
pushi.e 3
pushi.e 1
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.speed
push.d 0.1
pop.v.d self.friction

:[end]