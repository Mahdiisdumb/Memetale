.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.dmg
pushi.e 0
pop.v.i self.bullettype
push.d 0.5
pop.v.d self.image_speed
push.d 0.12
pop.v.d self.gravity
pushi.e 270
pop.v.i self.gravity_direction
push.d 0.7
pop.v.d self.vspeed
pushi.e 1
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pop.v.v self.r
pushi.e 10
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 1
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 4
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 8
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.sterile
push.v self.y
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 20
sub.i.v
cmp.v.v GT
bf [2]

:[1]
push.v self.y
pushi.e 20
sub.i.v
pop.v.v self.y

:[2]
push.v self.y
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 20
add.i.v
cmp.v.v LT
bf [4]

:[3]
push.v self.y
pushi.e 20
add.i.v
pop.v.v self.y

:[4]
pushi.e 0
pop.v.i self.h

:[end]