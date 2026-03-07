.localvar 0 arguments

:[0]
push.v self.siner
push.v self.sineradd
add.v.v
pop.v.v self.siner
push.v self.siner2
push.v self.s2factor
add.v.v
pop.v.v self.siner2
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
pop.v.v self.image_angle
push.v self.sinerfactor
push.v self.siner2
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 1.2
mul.d.v
sub.v.v
pop.v.v self.sinerfactor
push.v self.x
push.v self.siner2
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 14
mul.i.v
add.v.v
pop.v.v self.x
push.v self.y
push.v self.siner2
pushi.e 12
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 14
mul.i.v
add.v.v
pop.v.v self.y

:[end]