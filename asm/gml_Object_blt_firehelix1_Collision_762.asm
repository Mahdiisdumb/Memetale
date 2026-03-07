.localvar 0 arguments

:[0]
push.v self.yprevious
pop.v.v self.y
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.gravity_direction
push.v self.r
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 180
pop.v.i self.gravity_direction

:[end]