.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.type
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.go
pushi.e -4
pop.v.i self.hspeed
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 50
sub.i.v
pop.v.v self.arb
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
push.v self.sprite_height
sub.v.v
pushi.e 10
add.i.v
pop.v.v self.arb2

:[end]