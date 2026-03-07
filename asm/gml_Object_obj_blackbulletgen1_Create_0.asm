.localvar 0 arguments

:[0]
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pop.v.v self.x
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 40
sub.i.v
pop.v.v self.y
pushi.e 4
pop.v.i self.hspeed

:[end]