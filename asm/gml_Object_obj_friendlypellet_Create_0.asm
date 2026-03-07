.localvar 0 arguments

:[0]
push.d 0.5
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.attackratio
pushi.e 611
conv.i.v
call.i instance_number(argc=1)
pushi.e 30
mul.i.v
pop.v.v self.direction
pushi.e 4
pop.v.i self.speed
pushi.e 35
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.attackyou
pushi.e 0
pop.v.i self.blonicx
pushi.e 0
pop.v.i self.blonicy

:[end]