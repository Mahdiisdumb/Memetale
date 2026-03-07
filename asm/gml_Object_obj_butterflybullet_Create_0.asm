.localvar 0 arguments

:[0]
push.d 0.2
pop.v.d self.image_speed
push.v self.x
pop.v.v self.initx
push.v self.y
pop.v.v self.inity
pushi.e 0
pop.v.i self.siner
pushi.e 64
pop.v.i self.sinerfactor
push.v self.initx
push.v self.siner
call.i degtorad(argc=1)
call.i sin(argc=1)
push.v self.sinerfactor
mul.v.v
add.v.v
pop.v.v self.x
push.v self.inity
push.v self.siner
call.i degtorad(argc=1)
call.i cos(argc=1)
push.v self.sinerfactor
mul.v.v
add.v.v
pop.v.v self.y
push.v self.siner
pushi.e 90
add.i.v
pop.v.v self.image_angle
pushi.e 0
pop.v.i self.siner2
pushi.e 0
pop.v.i self.dmg
pushi.e 0
pop.v.i self.green
pushi.e 1
pop.v.i self.s2factor
pushi.e 4
pop.v.i self.sineradd

:[end]