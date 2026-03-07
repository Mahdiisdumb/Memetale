.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pop.v.v self.x
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pop.v.v self.y
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
sub.v.v
pushi.e 5
conv.i.d
div.d.v
pop.v.v self.image_xscale
pushi.e 0
pop.v.i self.instant

:[end]