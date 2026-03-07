.localvar 0 arguments

:[0]
pushi.e 20
pop.v.i self.r
push.d 0.5
pop.v.d self.rspeed
pushi.e 0
pop.v.i self.ang
pushi.e 0
pop.v.i self.angspeed
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
sub.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.centerx
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
sub.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.centery

:[end]