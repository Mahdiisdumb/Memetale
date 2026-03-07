.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.dmg
push.d 0.5
pop.v.d self.image_speed
pushi.e 1
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pop.v.v self.grchoice
push.v self.grchoice
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 90
pop.v.i self.gravity_direction

:[2]
push.v self.grchoice
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 270
pop.v.i self.graivty_direction

:[4]
push.d 0.2
push.d 0.1
conv.d.v
call.i random(argc=1)
add.v.d
pop.v.v self.gravity
push.d 0.15
pop.v.d self.friction
push.v self.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 10
add.i.v
cmp.v.v LT
bf [6]

:[5]
pushi.e 1
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.hspeed

:[6]
push.v self.x
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 10
sub.i.v
cmp.v.v GT
bf [end]

:[7]
pushi.e -1
pushi.e 2
conv.i.v
call.i random(argc=1)
sub.v.i
pop.v.v self.hspeed

:[end]