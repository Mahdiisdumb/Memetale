.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.hspeed
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
push.v self.idealspot
pushi.e 20
mul.i.v
add.v.v
pushi.e 10
add.i.v
pop.v.v self.x

:[end]