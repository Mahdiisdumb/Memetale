.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.angle
pushi.e 0
pop.v.i self.angleadd
pushi.e 0
pop.v.i self.dmg
pushi.e 0
pop.v.i self.image_speed
pushi.e 180
conv.i.v
call.i random(argc=1)
pop.v.v self.direction
push.v self.direction
pushi.e 10
cmp.i.v LT
bf [2]

:[1]
push.v self.direction
pushi.e 20
add.i.v
pop.v.v self.direction

:[2]
push.v self.direction
pushi.e 90
sub.i.v
call.i abs(argc=1)
pushi.e 10
cmp.i.v LT
bf [4]

:[3]
push.v self.direction
pushi.e 30
add.i.v
pop.v.v self.direction

:[4]
push.v self.direction
pushi.e 180
sub.i.v
call.i abs(argc=1)
pushi.e 10
cmp.i.v LT
bf [6]

:[5]
push.v self.direction
pushi.e 20
sub.i.v
pop.v.v self.direction

:[6]
pushi.e 4
pop.v.i self.speed
push.v self.hspeed
call.i abs(argc=1)
push.d 0.2
cmp.d.v LT
bf [8]

:[7]
push.v self.hspeed
pushi.e 3
mul.i.v
pop.v.v self.hspeed

:[8]
push.v self.vspeed
call.i abs(argc=1)
push.d 0.2
cmp.d.v LT
bf [10]

:[9]
push.v self.vspeed
pushi.e 3
mul.i.v
pop.v.v self.vspeed

:[10]
push.d -0.04
pop.v.d self.friction
pushi.e 0
pop.v.i self.blue
pushi.e 4
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.offset

:[end]