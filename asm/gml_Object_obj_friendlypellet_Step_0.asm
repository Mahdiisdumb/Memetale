.localvar 0 arguments

:[0]
push.v self.attackyou
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.attackratio
pushi.e 1
add.i.v
pop.v.v self.attackratio
push.d 0.1
push.v self.attackratio
mul.v.d
push.v self.attackratio
mul.v.v
push.v self.attackratio
mul.v.v
push.d 0.5
conv.d.v
call.i random(argc=1)
add.v.v
push.v 749.y
push.v 749.x
call.i move_towards_point(argc=3)
popz.v
push.v self.direction
pushi.e 4
conv.i.v
call.i random(argc=1)
pushi.e 2
conv.i.v
call.i random(argc=1)
sub.v.v
add.v.v
pop.v.v self.direction
pushi.e -500
pop.v.i self.depth
pushi.e 2
pop.v.i self.attackyou
push.d -0.04
push.v self.attackratio
mul.v.d
pop.v.v self.friction

:[2]
push.v self.attackyou
pushi.e 3
cmp.i.v EQ
bf [end]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[end]