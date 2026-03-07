.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.dmg
pushi.e 1
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pop.v.v self.rr
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 7
add.i.v
pop.v.v self.y
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 20
add.i.v
pop.v.v self.x
pushi.e -7
pop.v.i self.hspeed
push.d 0.13
pop.v.d self.gravity
pushi.e 0
pop.v.i self.gravity_direction

:[2]
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [end]

:[3]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 20
sub.i.v
pop.v.v self.x
pushi.e 7
pop.v.i self.hspeed
push.d 0.13
pop.v.d self.gravity
pushi.e 180
pop.v.i self.gravity_direction

:[end]