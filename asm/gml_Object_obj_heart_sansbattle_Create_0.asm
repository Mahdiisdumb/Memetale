.localvar 0 arguments

:[0]
pushi.e 2
pop.v.i self.movement
pushi.e 0
pop.v.i self.mv20x
pushi.e 1
pop.v.i self.mv20y
pushi.e 1
pop.v.i self.jumpstage
pushi.e 0
pop.v.i self.image_speed
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 16
sub.i.v
pop.v.v self.y
pushi.e 0
pop.v.i self.ignore_border

:[end]