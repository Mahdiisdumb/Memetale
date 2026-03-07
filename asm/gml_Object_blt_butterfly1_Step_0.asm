.localvar 0 arguments

:[0]
push.v self.angle
pop.v.v self.image_angle
push.v self.angle
pop.v.v self.direction
push.v self.angle
pushi.e 3
add.i.v
pop.v.v self.angle
pushglb.v global.turntimer
pushi.e 4
cmp.i.v LTE
bf [end]

:[1]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [3]

:[2]
pushi.e 3
pop.v.i global.mnfight

:[3]
call.i instance_destroy(argc=0)
popz.v

:[end]