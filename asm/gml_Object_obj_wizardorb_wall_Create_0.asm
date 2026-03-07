.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 5
add.i.v
pop.v.v self.w_l
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 30
sub.i.v
pop.v.v self.w_r
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 5
add.i.v
pop.v.v self.w_u
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 30
sub.i.v
pop.v.v self.w_d
pushi.e 0
pop.v.i self.cl
push.v self.w_l
pop.v.v self.x
push.v self.w_u
pop.v.v self.y
pushi.e 10
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 8
pop.v.i self.dmg
pushi.e 0
pop.v.i self.alt

:[end]