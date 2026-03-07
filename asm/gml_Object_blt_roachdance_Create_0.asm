.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.dmg
pushi.e 0
pop.v.i self.image_speed
push.d 0.16
pop.v.d self.image_speed
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
pushi.e 24
sub.i.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.x
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 32
sub.i.v
pop.v.v self.y
pushi.e 120
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]