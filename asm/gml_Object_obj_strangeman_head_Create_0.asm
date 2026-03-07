.localvar 0 arguments

:[0]
push.d 0.5
pop.v.d self.image_speed
push.v 744.y
push.v 744.x
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.direction
push.v self.direction
pushi.e 50
conv.i.v
call.i random(argc=1)
pushi.e 50
conv.i.v
call.i random(argc=1)
sub.v.v
add.v.v
pop.v.v self.direction
push.v self.direction
pushi.e 165
cmp.i.v LT
bf [2]

:[1]
push.v self.direction
pushi.e 170
push.v self.direction
sub.v.i
add.v.v
pop.v.v self.direction

:[2]
push.v self.direction
pushi.e 270
cmp.i.v GT
bf [4]

:[3]
push.v self.direction
push.v self.direction
pushi.e 270
sub.i.v
sub.v.v
pop.v.v self.direction

:[4]
pushi.e 2
push.d 0.5
conv.d.v
call.i random(argc=1)
add.v.i
pop.v.v self.speed
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.siner
pushi.e 1
pushi.e 1
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.sf
pushi.e 1
pushi.e 1
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.sf2
pushi.e 3
pushi.e 1
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.s
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.siner2
push.d 0.5
push.d 1.5
conv.d.v
call.i random(argc=1)
add.v.d
pop.v.v self.siner2v
push.v self.hspeed
pop.v.v self.hmem
pushi.e 0
pop.v.i self.counter
pushi.e 9
pop.v.i self.dmg

:[end]